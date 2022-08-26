---
layout:     post
title:      XKCD's Simple Writer in vim
date:       2021-01-18 09:56:04
---


Setting up SimpleWriter in Vim 


I use [xkcd's simplewriter](https://xkcd.com/simplewriter/) to make text easy to read. I also use vim to do most of my writing, which means I sometimes take hours copying and pasting between one and the other. 

I fixed this by making vim work like SimpleWriter by making a new dictionary. 

I first used [this wordlist](http://www.bckelk.ukfsn.org/words/uk1000n.html) to tell me the one thousand most common words in UK english. I pasted it into vim and used

     :%s/[0-9\.]//g 

to take out the numbers and saved it as kilodic.txt. I used

     :mkspell! .vim/kilodic.txt

to make a vim spelling dictionary from it (and saved it as .vim/spell/kilodic.utf-8.spl). I can now use: 

	:set spelllang=kilodic

and 

	:set spelllang=en

to put the right mode on and off. 

People interested in this work might also be interested in [this workthought of a vim mapping problem]({{ site.baseurl}}{% link _posts/2020-05-09-vim-notes.md  %} ), or this [basic bit of scripting]({{ site.baseurl}}{% link _posts/2018-12-27-simple-photo-import-script.md %}).




