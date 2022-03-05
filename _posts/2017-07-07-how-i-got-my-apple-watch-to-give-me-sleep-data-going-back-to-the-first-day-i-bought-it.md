---
title: How I got my Apple Watch to give me sleep data going back to the first day I bought it.
---
The apple watch has some sleep tracking apps, but they all have the major flaw that you have to switch them on when you go to bed and switch them off when you wake up.

For me, this makes them unfit for purpose - it's those days when I am too tired to remember to flick the switch that are the ones that really matter to me.  I want something totally automatic.

So that's the problem.  Now let me show you my a week of my Google Calendar from a few months ago.

&nbsp;

![Alt text](http://joereddington.com/wp-content/uploads/2017/06/Screen-Shot-2017-06-21-at-16.13.20.png) 

The green events are when I'm asleep, the purple ones are when I'm cycling, and the pink ones are when I'm using public transport.

That week I was working in Bounds Green on a very tiring project for [whitewaterwriters.com](http://whitewaterwriters.com). It was so tiring that on one evening I was abed by 8pm.  I was also building up to cycle all that way - as you can see I started by breaking the journey down, then tried to bite off more than I could chew on Thursday and gratefully got the train all the way there on Friday.

Here's the cool thing - I didn't collect any of that data on purpose.  I wasn't tracking my sleep, or my movement, or anything else at this sort of detail. All of those events where automatically generated for me, after the fact.

The cycling appears on the calendar via the wonderful [StravaICAL](http://stravical.appspot.com/), and the other transport information comes in via some other code I wrote that imports [my Oyster records](http://joereddington.com/4462/2014/11/12/importing-oyster-card-records-into-google-calendar/). I'm going to use this post to tell you about how I managed to us my Apple Watch to give me sleep data going back more than a year to the first day  bought the watch.  This post is going to talk about how I did it, how you can do it, and what I learned from the process.

## How I got the old information

Like almost everybody I charge my watch overnight. The last thing I do at night is put it on charge, and the first thing I do in the morning is put it on my wrist.

I'd also been wondering about sleep tracking for a while.

I tried to export the 'time under charge'  log files from the watch  then I'd have a pretty good sleep tracker&#8230; Or at least 'bed' tracker, which is most of what I want.

Unfortunately I couldn't get access to that.

I tried to see if there was any way I could regularly export the 'lock' and 'unlock' events from the watch, because that would be a good proxy for bed as well.

No luck there either.

However, I did discover something I could export.  My heart rate data.  Every ten minutes the watch takes a measurement of my heartrate. If it's not on my wrist, then there is no measurement.

I used the app [QS Access](https://itunes.apple.com/gb/app/qs-access/id920297614?mt=8) (app store link) to give me the file.  The process is: open app, press the 'i' by 'heart rate', choose 'tabulate all samples' and export the file to Dropbox.   It saved as 'Heart rate.csv'.

Turns out that the Heart-rate data gives you pretty much everything you need.  Once I wrote the code,  which you can see [here](http://github.com/joereddington/watson) (run with './watson.py sleep', I was able to pull out data like this:

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">   </span>25/04/17 22:42 to 11:09 (12:27)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>26/04/17 22:10 to 08:57 (10:47)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>27/04/17 22:56 to 07:34 (8:38)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>28/04/17 23:44 to 08:36 (8:52)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>29/04/17 22:37 to 09:13 (10:36)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>30/04/17 23:20 to 09:07 (9:47)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>02/05/17 00:47 to 08:05 (7:18)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>02/05/17 22:31 to 09:41 (11:10)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>03/05/17 23:56 to 08:00 (8:04)</span>
</p>

<p class="p1">
  <span class="s1"><span class="Apple-converted-space">    </span>04/05/17 22:33 to 08:55 (10:22)</span>
</p>

1st of May was a real late night - exactly the sort were I would normally have failed to switch on a sleep tracking app.

A little bit more code made it easy to automatically have this appear on my Google Calendar as you've seen above (I produce an ICS file and send it to a server, you could simply open it periodically in iCal)

## What I've learned

The first thing I did when I got that lovely data was check that it was representative.  There were a few days where I'd forgotten my charger on a trip or similar that needed to be taken out. But it was mostly in good repair.

I wanted to check that the old data was fairly accurate so I did two things.

  * First, I'd attempted to use a different app for sleep tracking a few months ago (I only lasted a week) - I dug out that data and compared it to the watch data - it was the same to within a couple of minutes.
  * Secondly, I wore the watch normally for the next watch (making no intentional changes to my sleep habits), but with some awareness that it was now tracking me.  After that month I compared the 'aware' data with the 'unaware data'. The averages and the standard deviations of sleep time, wake time, and length of sleep were pretty much the same so

I was happy to conclude that:

  * The data I have for the last year of my sleep is pretty accurate
  * I make NO unconscious changes to my sleep patterns now I know I'm being monitored.

There data itself was fascinating  - and I've made some lifestyle changes to see if I can improve matters - I'll write another post in future looking at if they work or not.  For now - people who charge their watch like I do now have a way of getting to their data.
