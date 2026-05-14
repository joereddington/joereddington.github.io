---
layout: post
title: "What's up with my 3D printer?"
date: "Thu Aug 21 15:05:22 +0100 2025"
---

In May 2025 I got a 3d printer. This page lists everything I know about it and ongoing things I'm trying to solve.  It's the page I send people as background when I am having problems. 

The printer is second-hand, gifted by a lovely friend. It's a BCN3D Sigma from 2017.  The firmware version is 01-2.0.4.  [This page](https://support.bcn3d.com/knowledge/upgrade-bcn3d-sigma) suggests it should have a serial number but there is nothing on the bottom sticker nor on the LCD display (which says to look at the bottom sticker) 

![](/assets/images/sigmar17.png)

The above image suggests I had a stock  r17. The firmware and the kit that came with the printer suggests that it has been upgraded to an r19 model and it has track marks on both sides of the filament after it went through the extruder, which seems to be the tell-tale sign. This matches what I was told when I was given the printer.  This page seems useful on the upgrade topic: https://support.bcn3d.com/knowledge/upgrade-bcn3d-sigma

Since getting it in about May 2025 I have printed the classics...

![](/assets/images/benchy.png)

...some things that demonstrate dual-extruders...

![A fidget spinner with Stitch on it](/assets/images/3dspiner.png)

...and actual useful things for projects. 
![Display](/assets/images/speedodisplay1.png)




# Problems/confusions
I have some things I'm trying to work out that I don't understand. 


#### Strange structural things.
![3dprintissue](/assets/images/3dprintstrata.png)

I produced the above two models directly after each other - the black is the left extruder and the white is the right extruder. The white has odd layers that have clearly gone wrong. I'd like to work out why. 

#### Upside down
When I download stl files they are often in an orientation that matches how the final object will be used, but in a really unsuitable orientation for printing. I can understand why but I'm slightly surprised there isn't a handy file that says 'btw for best strength print it this way up'. I have at least one file that fails repeatedly in the 'correct' orientation but works fine upside down (by which I mean, it fails completely, long before there is any structural reason for it to fail)   

### Some prints work and some don't
I'm having an odd problem that some prints fail immediately and some don't.  For a while I've been blaming the printer and getting quite frustrated, but it seems like there is something in the software toolchain that is causing problems.  The current behaviour is that some models print really really well (well, sometimes I get one of the issues above) and some fail basically on the first layer. This is what my log looks like after a week of tracking.  

| Date    | Name                 | Link                                                                 | Left/Right | Colour | Success | Notes                                              | Fail attempts |
|---------|----------------------|----------------------------------------------------------------------|------------|--------|---------|---------------------------------------------------|---------------|
| 24/8/25 | Benchy              | [Link](https://www.printables.com/model/3161-3d-benchy/files)        | Left       | Black  | Yes     |                                                   |               |
| 24/8/25 | Benchy              | [Link](https://www.printables.com/model/3161-3d-benchy/files)        | Right      | White  | Ish     |                                                   |               |
| 25/8/25 | PS4 holder          | [Link](https://www.printables.com/model/345321-dualshock-ps4-controler-under-desk-mount) | Left       | Black  | Fail    | Failed super early - NOT adhering                 | 2             |
| 25/8/25 | LCD holder          |                                                                      | Left       | Black  | Ish     | Cracked when taking off and I think there was a layer issue |               |
| 25/8/25 | Mount for spin bike | [Link](https://www.thingiverse.com/thing:4838591)                    | Left       | Black  | Success | Worked twice even in different dimensions         |               |
| 26/8/25 | PS4 holder inverted | [Link](https://www.printables.com/model/345321-dualshock-ps4-controler-under-desk-mount) | Left       | Black  | Success |                                                   |               |

I need a bunch more data to investigate - particularly "Here are ten files that didn't print and ten that did" so I can look at them properly.  

# Grams 

If I slice a print in Statos, I get a time and grams like this: 

![statos1](/assets/images/statos1.png)

but when I move that to the printer the grams read as zero. 

![statos2](/assets/images/statos2.png)

What's happening there? 


# Duplication Mode
I have this issue when I try and use the duplication mode.
![duplicaitonomde](/assets/images/duplicaitonomde.png)

...and when I investigate it I can see that the left is lower than the right. Actually I can see that there is a significant gap on the left side, I know one of the hotheads was replaced before I got it so perhaps something went wrong there. 

# Solved problems 

* For a long time one of the print heads was making a funny noise when it tried to move. You can see/hear it making the funny noise [here](https://www.youtube.com/shorts/bfZnrtGzAPY). Eventually it got bad enough that it wasn't working for prints and then it got bad enough that the bed leveling wasn't working. The solution turned out to be 'oil the motor' - although I'm I suspect this is treating the symptom rather than the cause.
* I had what I thought was a blocked nozzle because nothing was coming out. Actually there was a break in the filament that wasn't passing through the filament feeder. I think in actual fact the issue was that the break had broken 'square' and actually the thing needs to be cut at an angle to pass through. 
* Prints were failing regularly until I started taking off the filament each time and storing it in an airtight container with some desiccant








# Before each print

* I clean the bed with rubbing alcohol 
* I then put some Prit stick around the expected print area 
* I run the bed leveling code. 





