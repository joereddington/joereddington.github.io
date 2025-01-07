---
layout: post
title: "Factory Reset"
date: "Tue Jan 07 15:17:22 +0000 2025"
---

My Ubuntu machine isn't working properly so I'm going to reinstall the operating system.  Hopefully, because I use [Finder Zero](XXX) and keep fairly good notes it will be easy enough.  If it _is_ easy then I suspect I'll start doing it yearly. 

First, I properly backup and check things. One of the drives is actually my [long term backup](XXX) drive. I've backed that up to an external device but I'm not actually planning on touching it for this reset (it's nvme1n1 - the drive I'm doing a reinstall on is nvme0n1: although I found out after install that those designations switched).  


In November 2023 I wrote a script called 'blackbox' which gathers a bunch of config files from all over the system and copies them into a folder that gets securely backed up.   I run it every so often and it's currently up to date. 

Next I make a install device. I have a 250GB USB stick and I'll use [these commands](https://askubuntu.com/a/377561/49853) to make it happen.  


```
wget https://releases.ubuntu.com/24.04.1/ubuntu-24.04.1-desktop-amd64.iso?_ga=2.80555220.278495081.1736263692-463090378.1736150188
sudo dd if=/path/to/ubuntu.iso of=/dev/sdX bs=4M && sync
```
(I did this from inside Ubuntu) 

I changed the boot order in BIOS and started the install. 

![Choosing to Install](/assets/images/choosetoinstall0107.png)

Remembering to choose the correct drive.  
![Remembering to choose the correct drive](/assets/images/choosetherightdrive0107.png)

The actual installation took less than 20 minutes.

* No Active Directory 
* Make sure I choose the correct drive 

I created a separate USB stick that had various repos on it to make life easier. 


