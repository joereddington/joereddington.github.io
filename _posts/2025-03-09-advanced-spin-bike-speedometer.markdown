---
layout: post
title: "My Bike Speedometer is eight times more accurate than yours"
date: "Sun Mar 09 14:15:11 +0000 2025"
---

A consumer bike speed detector knows when a wheel has made a complete rotation and it will use Bluetooth to send that information. If you stop (or start) suddenly, the controller for the sensors can be _sure_ you have stopped about three seconds later.² My notes on working with a consumer sensor are [here](https://joereddington.com/2024/06/10/bike.html). 

That doesn't work for my application (controlling video games via pedaling) so I built a speedometer that detects every time the wheel moves one eighth of a rotation and the controller knows a complete stop (or start) has happened within 0.3 seconds.³

(this is for a stationary exercise bike by the way, I'd build something different for general riding) 

I originally considered two designs.

* Magnets around the rim and a hall effect sensor that pings every time a magnet passes.⁰ 
* Measuring the voltage of a dynamo attached to the wheel. 

However, [some guy online](https://electronics.stackexchange.com/a/740571/308352) suggested I use an optical sensor because my flywheel has eight coloured segments. 

## Proof of concept
I did a proof of concept test with a photoresistor and an Arduino microcontroller. It worked well enough that I felt the basic idea had legs. 


![First attempt with breadboard](/assets/images/arduino1.png)


## IR sensors
After the proof of concept I bought some of [these IR sensors](https://www.amazon.co.uk/dp/B07L3NRTF7?ref=ppx_yo2ov_dt_b_fed_asin_title), because I understood they would be a bit more accurate and effective.   

I threw together a stand out of scrap wood in the garage¹ and built this: 


![I made a stand](/assets/images/arduino3.png)

...and tested it on [my bike setup](https://joereddington.com/2023/02/28/bike.html) 

![In Place](/assets/images/arduino4.png)

My partner as test pilot got it up to 7.5 rotations per second so it's working pretty well. It registers the speed accurately at very low speeds, which a consumer system doesn't do and detects acceleration and deceleration much earlier. 

At this point the code in the Arduino looked like this: 

```
int ldrPin = A0;
const int red_above_this = 35;
const int segments_per_revolution = 8;
int lastValue = 0; // Assume 0 is red
int changes = 0;   // Number of segments changed
int ldrValue = 0;
unsigned long lastCheckTime = 0;
int changesInLastSecond = 0;
float rps = 0.0; // Revolutions per second

void setup() {
  Serial.begin(9600);
  pinMode(ldrPin, INPUT);
}

int detectColor(int value) {
  return (value > red_above_this) ? 0 : 1;
}

void loop() {
  ldrValue = analogRead(ldrPin);
  int currentValue = detectColor(ldrValue);
  unsigned long currentTime = millis();
  
  if (currentValue != lastValue) {
    lastValue = currentValue;
    changes++;
    changesInLastSecond++;
  }
  
  // Every second, calculate RPS
  if (currentTime - lastCheckTime >= 1000) {//this can be a lot more sophisticated and take breaks differently. 
    rps = (float)changesInLastSecond / segments_per_revolution;
    changesInLastSecond = 0;
    lastCheckTime = currentTime;
    
    Serial.print("RPS: ");
    Serial.println(rps);
  }
  
  delay(10);
}
```

## Display 
Next time I came back to the project. I 3D printed [a housing for an LCD display](https://www.thingiverse.com/thing:614241) and worked out how to display things with it.  

![Display](/assets/images/speedodisplay1.png)

I obviously needed a much longer cable (the sensor is by the wheel and I want the display on the desk). Nova and I found an old Ethernet cable with four wires in the garage and I used that. I'm finally getting some use out of my soldering iron... 

![soldering](/assets/images/soldaring.png)

I'm really impressed with how professional it ended up looking: 

![speedobikeresult](/assets/images/speedobikeresult.png)

While this was happening I also spray painted the mount I was using for the sensor to get a bit away from the 'GCSE student with scrap wood' vibe. It now looks like this: 

![speedospraypaint](/assets/images/speedospraypaint.png) 

## The original speedometer
The spin bike came with a very basic speedometer attached, and I took a look at it to check I was benchmarking correctly. I found that when I sent pulses to the sensor with the Arduino I could manipulate the speedometer fairly easily. For every pulse in a second, the speedometer would register 10.5 on the speed measurement. I went on to use the speed calculation information when I wanted to display kilometers per hour and total kilometers.  

![kk](/assets/images/speedooriginalmonitor.png)

## Next actions
These are next actions for the speedometer itself. There are different next actions for the 'use the spin bike to play computer games' project . 
* Add a very simple "Buzzer makes noise if cadence is less than X" 
* Add a second sensor at one 16th a rotation offset from the first so I get 64 events a rotation rather than 8. 
* Add some defensive code to detect if a segment change is missed (did I see black/red segment for more than twice as long as I expected to recently). 


⁰ I've actually got a set of suitable magnets so I might do a test another day.

¹ I am ridiculously proud of this and  I also know it looks very much of a bodge.  
² the sensor I tested saves power by not sending an update if there aren't events to tell you about. So you have to deduce you have stopped by the lack of updates that come every 0.76 seconds (and in practice, often skip random ones)

³ This is the result for the first design, I'm reasonably sure I can get it down to 0.03 seconds with some changes to the code, but it needs some testing.
