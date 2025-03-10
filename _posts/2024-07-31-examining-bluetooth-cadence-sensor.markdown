---
layout: post
title: "Examining Bluetooth Cadence Sensor"
date: "Mon Jul 31 07:01:42 +0000 2024"
---

As part of [my gaming setup](https://joereddington.com/2024/06/10/bike.html) I've been investigating how cadence sensors work.  

I have [this](https://www.amazon.co.uk/gp/product/B00L9XNFPY/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) cadence sensor. 

The sensor sends one data pulse every 0.76 seconds or so (and quite a lot get lost, so the average time between _received_ packets about 0.9 seconds) I get the impression that I get more regular updates the higher the cadence, but it certainly doesn't get below 0.7 seconds or so. 

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

The sensor sends data (both Crank Revolutions and 'last crank event time') every 0.76 seconds (although it seems to skip one about one in four - so an average of one a second). Cadence can be worked out by looking at the change in rotations and time since the last pulse.  

However, Cumulative Crank Revolutions is only ever a integer so for normal cadence values it will almost always increase by exactly one or exactly two. 

So if you try and work out cadence since last reading you you almost always returns a cadence of 79 to 85  because of the sensor sampling rate). 

I wrote code that uses a n=10 buffer so that the cadence calculation is taken on the total revolutions in the last 8 to 9.5 seconds.  That gives me vastly more accurate timings (but even less responsiveness)

There are two other small problems: 

* If I stop peddling entirely (or drastically slow down) the sensor stops sending new data - it sends the old data again - so my code thinks that the time and crank revolutions haven't changed.  So if I stop peddling it takes the code a really long time to notice and update the cadence. 
* If I stop for a moment and then speed up, the sensor sends a big update  like 9 revolutions in 7 seconds.  

The bottom line is that these cadence sensors are good for their central use case (measuring cadence for cyclists over reasonably long periods) but far from great for my use-case (super-fast reaction times in video gaming). 



