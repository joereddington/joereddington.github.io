---
layout: post
title: "Greenscreen"
--- 


I love this picture: 

<IMG SRC="/assets/images/chroma1.jpeg">

I didn't set it up for any large purpose, I literally saw the idea and wanted to see if I could build it. I did learn a few things in the process though. And a very much enjoy playing with it during Zoom meetings. 

It required a few steps to set up: 

### Step 1: Sort out a small greenscreen 
This is literally some green card and a cheap frame from amazon 

<IMG SRC="/assets/images/chroma2.png">


### Step 2: have OBS recognise it as a greenscreen. 
This was quite a learning experience. I added a chroma key filter in OBS and then _faffed_ until I could get it to work. I did some Googling while writing this post and it turns out that this is what everybody does - there is effectively no documentation. I have to adjust these numbers if the light level changes.  

<IMG SRC="/assets/images/chroma3.png">


### Step 3: sort out the new image
I took a quick picture of myself on the webcam and then transformed it so that it fit the shape of the frame (the frame isn't at exactly 90 degrees to the webcam, so it looks odd without the transformation). I used Darktable to do this and then inserted it as a lower layer in OBS. 


# Step 4: setting up the virtual camera
That achieved the steps I wanted for making videos or streaming, but I wanted it to work for video-calling as well. I used [this virtual camera output](https://github.com/johnboiles/obs-mac-virtualcam) that means that I can use the output of OBS as webcam on (most of) the other programs on my mac.  





