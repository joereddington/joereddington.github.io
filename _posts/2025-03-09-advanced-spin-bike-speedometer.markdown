---
layout: post
title: "My Bike Speedometer is eight times more accurate than yours"
date: "Sun Mar 09 14:15:11 +0000 2025"
---

A consumer bike speed detector knows when a wheel has made a complete rotation and it will use Bluetooth to send that information. If you stop (or start) suddenly, the controller for the sensors can be _sure_ you have stopped about three seconds later.² My notes on working with a consumer sensor are [here](https://joereddington.com/2024/06/10/bike.html). 

That doesn't work for my application (controlling video games via pedaling) so I built a speedometer that detects every time the wheel moves one eighth of a rotation and the controller knows a complete stop (or start) has happened within 0.3 seconds.³

(this is for a stationary exercise bike by the way, I'd build something different for general riding) 

I originally considered two designs.

* Magnets around the rim and a hall effect sensor that pings every time a magnet passes. 
* Measuring the voltage of a dynamo attached to the wheel. 

However, [some guy online](https://electronics.stackexchange.com/a/740571/308352) suggested I use an optical sensor because my flywheel has eight coloured segments. 

I did a proof of concept test with my a photoresistor and an arduino microcontroller which worked well enough to convince me to buy some of [these IR sensors](https://www.amazon.co.uk/dp/B07L3NRTF7?ref=ppx_yo2ov_dt_b_fed_asin_title). 

![First attempt with breadboard](/assets/images/arduino1.png)

With the IR sensor and a stand I put together in the garage, the setup looks like this.¹

![I made a stand](/assets/images/arduino3.png)

...and it works! 

![In Place](/assets/images/arduino4.png)

My partner as test pilot got it up to 7.5 rotations per second so it's working pretty well. It registers the speed accurately at very low speeds, which a consumer system doesn't do and detects acceleration and deceleration much earlier. 

The code in the Arduino looks like this (this is an early version that only reports the speed every second) : 

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
  if (currentTime - lastCheckTime >= 1000) {//this can be a lot more sophositcated and take breaks differenctly. 
    rps = (float)changesInLastSecond / segments_per_revolution;
    changesInLastSecond = 0;
    lastCheckTime = currentTime;
    
    Serial.print("RPS: ");
    Serial.println(rps);
  }
  
  delay(10);
}
```

### Next actions: 
* Benchmark the setup compared to both consumer sensor and the spin-bike's own sensor on a long ride. 
* Add some code to detect if a segment change is missed (did I see black/red segment for more than twice as long as I expected to recently). 
* Add a second sensor at one 16th a rotation offset from the first so I get 64 events a rotation rather than 8. 
* Experiment with increasing the sample rate   
* Add a seven segment display for debugging. 

However, all of those can wait. The next proper action is to [replicate my _Road Rash II_ setup](https://joereddington.com/2024/06/10/bike.html) with this new speed sensor setup so I can get a handle on what responsiveness I need/want. Then I can prioritise other things. 

⁰ I've actually got a set of suitable magnets so I might do a test another day.
¹ I am ridiculously proud of this t tand. I know it looks very much of a bodge.  
² the sensor I tested saves power by not sending an update if there aren't events to tell you about. So you have to deduce you have stopped by the lack of updates that come every 0.76 seconds (and in practice, often skip random ones)
³ This is the result for the first design, I'm reasonably sure I can get it down to 0.03 seconds with some changes to the code, but it needs some testing.
