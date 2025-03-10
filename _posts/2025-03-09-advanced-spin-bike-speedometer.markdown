---
layout: post
title: "My Bike Speedometer is eight times more accurate than yours"
date: "Sun Mar 09 14:15:11 +0000 2025"
---

A consumer bike speed detector knows when a wheel has made a complete rotation and it will use Bluetooth to send that information. If you stop (or start) suddenly, the controller for the sensors can be _sure_ you have stopped about three seconds later.² My notes on working with a consumer sensor are [here](https://joereddington.com/2024/06/10/bike.html). 

That doesn't work for my application so I built a speedometer that detects every time the wheel moves one eighth of a rotation and the controller knows a complete stop (or start) has happened within 0.3 seconds.³

(this is for a stationary exercise bike by the way, I'd build something different for general riding) 

I originally considered two designs.

* Magnets around the rim and a hall effect sensor that pings every time a magnet passes. 
* Measuring the voltage of a dynamo attached to the wheel. 

However, [some guy online](https://electronics.stackexchange.com/a/740571/308352) suggested I use an optical sensor because my flywheel has eight coloured segments. 

I did a proof of concept test with my a photoresistor and an arduino microcontroller which worked well enough to convince me to buy some of [these IR sensors](https://www.amazon.co.uk/dp/B07L3NRTF7?ref=ppx_yo2ov_dt_b_fed_asin_title). 

With the IR sensor and a stand I put together in the garage, the setup looks like this.¹

![I made a stand](/assets/images/arduino3.png)

...and it works! 

![In Place](/assets/images/arduino4.png)

My partner as test pilot got it up to 7.5 rotations per second so it's working pretty well. It registers the speed accurately at very low speeds, which a consumer system doesn't do and detects acceleration and deceleration much earlier. 

Next actions. 
* Benchmarking. I want to thoroughly test on a long ride against my consumer sensor. 
* Add some simple code to detect if a segment change is missed (i.e did I see black/red for more than twice as long as I expected to). 
* Add a second sensor - it if is correctly offset I get 64 events a rotation rather than 8. 
* Experiment with increasing the sample rate   
* Add a seven segment display for debugging. 

But first I should try it out a bit with my application and see what is actually necessary. 


⁰ I've actually got a set of suitable magnets so I might do a test another day.
¹ I am ridiculously proud of this stand. I know it looks very much of a bodge.  
² the sensor I tested saves power by not sending an update if there aren't events to tell you about. So you have to deduce you have stopped by the lack of updates that come every 0.76 seconds (and in practice, often skip random ones)
³ This is the result for the first design, I'm reasonably sure I can get it down to 0.03 seconds with some changes to the code, but it needs some testing.


