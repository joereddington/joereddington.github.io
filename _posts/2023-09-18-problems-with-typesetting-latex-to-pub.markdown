---
layout: post
title: "Problems with typesetting latex to epub"
date: "2023-09-18 07:23:03 +0100"
---

I'm in the process of writing an ebook. I'm using LaTeX (which I used for years as an academic and which I wrote [Advanced Memory Palaces](https://www.amazon.co.uk/Advanced-Memory-Palaces-second-should/dp/B09GJFZ6JM)) in. LaTeX is also the language that I get the hundreds of students of [White Water Writers](https://whitewaterwriters.com/) to write in (which I then have to debug), so I like to think I'm reasonably experienced with it. 

Apparently I am not. I am using tex4ebook as the conversion tool from *.tex files to *.epub and while it is a magnificent piece of software (it's been part of the White Water Writers tech stack for years) the underlying problem (compiling tex files for ebooks) is quite hard and so there is lots to learn. 

None of these issues appeared when writing fiction books (as White Water Writers does) because they mostly involve things that you'd use in a nonfiction book (I'm totally down to read a novel that made heavy use of math mode tho). 

There follows a (updated whenever I learn something) list of things that I wasn't expecting. 


# Image scale
The scale parameter in includegraphics doesn't work as I expect: 

   \includegraphics[scale=0.3]{images/51.png} %this produces a tiny thumbnail 
   \includegraphics{images/51.png} %this produces a full width images

# Hrule

As per [this issue](https://github.com/michal-h21/tex4ebook/issues/5) the hrule command needs to be redefined to give the expected \<hr\>

  
   \def\myrule{\HCode{<hr />}}
   \let\hrule\myrule %from https://github.com/michal-h21/tex4ebook/issues/5

However, redefining the hrule breaks \tableofcontents so it's easier to use the \myrule directly (for me) 


# Math mode 
Math mode is converted to images when that isn't sensible.  The  epub and mobi formats (except for mobi3 which isn't supported by anything) don't support good maths displays so tex4ebook converts them to images. That's a problem because then they don't obey the text size settings of a kindle and can look extremely small (and pixelated). However, letters in math mode should be fine, and they are, but only sometimes.

  
  $HelloWorld$ %this will stay as text and appear as expected 
  \[ HelloWorld \]  %this will be converted to an image and look very pixilated. 

![Hello World looking very pixelated](/assets/images/helloworldpixelated.png)


# Table sizes
Table sizes don't respect the Kindle's font size: 

![Table font size problem](/assets/images/tablefontsizeproblem.png)

* [Tables don't appear at all in mupdf](https://tex.stackexchange.com/questions/700910/tabular-NOT-showing-with-tex4ebook/700911#700911) (one of epub viewers you can get on ubuntu) 

# ebook Viewers
If you use the ebook viewer mupdf then Ubuntu installs version 1.19. However that version doesn't display tables that tex4ebook generates so I built 1.23 from source. 

# Endnotes
Footnotes have to be converted to endnotes, which makes sense, but they don't appear automatically, so you have to put something like:


      \newpage
      \begingroup
      \parindent 0pt
      \parskip 2ex
      \def\enotesize{\normalsize}
      \theendnotes
      \endgroup

at the bottom of the document. 


