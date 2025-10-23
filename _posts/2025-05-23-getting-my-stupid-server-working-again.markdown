---
layout: post
title: "Getting my stupid server working again."
date: "Fri May 23 09:26:10 +0100 2025"
---

This is a stream-of-consciousness set of notes for next time I have to do this job. Completely lacking interest to anyone unless you are googling the exact same errors I had...  

The website and IMPS writing platform for White Water Writers (https://www.whitewaterwriters.com/) is hosted on an EC2 instance.

To save money over the winter I paused the instance and switched the website over to GitHub Pages. I now need to get it up and running again for a camp next week.  

I rebooted the EC2 instance and  edited the A record in Route 53 to point to the correct IP address (13.40.0.39) and removed the CNAME record that github wanted.  I can now ssh into the server with `ssh www' rather than the more complex 



```
ssh -i ~/.ssh/Webserver1-keypair.pem ec2-user@13.40.0.39
```

The nginx server is running: 

```
[ec2-user@ip-172-31-26-130 ~]$ sudo systemctl status nginx
● nginx.service - The nginx HTTP and reverse proxy server
   Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; vendor preset: disabled)
  Drop-In: /usr/lib/systemd/system/nginx.service.d
           └─php-fpm.conf
   Active: active (running) since Fri 2025-05-23 08:22:38 UTC; 43min ago
 Main PID: 5717 (nginx)
   CGroup: /system.slice/nginx.service
           ├─5717 nginx: master process /usr/sbin/nginx
           └─5718 nginx: worker process

May 23 08:22:38 ip-172-31-26-130.eu-west-2.compute.internal systemd[1]: Starting The nginx HTTP and reverse proxy server...
May 23 08:22:38 ip-172-31-26-130.eu-west-2.compute.internal nginx[5711]: nginx: the configuration file /etc/nginx/ngin...ok
May 23 08:22:38 ip-172-31-26-130.eu-west-2.compute.internal nginx[5711]: nginx: configuration file /etc/nginx/nginx.co...ul
May 23 08:22:38 ip-172-31-26-130.eu-west-2.compute.internal systemd[1]: Started The nginx HTTP and reverse proxy server.
Hint: Some lines were ellipsized, use -l to show in full.
[ec2-user@ip-172-31-26-130 ~]$ 
```

...but it is not showing me a website at https://whitewaterwriters.com

I have done some checking: 

```
joe@JoeTower:~$ curl -I http://13.40.0.39
HTTP/1.1 301 Moved Permanently
Server: nginx/1.22.0
Date: Fri, 23 May 2025 09:07:22 GMT
Content-Type: text/html
Content-Length: 169
Connection: keep-alive
Location: https://whitewaterwriters.com/

joe@JoeTower:~$ dig +short whitewaterwriters.com
13.40.0.39
joe@JoeTower:~$ openssl s_client -connect whitewaterwriters.com:443
CONNECTED(00000003)
depth=2 C = US, O = Internet Security Research Group, CN = ISRG Root X1
verify return:1
depth=1 C = US, O = Let's Encrypt, CN = R11
verify return:1
depth=0 CN = whitewaterwriters.com
verify return:1
<truncated>


```
and on the server: 


```
[ec2-user@ip-172-31-26-130 ~]$ sudo grep -r 'white' /etc/nginx/
/etc/nginx/nginx.conf:  return 301 https://whitewaterwriters.com$request_uri;
/etc/nginx/nginx.conf:        server_name  www.whitewaterwriters.com;
/etc/nginx/nginx.conf:  ssl_certificate /etc/letsencrypt/live/www.whitewaterwriters.com/fullchain.pem;
/etc/nginx/nginx.conf:  ssl_certificate_key /etc/letsencrypt/live/www.whitewaterwriters.com/privkey.pem;
/etc/nginx/nginx.conf:  return 301 https://whitewaterwriters.com$request_uri;
/etc/nginx/nginx.conf:  server_name whitewaterwriters.com;
/etc/nginx/nginx.conf:  ssl_certificate /etc/letsencrypt/live/whitewaterwriters.com/fullchain.pem;
/etc/nginx/nginx.conf:  ssl_certificate_key /etc/letsencrypt/live/whitewaterwriters.com/privkey.pem;
/etc/nginx/nginx.conf:        root /usr/share/nginx/html/whitewaterwriters-site/_site/;
```

Okay, it turned out that the answer was: 

"You need to create a cname from www.whitewaterwriters.com to whitewaterwriters.com" 

...which is fine. 

Okay, the site is up and running. Great.  However, Etherpad seems really slow.  I investigate and python is using a lot of resources: 

```
ps -eo pid,comm,user,%cpu,%mem,cmd --sort=-%cpu | grep python
[ec2-user@ip-172-31-26-130 ~]$ ps -eo pid,comm,user,%cpu,%mem,cmd --sort=-%cpu | grep python
11893 python3         root     17.9  2.0 python3 update_books.py
13686 python3         root     16.2  2.0 python3 update_books.py
15381 python3         root     14.8  2.0 python3 update_books.py
17108 python3         root     13.9  2.3 python3 update_books.py
18833 python3         root     13.2  1.7 python3 update_books.py
20568 python3         root     12.2  1.7 python3 update_books.py
22389 python3         root     11.4  1.7 python3 update_books.py
25734 python3         root     10.9  1.6 python3 update_books.py
24107 python3         root     10.8  1.6 python3 update_books.py
 2883 gunicorn        ec2-user  0.0  1.1 /usr/share/nginx/html/supertitle/venv/bin/python3 /usr/share/nginx/html/supertitle/venv/bin/gunicorn -b localhost:8000 main:app
 3119 gunicorn        ec2-user  0.0  1.4 /usr/share/nginx/html/supertitle/venv/bin/python3 /usr/share/nginx/html/supertitle/venv/bin/gunicorn -b localhost:8000 main:app
26133 grep            ec2-user  0.0  0.0 grep --color=auto python
[ec2-user@ip-172-31-26-130 ~]$ 
```

In particuar, the updating of books is a problem. 

I kill those processes and update manually.  Update_books.py does indeed take a long time. Currently (I've never needed to optimise for time before) whenever it updates a book it loads a database containing _every single previous book_ into memory, updates a book, and then saves it again.  It does that process for every book in the 'current books' list and it runs through the current books list every five minutes. 

I fixed the more obvious problems with that and commited the code (on production, which I'm a little worried about) 



  After I put in some print statements (I should have profiled properly but now isn't the time) I discover that there is a big delay opening the 'books.json' database.  Part of the problem appeared to be the 6.0M books.json file (I feel like that is too small to cause a problem but I should probably check the code. 







