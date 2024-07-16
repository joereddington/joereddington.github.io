---
title: Publishing. Again. 
---
![My laptop on a desk](/assets/images/booksinlibrary.png)

Today I'm working in a library publishing a book.  It's an unusual book - it's not one of the White Water Writers books or one of my own: it's a collection of the best essays I received while teaching at Royal Holloway this year. 

One of the criteria often seen in mark schemes is that the writing is 'of publishable quality'.  And if we put that sort of thing in a mark scheme, we should make it happen.  

So I asked some students to send me a LaTeX version of their essay and I'm compiling them together.  Asking for that many turned out to be a mistake in terms of Amazon's publishing system:  

![Only Nine](/assets/images/onlynine.png)

Two dropped out, but that still leaves ten. Next year I'll keep a tight control on the numbers... 

As of the afternoon I'd sent the students a draft and given them access to a git repo to make any changes they like. 

The first draft of the cover looks like this: 

![The first rought draft of the cover](/assets/images/coverstudents.png)

I've asked a designer friend for some feedback on the cover; there are certainly things I'd like to tidy up for it.  


I am, as you would expect, having to do lots of this sort of command: 

```
 perl -pi -e 's/…/\\ldots/g' *.tex
 perl -pi -e 's/£/\\pounds/g' *.tex
 perl -pi -e "s/’/'/g" *.tex
```

...and as I write this, I realise that I already have a script with many such commands for White Water Writers - I should have used that and I will do next time.j
