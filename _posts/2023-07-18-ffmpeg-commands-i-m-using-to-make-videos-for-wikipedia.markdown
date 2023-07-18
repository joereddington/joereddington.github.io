---
layout: post
title: "ffmpeg commands I'm using to make videos for Wikipedia"
date: "2023-07-18 06:47:55 +0100"
---

I'm editing  Wikipedia more.  I made three videos yesterday using OBS (which I then made super short and put on [Youtube here](https://www.youtube.com/@joeeditswikipedia4486/shorts)

I ended up asking [this SE question](https://superuser.com/q/1795448/15231), and running a bunch of commands like this: 

    ffmpeg -i output.mp4 -vf -an "setpts=0.5*PTS" output3.mp4
    ffmpeg -i output.mp4 -an -vf "setpts=0.5*PTS" output3.mp4
    ffmpeg -i output3.mp4 -to 00:00:16 -c:v copy output4.mp4
    ffmpeg -i 2023-07-11\ 14-11-54.mkv -an -vf "setpts=0.5*PTS" output3.mp4
    ffmpeg -i output3.mp4 -an -vf "setpts=0.5*PTS" output4.mp4
    ffmpeg -i output4.mp4 -an -vf "setpts=0.5*PTS" output5.mp4
    ffmpeg -i output3.mp4 -to 00:00:59 -c:v copy upload1.mp4
    ffmpeg -i output3.mp4 -sseof 00:00:59 -c:v copy upload2.mp4
    ffmpeg -i output3.mp4 -ss 00:00:59 to: 00:01:40 -c:v copy upload2.mp4
    ffmpeg -i output3.mp4 -ss 00:00:59 to: 00:00:40 -c:v copy upload2.mp4
    ffmpeg -i output2.mp4 -ss 00:00:59 -c copy upload2.mp4
    ffmpeg -i output2.mp4 -ss 00:00:59 -c copy upload2.mp4
    ffmpeg -i output3.mp4 -ss 00:00:59 -c copy upload2.mp4
    ffmpeg -i output5.mp4 -ss 00:00:59 -c copy upload2.mp4
    
But it's getting clear that I should actually learn ffmpeg because there are _so many commands_ and it can clearly do everything.  Ideally I want to be able to trim videos, speed them up, remove the audio, and split them up with a single command or script 

Of course, I'd probably get a lot more Wikipedia editing done if I wasn't distracted by seeing if I could do something I found cool with videos. 


