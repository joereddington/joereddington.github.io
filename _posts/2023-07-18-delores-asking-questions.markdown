---
layout: post
title: "Delores asking questions"
date: "2023-07-18 07:25:15 +0100"
---

This is a bit of a placeholder post - I've been meaning to write up the whole journey for this software for years but had never got over it.  If I write this post then at least it's a step in the right direction.   

I'm building some software (called Delores) for parsing markdown files and helping humans (in this case, me) execute detailed workflows.  It's fun - I'm effectively writing a compiler and an interpreter, but with quite a lot of GUI stuff.  I've built versions of it before: certainly I'd built my third version by 2018, but apparently I've never blogged about it before)

Today, I was working out queries. In a 'normal' programming language this would be an IF statement, but I'd like it to be a bit more natural for the humans. 

It took a disgustingly long time for me to realise I didn't have to use fancy syntax at all - I could use markdown's internal link system and extract any links from an individual command.  This also meant I'd found a much more elegant way to write jump notation. 

When I worked this out it then became reasonably obvious that in my current approach (compiling an intermediate form using Python) wasn't really doing much work and I could probably have done it all in JavaScript anyway. 

I did some really good design and 'working the problem' this morning - I'm pleased with myself. I'm leaving it at a good stage to take forward and I'll come back to it after I do some more important things. 

