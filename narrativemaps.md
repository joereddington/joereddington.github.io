---
title: Maps of Books
date: 2016-05-26T17:48:30+01:00
author: Joe Reddington
layout: page
---

I made a lot of maps of books. I think they are super cool.  

They look like this (this is Pride and Prejudice)

![Pride and prejudice as a map](/assets/prideAndPred.png)

Each line is a chapter and they gradually join together to form the whole narrative. 
The algorithm that builds them starts by joining the most similar chapters (in this case 46 and 47) into one, and then searching for the next most similar pair. It builds up the structure until you can see the overall structure of the narrative at a glance. When you've looked at a few you start to be able to see the distinctive structure of, say, a thriller, or a romantic comedy.  

In the particular case of Pride and Prejudice, I created a special map - one where if you click on the chapter numbers you can read that chapter. You can find that [here](https://joereddington.github.io/pride/).  

The maps are based on work that Fionn Murtagh, Douglous Cowie and I [wrote a paper](http://arxiv.org/abs/1308.3745) on years ago, and I went on to do [various reports and testings for people in the publishing industry](/assets/angel.pdf).

The abstract of the paper is:

> From the earliest days of computing, there have been tools to help shape narrative. Spell-checking, word counts, and readability analysis, give today&#8217;s novelists tools that Dickens, Austen, and Shakespeare could only have dreamt of. However, such tools have focused on the word, or phrase levels. In the last decade, research focus has shifted to support for collaborative editing of documents. This work considers more sophisticated attempts to visualise the semantics, pace and rhythm within a narrative through data mining. We describe real life applications in two related domains.

The work got quite a lot of press: you can read my thoughts about the original New Scientist article [here](http://joereddington.com/2013/09/12/so-im-in-the-edition-of-new-scientist-that-came-out-today/ "So I’m in the edition of New Scientist that came out today…"), and there&#8217;s a brief roundup of other mentions [here](http://joereddington.com/2013/09/22/a-bit-more-press-on-narrative-analysis/ "A bit more press on narrative analysis….").

Finally, if you want to look at all the maps, the posts are below: 

{% for post in site.categories.Analysis %}
 <li><span>{{ post.date | date_to_string }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
