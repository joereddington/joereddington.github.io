---
layout: post
title: "Problems with typesetting latex to pub"
date: "2023-09-18 07:23:03 +0100"
---

I'm currently in the process of writing an ebook. I'm using LaTeX (which I used for years as an academic and which I wrote [Advanced Memory Palaces](https://www.amazon.co.uk/Advanced-Memory-Palaces-second-should/dp/B09GJFZ6JM) in. LaTeX is also the language that I get the hundreds of students of [White Water Writers](https://whitewaterwriters.com/) to write in (which I then have to debug), so I like to think I'm reasonably experienced with it. 

Apparently I am NOT. I am using tex4ebook as the conversion tool from *.tex files to *.epub and while it is a magnificent piece of software (it's been part of the White Water Writers tech stack for years) the underlying problem is (compiling tex files for ebooks) is quite hard and so there is lots to learn. 

Some of my problems have included: 

* The scale parameter in includegraphics doesn't work as I expect. 

   \includegraphics[scale=0.3]{images/51.png} %this produces a tiny thumbnail 
   \includegraphics{images/51.png} %this produces a full width images

* As per [this issue](https://github.com/michal-h21/tex4ebook/issues/5) the hrule command needs to be redefined to work: 

  
   \def\myrule{\HCode{<hr />}}
   \let\hrule\myrule %from https://github.com/michal-h21/tex4ebook/issues/5

* Math mode is converted to images when that isn't sensible.  So epub and mobi (except for mobi3 which isn't supported by anything) don't support good maths displays so tex4ebook converts them to images. That's a problem because then they don't obey the text size settings of a kindle and can look extremely small (and pixelated). However, letters in math mode should be fine, and they are, but only sometimes.


  
  $HelloWorld$ %this will stay as text and appear as expected 
  \[ HelloWorld \]  %this will be converted to an image and look very pixilated. 

![Hello World looking very pixelated](/assets/images/helloworldpixelated.png)


None of these issues appeared when writing fiction books (as White Water Writers does) because they mostly involve things that you'd use in a nonfiction book (I'm totally down to read a novel that made heavy use of math mode tho). 


