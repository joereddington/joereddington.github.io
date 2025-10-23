---
layout: post
title: "My Bike Speedometer is 60 times more accurate than yours"
date: "Sun Mar 09 14:15:11 +0000 2025"
---

There are four linked posts in this set: 

* [The actual setup of the bike and gaming equipment](https://joereddington.com/2023/02/28/bike.html)
* [Problems with Cadence Sensors](https://joereddington.com/2024/07/31/examining-bluetooth-cadence-sensor.html)
* Making a much more effective speed/cadence sensor(this post)
* [Using the sensor as an input for video games](https://joereddington.com/2024/06/10/bike.html)


A consumer bike speed detector knows when a wheel has made a complete rotation and it will use Bluetooth to send that information. If you stop (or start) suddenly, the controller for the sensors can be _sure_ you have stopped about three seconds later.² My notes (and complaints) on working with a consumer sensor are [here](https://joereddington.com/2024/06/10/bike.html). 

I built my own speedometer that detects every time the wheel moves 1/60th of a rotation. It can tell you an accurate cadence reading with just 0.30 seconds worth of data and the controller knows a complete stop (or start) has happened within 0.1 seconds.³ 

(this is for a stationary spin bike, I'd build something different for general riding) 

Here is the rig: 

![](/assets/images/sensorblack1.png)

It's an IR sensor hooked up to an Arduino Leonardo (actually the picture is an Uno, I've since replaced it).  It works because I've put an alternating pattern of black and white segments onto the wheel. At the moment there are 60 segments. You can see the setup here:

![A bike wheel as described](/assets/images/version3overview.png)

It sends data (currently cadence, speed, and distance, even if two of these are arbitrary on a spin bike) to this display that we have on the desk:  

![Display unit](/assets/images/sensorblack2.png)

I had to learn (and re-learn) an awful lot for this project. Before I started I didn't know anything about 3D printing (the sensor cover and the display cover are both 3D printed designs), soldering (all the wires on the display), or even what crimping was (it's getting wires the right size and using odd tools to lock them into holders). I didn't know anything about an Arduino other than I could make it blink an LED at me and all my electronics was roughly remembered teenage taking-things-apart.  I did at least know the maths and the C++ one needs to program an Arduino, but everything else has been a serious upskilling.  

## Parts list

| Item                                                                                                     | Price    | Quantity Bought | Quantity Needed |
|----------------------------------------------------------------------------------------------------------|----------|------------------|------------------|
| [Arduino Leonardo](https://www.amazon.co.uk/dp/B0827DHT3B?ref_=ppx_hzsearch_conn_dt_b_fed_asin_title_1) | £11.99   | 1                | 1                |
| [I2C IIC LCD 1602 Module](https://www.amazon.co.uk/dp/B0B76Z83Y4?ref_=ppx_hzsearch_conn_dt_b_fed_asin_title_5&th=1) | £10.95   | 2                | 1                |
| [TCRT5000 IR Reflective Sensor](https://www.amazon.co.uk/dp/B07L3NRTF7?ref_=ppx_hzsearch_conn_dt_b_fed_asin_title_1) | £8.99    | 10               | 1                |
| Magnetic segment pattern printing                                                                       | £20.00   | 1                | 1                |
| **Total**                                                                                                | **£51.93** |                  |                  |



## Equipment
* Wood, glue, and saw to make the housing 
* Wires
* Either crimping kit or soldering iron 


# History 
I considered two designs:

* Lots of magnets around the rim and a hall effect sensor that pings every time a magnet passes.⁰ 
* Measuring the voltage of a dynamo attached to the wheel. 

However, [some guy online](https://electronics.stackexchange.com/a/740571/308352) suggested I use an optical sensor because my flywheel has eight coloured segments. 

I did a proof of concept test with a photoresistor. It worked well enough that I was willing to buy some of [these IR sensors](https://www.amazon.co.uk/dp/B07L3NRTF7?ref=ppx_yo2ov_dt_b_fed_asin_title), because I understood they would be a bit more accurate and effective.   

![First attempt with breadboard](/assets/images/arduino1.png)

I made a simple stand out of scrap wood in the garage¹ and built this: 

![I made a stand](/assets/images/arduino3.png)

...and tested it on [my bike setup](https://joereddington.com/2023/02/28/bike.html) 

![In Place](/assets/images/arduino4.png)

My test pilot got it up to 7.5 rotations per second so was functioning. It registers the speed accurately at low speeds, which a consumer system doesn't do and detects acceleration and deceleration much earlier. 


## Version 2 
I took it apart and spray painted the stand. 

![speedospraypaint](/assets/images/speedospraypaint.png) 

I refitted the IR sensor, screwed it on properly rather than using an elastic band, and 3D printed a simple cover for it.  I bought myself a [crimping kit](https://www.amazon.co.uk/dp/B07S1SDKSC?ref=ppx_yo2ov_dt_b_fed_asin_title) and tidied up all the wires. 
 
The previous version required the laptop there all the time. That was fine for me but my partner is training for a triathlon. I 3D printed [a housing for an LCD display](https://www.thingiverse.com/thing:614241) and worked out how to display things with it.  

![Display](/assets/images/speedodisplay1.png)

I obviously needed a much longer cable. Nova and I found an old Ethernet cable (which had four internal wires, which is what we needed) and I used that. I'm finally getting some use out of my soldering iron... 

![soldering](/assets/images/soldaring.png)

I'm really impressed with how professional it ended up looking: 

![speedobikeresult](/assets/images/speedobikeresult.png)

<!--
## The original speedometer
The spin bike came with a very basic speedometer attached, and I took a look at it to check I was benchmarking correctly. I found that when I sent pulses to the sensor with the Arduino I could manipulate the speedometer fairly easily. For every pulse in a second, the speedometer would register 10.5 on the speed measurement. I went on to use the speed calculation information when I wanted to display kilometres per hour and total kilometres.  

![kk](/assets/images/speedooriginalmonitor.png)

--> 

# Version 3 
* I wrote a diagnostic program for the sensor that gave me information on things like 'If I clock this as high as possible, how many times does the sensor read the same segment when I pedal as fast as I can" (16 - which means that I could certainly have a lot more segments), and "how should I change the threshold on the sensor to make sure there aren't false readings". (don't bother). 
* I also fine-tuned things like the gear ratio. 
* Most importantly I switched the Arduino Uno for a Leonardo. The Leonardo can emulate a keyboard and so it was suddenly super easy to use this as a game controller.  But all of that belongs on a different post. 
* I put the code under version control. 

# Version 4
* I added a buzzer for when cadence got too low so I can now use that to keep my cadence up on PS4 games. However it's currently far too quiet so that will improve in the next big retool. 
* General improvements to the code: mostly improving performance by letting the code follow the maths. 

# Next version 
* Gentle improvements to the display - right now the numbers aren't even left padded and it would be good to cycle though various metrics.  
* Improvements to the volume of the alarm. 
* A custom housing that mounts to the bike itself (this is delayed by 3d printer problems)  

...but the return on investment is relatively low compared to working more on the gaming setup. 

# Version after that. 

* Increasing the number of segments on the flywheel - I currently get about 2.5 readings in a segment when pedalling quickly and that means there is some wriggle room. 


⁰ I've actually got a set of suitable magnets so I might do a test another day.
¹ I am ridiculously proud of this and  I also know it looks very much of a bodge.  

³ This is the result for the first design, I'm reasonably sure I can get it down to 0.03 seconds with some changes to the code, but it needs some testing.


