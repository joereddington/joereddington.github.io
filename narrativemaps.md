---
title: Maps of Books
date: 2016-05-26T17:48:30+01:00
author: Joe Reddington
layout: page
---

A little while ago Fionn Murtagh, Douglous Cowie and I [wrote a paper](http://arxiv.org/abs/1308.3745) covering how we&#8217;d tested some narrative analysis techniques on various domains, notably within [Project TooManyCooks](http://joereddington.com/project-toomanycooks/ "TooManyCooks"), but also by working with people in the publishing industry.

The abstract of the paper is:

> From the earliest days of computing, there have been tools to help shape narrative. Spell-checking, word counts, and readability analysis, give today&#8217;s novelists tools that Dickens, Austen, and Shakespeare could only have dreamt of. However, such tools have focused on the word, or phrase levels. In the last decade, research focus has shifted to support for collaborative editing of documents. This work considers more sophisticated attempts to visualise the semantics, pace and rhythm within a narrative through data mining. We describe real life applications in two related domains.

The work got quite a lot of press: you can read my thoughts about the original New Scientist article [here](http://joereddington.com/2013/09/12/so-im-in-the-edition-of-new-scientist-that-came-out-today/ "So I’m in the edition of New Scientist that came out today…"), and there&#8217;s a brief roundup of other mentions [here](http://joereddington.com/2013/09/22/a-bit-more-press-on-narrative-analysis/ "A bit more press on narrative analysis….").

This page gives a (wide) set of examples, showing some visualisations of both classic and modern books &#8211; for those interested in the style of report that I put together for people in the publishing industry, then [this sample might help](https://dl.dropboxusercontent.com/u/18332063/CHI/angel.pdf).



{% for post in site.categories.Analysis %}
 <li><span>{{ post.date | date_to_string }}</span> &nbsp; <a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
