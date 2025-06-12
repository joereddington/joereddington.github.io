---
layout: post
title: "My Bike Speedometer is eight times more accurate than yours"
date: "Sun Mar 09 14:15:11 +0000 2025"
---

A consumer bike speed detector knows when a wheel has made a complete rotation and it will use Bluetooth to send that information. It only uses whole numbers for the rotations and so you need 60 seconds data in order to get an accurate cadence reading.  If you stop (or start) suddenly, the controller for the sensors can be _sure_ you have stopped about three seconds later.² My notes (and complaints) on working with a consumer sensor are [here](https://joereddington.com/2024/06/10/bike.html). 

I built my own speedometer that detects every time the wheel moves one eighth of a rotation. It can tell you an accurate cadence reading in 7.5 seconds rather than 60 and the controller knows a complete stop (or start) has happened within 0.1 seconds.³ This is fun, but also vital for my actual use case, which is using bike-speed as an input to computer gaming. 

(this is for a stationary exercise bike by the way, I'd build something different for general riding) 

Here is the rig: 

![](/assets/images/sensorblack1.png)

It's an IR sensor hooked up to an Arduino Uno.  It works because the bike wheel itself is divided into eight zones that are detectable by colour. You can see the setup in this photo of an early version:

![In Place](/assets/images/arduino4.png)

It sends data (currently cadence, speed, and distance, even if two of these are arbitrary on a spin bike) to this display that we have on the desk:  

![Display unit](/assets/images/sensorblack2.png)


I had to learn (and re-learn) an awful lot for this project. Before I started I didn't know anything about 3D printing (the sensor cover and the display cover are both 3D printed designs), soldering (all the wires on the display), or even what crimping was (it's getting wires the right size and using odd tools to lock them into holders). I didn't know anything about an Arduino other than I could make it blink an LED at me and all my electronics was roughly remembered teenage taking-things-apart.  I did at least know the maths and the C++ one needs to program an Arduino, but everything else has been a serious upskilling.  



# History 
I considered two designs:

* Lots of magnets around the rim and a hall effect sensor that pings every time a magnet passes.⁰ 
* Measuring the voltage of a dynamo attached to the wheel. 

However, [some guy online](https://electronics.stackexchange.com/a/740571/308352) suggested I use an optical sensor because my flywheel has eight coloured segments. 

I did a proof of concept test with a photoresistor. It worked well enough that I was willing to buy an some of [these IR sensors](https://www.amazon.co.uk/dp/B07L3NRTF7?ref=ppx_yo2ov_dt_b_fed_asin_title), because I understood they would be a bit more accurate and effective.   

![First attempt with breadboard](/assets/images/arduino1.png)

I made a simple stand out of scrap wood in the garage¹ and built this: 

![I made a stand](/assets/images/arduino3.png)

...and tested it on [my bike setup](https://joereddington.com/2023/02/28/bike.html) 

![In Place](/assets/images/arduino4.png)

My test pilot got it up to 7.5 rotations per second so was functioning. It registers the speed accurately at very low speeds, which a consumer system doesn't do and detects acceleration and deceleration much earlier. 


## Version 2 
I took it apart and spray painted the stand. 

![speedospraypaint](/assets/images/speedospraypaint.png) 

I refitted the IR sensor, screwed it on properly rather than using an elastic band, and 3D printed a simple cover for it.  I bought myself a [crimping kit](https://www.amazon.co.uk/dp/B07S1SDKSC?ref=ppx_yo2ov_dt_b_fed_asin_title) and tidied up all the wires. 
 
The previous version required the laptop there all the time. That was fine for me but my partner is training for a triathlon. I 3D printed [a housing for an LCD display](https://www.thingiverse.com/thing:614241) and worked out how to display things with it.  

![Display](/assets/images/speedodisplay1.png)

I obviously needed a much longer cable. Nova and I found an old Ethernet cable (which had four wires internal wires, which is what we needed) and I used that. I'm finally getting some use out of my soldering iron... 

![soldering](/assets/images/soldaring.png)

I'm really impressed with how professional it ended up looking: 

![speedobikeresult](/assets/images/speedobikeresult.png)

<!--
## The original speedometer
The spin bike came with a very basic speedometer attached, and I took a look at it to check I was benchmarking correctly. I found that when I sent pulses to the sensor with the Arduino I could manipulate the speedometer fairly easily. For every pulse in a second, the speedometer would register 10.5 on the speed measurement. I went on to use the speed calculation information when I wanted to display kilometers per hour and total kilometers.  

![kk](/assets/images/speedooriginalmonitor.png)

--> 

# Next version 

The next version needs some serious rewriting of the code. Not only does it need to be properly under version control under Github but it needs all manner of tests and diagnostics.  This includes: 
    * Making a histogram of light levels - I don't believe we are getting false readings at the moment but it would be nice to have just in case it's relevant 
    * Experiment with how often to update the display and how often to read the sensor: that will give me information I need about if it is worth adding a second sensor to improve accuracy.   
    * Gentle improvements to the display - right now the numbers aren't even left padded and it would be good to cycle though various metrics.  

# Version after that. 

Adding a simple speaker that makes a noise if you aren't peddling fast enough (I am regretting only having four wires in the Ethernet cable, because I could have mounted it in the display) 



⁰ I've actually got a set of suitable magnets so I might do a test another day.

¹ I am ridiculously proud of this and  I also know it looks very much of a bodge.  

³ This is the result for the first design, I'm reasonably sure I can get it down to 0.03 seconds with some changes to the code, but it needs some testing.
