---
layout: post
title: "KDP image size problem"
date: "2023-08-21 09:21:04 +0100"
---


Fixing a kindle problem. 

This is here for anyone who googles this problem. 

I'm writing an ebook in LaTeX. I use tex4ebook to create an epub file. But when I upload it to kdp the images are _tiny_. 

![A screenshot of a kdp previewer with very small images](/assets/images/smallimages.png)


It turns out that there is a bug/incompatibility with my versions of either pdflatex or tex4ebook, but the solution was to run: 

    ebb -x *.png


Which gave me this: 

![A screenshot of a kdp previewer with a full size image of a happy baboon](/assets/images/bigimages.png)




