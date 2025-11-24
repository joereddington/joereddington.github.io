---
layout: post
title: "Examining Bluetooth Cadence Sensor"
date: "Mon Jul 31 07:01:42 +0000 2024"
tags: 
 - bike
---


tl;dr

* Commercial Bluetooth cadence monitors need at least 60 seconds of data to be accurate, making it really hard for cyclists to get feedback on what their cadence is at any given moment. 
* Commercial Bluetooth cadence monitors send data irregularly enough that it takes several seconds to identify even dramatic changes in cadence from, say, 30 to 90  


As part of [my gaming setup](https://joereddington.com/2024/06/10/bike.html) I've been investigating how cadence sensors work.  

I have [this](https://www.amazon.co.uk/gp/product/B00L9XNFPY/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) cadence sensor. 

I'm interested in these things.

* How it works generally 
* What its performance limitations are
* How I might get it to work for my use case.  

My use case is: "Using peddling as an input on video games".  For that I need quick reaction times. If I am playing a driving game and I have a simple setup to "Accelerate if I am peddling at X speed and brake if I stop peddling" then I need an almost instant response in order to keep playability. 


The sensor I'm examining sends one data pulse every 0.76 seconds or so (and quite a lot get lost, so the average time between _received_ packets about 0.9 seconds). 

The data itself is in the 'Cycling Speed and Cadence (CSC) Profile' format. An example of the raw data I get (in hex) is: "022d00c1b7" and the first byte ("02") is a flags field. 

The flags field is 1 byte (8 bits) long, and each bit represents a different piece of data.
    

| Flag Bit | Value | Description                                  |
|----------|-------|----------------------------------------------|
| 0        | 0x01  | Cumulative Wheel Revolutions Present         |
| 1        | 0x02  | Cumulative Crank Revolutions Present         |
| 2        | 0x04  | Sensor Contact Status Supported              |
| 3        | 0x08  | Multiple Sensor Locations Supported          |
| 4        | 0x10  | Crank Length Supported                       |
| 5        | 0x20  | Bike Weight Supported                        |
| 6        | 0x40  | Power Measurement Supported                  |
| 7        | 0x80  | Energy Expenditure Supported                 |

For me, the hex value is 02, so only the 'Cumulative Crank Revolutions Present' is relevant. Presumably if I had a smart turbo trainer or power meter the other values would be present. 

So the sensor sends data (both Crank Revolutions and 'last crank event time') every 0.76 seconds (although it seems to skip one about one in four). Cadence can be worked out by looking at the change in rotations and time since the last pulse.  

Cumulative Crank Revolutions is an integer. That gives us, regardless of sampling rate, an upper limit on how accurate it can be.  If we define 'acceptable accuracy' as 'Being able to give the correct cadence rating for a series of ideal cyclists who cycle at a particular cadence' then we need at least (and admittedly at most) 60 seconds of data.  An exercise bike that gave 'current cadence' as an average over the last 60 seconds would be annoying to use for the user who was trying to hit a particular cadence because the feedback loop is really long. My understanding is that most systems use a 10 second or so window, which is why you will find, for example, that the display might go from 92 to 96 but never hit the numbers in between.  

So, because the device measures whole numbers of rotations, its performance is limited by needing 60 seconds to reach our 'acceptable accuracy'.  This is actually fine for my use case: I can't imagine I'd want to be defining any more than four or so levels of peddling for gaming.  Let us say for example I want:  

| Cadence (RPM) | Comment                              |
|---------------|---------------------------------------|
| 0             | Not pedaling — coasting or stationary |
| 30            | Very low — uphill, heavy gear, or fatigued |
| 60            | Moderate — casual or beginner pace    |
| 90            | High — efficient cadence for trained cyclists |


However, now the sampling rate is a problem. Let us assume that I am getting a regular sample every 0.76 seconds without missing any.   Here is a table showing the different cadence rates, the amount of rotations you would expect a second, and the number of total revolutions reported at each stage.  

| Cadence (RPM) | Rotations per Second | 1st | 2nd | 3rd | 4th | 5th | 6th |
|---------------|-----------------------|-----|-----|-----|-----|-----|-----|
| 30            | 0.5                   | 0   | 0   | 1   | 1   | 1   | 2   |
| 60            | 1                     | 0   | 1   | 2   | 3   | 3   | 4   |
| 90            | 1.5                   | 1   | 2   | 3   | 4   | 5   | 6   |
| 0             | n/a                   | n/a | n/a | n/a | n/a | n/a | n/a |


If the cyclist is peddling consistently then we can work out which speed they are going by the third segment (so over two seconds). Sadly, this is also how long we need to notice _changes_ in speed. That's about 2.3 seconds, which is unworkable for most video-gaming. 

The 2.3 seconds is also very much a best case scenario: 

* It assumes you change speed right on the pulse so there is no 'wasted' time (which also makes it harder to hit an average)   
* It assumes you accelerate/decelerate instantly from 30 to 90 with no accounting for where you are in the 'stroke' 
* It assumes that the sensor doesn't miss any packets, which seems to happen 25% of the time.  

These factors and my own experiments suggest that about five seconds is the amount of time needed to detect major changes of pace. 

We could get better responsiveness in terms of sample size by making the cadence levels much closer together (say, 70, 75, 80 and 85, which would also be less stress on the legs and better for actual fitness training) but then we run into the accuracy problems caused by the sensor only recording whole numbers.   


There are two other small issues with my particular unit: 

* If I stop peddling entirely (or drastically slow down) the sensor stops sending new data - it sends the old data again - so my code thinks that the time and crank revolutions haven't changed.  So if I stop peddling it takes the code a really long time to notice and update the cadence. I can detect this in the code, but it is messy 
* If I stop for a moment and then speed up, the sensor sends a big update  like 9 revolutions in 7 seconds.  

The bottom line is that these cadence sensors are good for their central use case (measuring cadence for cyclists over reasonably long periods, like several hours) but not worthwhile for my use-case (super-fast reaction times in video gaming), or even for people on a spin bike at home wondering what 90 RPM really feels like. 

# The difference between cadence and bike speed
My use-case is a stationary spin bike with a pedal-flywheel ratio of about 1:4.2 so in my case I could cheat by putting the cadence sensor on the flywheel rather than the pedals (effectively making it a speed sensor), that would mean I would be able to get accurate cadence data in 60/4.2=14.3 seconds, and also improve the detecting speed changes.  In fact the sensor table looks like this: 

| Cadence (RPM) | Rotations per Second | 1st | 2nd | 3rd |
|---------------|-----------------------|-----|-----|-----|
| 30            | 2.1                   | 1   | 3   | 4   |
| 60            | 4.2                   | 3   | 6   | 9   |
| 90            | 6.3                   | 4   | 9   | 14  |
| 0             | n/a                   | n/a | n/a | n/a |


...and it's now possible to tell that the speed as changed within _just one_ sensor interval. That vastly improves responsiveness. It's still too unwieldy for my application in practice, but if I was a cyclist interested in getting a proper sense of how each cadence felt when peddling - I'd put the bike on a turbo trainer, put it in top gear, do the maths to work out how my desired cadence translated to speed and watch the more responsive speedometer rather than the slower cadence monitor. 

Final note - if I were putting the sensor on the flywheel and detecting the speed changes that way, I would probably work backwards from what the sensor was most capable of to find the particular cadences. So I'd say "The target speeds are based on the flywheel rotating 1,3, and 5 times in the sensor interval".  This actually looks like this: 

| Rotations Since Last Reading | Equivalent Flywheel RPM | Target Cadence |
|------------------------------|--------------------------|----------------|
| 1                            | 79                       | 18.8           |
| 3                            | 237                      | 56.4           |
| 5                            | 395                      | 94.0           |



