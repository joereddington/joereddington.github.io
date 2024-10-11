---
title: "CASPER: Improvements to Attendance Tracking"
---

## tl;dr

By adding three questions to an online form, we improve the accuracy and usefulness of student attendance tracking. 

## The problem

When I was an undergraduate, I would sign the names of friends on the paper attendance forms that were passed around. Periodically, I might ask them to do the same if I had a drastic emergency such as wanting to play a video game. 

This tradition has continued to today and has survived the transition to digital: the official attendance for the last course I taught is 181; I have never counted more than 50. 

I wanted a new attendance tracking system. It needed to be: 

* easy for the students 
* easy for me (important) 
* secure: it should only track students actually in the lecture.

Signing in with Moodle is not fit for purpose, paper registers are a lot of work for me and don’t stop people signing friends in, and QR codes are fast and easy, but again, don’t stop the students sharing the link in group chats and so on.

## My Solution

It turns out that we can solve almost all the security problems with a QR code by asking three additional questions:

1. How many people are sitting to your left?
2. How many people are sitting to your right?
3. How many rows are in front of you?

Here's a screenshot of the form I used: 

![An example of the form](/assets/images/attendenceform.png)

These questions are easy and fast (students take an average of 33 seconds), and they give enough information for my code to produce a map of where each student is sitting. 

This makes it easy to:

- Identify people who are in the lecture but forgot to sign in (because they appear in the counts of everybody else in the row)
- Identify people who aren’t in the lecture but have filled out the online form anyway (because a friend has sent them the QR code or link)  

Let's look at an example. Let's say I have the following data for row 3: 

| Name      | 3 | Sitting Left  | Sitting Right | Sum     |
|-----------|---|----------|------------|---------|
| Bluey     | 3 | 0        | 10         | 10      |
| Bingo     | 3 | 1        | 9          | 10      |
| Mackenzie | 3 | 8        | 2          | 10      |
| Bandit    | 3 | 2        | 8          | 10      |
| Coco      | 3 | 10       | 0          | 10      |
| Muffin    | 3 | 4        | 6          | 10      |
| Peppa     | 3 | 6        | 9          | 15      |
| Lucky     | 3 | 6        | 4          | 10      |
| Rusty     | 3 | 7        | 3          | 10      |
| Chilli    | 3 | 3        | 7          | 10      |
| Chloe     | 3 | 9        | 1          | 10      |

Ten students have filled in the form, and if I look up from my notes I would see ten students in the room. 


However, Peppa has put in radically different numbers from the others and when I look up I probably won't see her (When such cases appear, the timestamp on the form is also a massive outlier). 

Another thing to spot (it isn't obvious in this format but is obvious when my code draws the map below), is that there is a person in the room that we don't have  data for: 


| Seat 0 | Seat 1 | Seat 2 | Seat 3 | Seat 4 | Seat 5 | Seat 6 | Seat 7 | Seat 8 | Seat 9 | Seat 10 |
| - | - | - | - | - | - | - | - | - | - | - |
| Bluey | Bingo | Bandit | Chilli | Muffin | NOT FOUND | Lucky | Rusty | Mackenzie | Chloe | Coco |

...and indeed Socks forgot to fill out her form. 

In practice, when I have deployed this method using a QR code, even though some (science!) students struggle to correctly count people on either side of them, there are almost no attempts to sign other people in (because the students understand the mechanism) and it’s easy to fix the students who forget because you glance at it, think “Who was sitting next to Bluey? Oh, it was Bingo!”


With these three simple questions, we completely fix accuracy problems in attendance tracking (and I can now properly track which student groups I’m failing to  reach with my teaching).


## Extra use case  

Occasionally a student will claim they have been at every lecture but forgot to sign in (examples might be during disciplinary action or following a student complaint about quality of teaching, or during coursework feedback). With my system, students that have forgotten to sign in are immediately obvious (you can literally say “Mr Heeler, I don’t think you have signed in” after glancing at the map) and it’s possible to show for most lectures that there was nobody who forgot to sign in because the number of students on a row matches the total of the row.

## Beneficial Effects on Student Learning

There are three beneficial effects:

1. Most concretely, once the students understood the system of attendance, the number of students in the room increased from 45 at the start of the course to consistently 50 or above during February, making this a rare case of a module where the attendance increases during the term.⁰

2. The objective was to be able to find out which students were attending lectures so that I could tell (along with other sources of information) which groups of students were disengaging from the lectures. I was able to analyze the information and find several groups that I needed to contact, and I’ve put appropriate measures in place.  
3. It's nice to contextualise emails from students: a regularly attending student might get a different response from a continually absent one (even if that's "This is a short version of the answer, come and see me after the lecture if it is unclear")  
4. The most useful feature is this: you can have a laptop open in the lecture that shows a complete map with the names of the students where they are sitting. Suddenly it’s much easier to say “Okay, I’ll take the question from Stripe, and then the one from Nana” or “Muffin, do you have something you need to share?”


|     | Closest to left wall     | 2     | 3      | 4      | 5       | 6      | 7      | 8      |
|-----|-------|-------|--------|--------|---------|--------|--------|--------|
| 5   | Bluey | Bingo | Bandit | Chilli | Muffin  | Socks  | Lucky  |   |
| 4   | Mackenzie | Chloe | Coco   | Snickers | Honey | Jack  | Indy   | Jean-Luc |
| 3   | Pat   | Calypso | Judo  | Winton | Frisky |        |        |        |
| 2   | Stripe      |       |  |        |        |        |        |        |
| 1   | Rusty       |       |        |        |        |        |        |        |

(note that because the approach counts students rather than seats, the map shows everybody clumped up to one side) 

## Acknowledgements

This work was made possible by guidance from Professor Peter Komisarczuk, my academic mentor, and Professor Adrian Johnstone, who provided a historical view. Angelina Bianchi provided wonderfully detailed answers to my queries, and the admin staff at EMPS put up with my continuing strange questions.


## Future work
The original  code was ugly (and not hard!), I built a clearer and more fully featured version for the Autumn Term 2024 classes.  There is a lot still to do though. 

I'd like to get the code to work on a proper sever so that the I could see the map being built up in real time as the students filled in their answers. That would tighten up the feedback loop considerably. I'd also like the interface with Moodle to be much more clean and automatic.   

## Random Extra Tips
* Works best halfway through the lecture - people turning up late is unhelpful for the data.
* In general the data is much nosier than I have presented here - it would be accurate to describe this as 'a system where bad actors are obvious if you want to go and look for them' rather than 'a system where bad actors are prevented from adding bad data' 

⁰ In a recent presentation I also claimed that the increase in attendance was due to me making my lectures very interactive so I probably need to get a bit more evidence for that... 


# Autumn 2024 
For Autumn 2024 I did some improvements to the script. The mapping is now much quicker. Here's an example of the current version of the code. (Obviously these are fake names)  

<iframe width="560" height="315" src="https://www.youtube.com/embed/Sb5s4rVPAe4?si=HfdSIhtJzPIg8rWp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


Over the course of the term I would like to refine it quite a lot, and get it into a position that it works well for other members of staff. 

The current version of the Excel Script mapping code is in [this Github repo](https://github.com/joereddington/casper) 

## Example
In this example I showed the QR code for CASPER about 40 minutes in, and go on with the lecture.  Next time the students had a small bit of thinking time I press the 'go' button on my laptop and get a map like this (this is a real map, but I replaced all the student names): 

![Example of a map](/assets/images/examplecasper2.png)

With the (original version of) the map above I asked the following questions: 

* Is Betty Ross here? (I could see the front row, and it was empty: Betty Ross wasn't present) 
* Is Happy Hogan here? (He had put himself in the wrong row; he is the missing person at the end of row eight)
* T'Challa and Sharon Carter where are you? Are you sitting on top of each other? (T'Challa had counted wrong, and should have been on the other side of Scott Land 
* Justin Hammer - who is sitting to your left? (His friend was attending the lecture with them and didn't think she should have filled out the form)   

That took about three minutes but it was clear to everybody in the room that: 

* Everybody's attendance was correctly recorded
* I can detect unexpected people
* I can detect errors or attacks quickly.  

...and that sort of full review only needs to be done a once or twice before a culture is clearly established.  



