---
title: "Improvements to Attendance Tracking"
---


## tl;dr

By adding three questions to an online form, we massively improve the accuracy and usefulness of student attendance tracking and transform a system that is currently not fit for purpose into one that is secure, fast, and  also provides several pedagogical advantages.


# Introduction
Inclusively and disability have been lifelong passions of mine (and using data to map need was once my research area). I can’t know if I’m teaching inclusively if I don’t know who is in the room. For example, my ADHD students might not be turning up because they can’t process a two-hour chalk and talk lecture; my overseas students might be absent because I talk too fast and with too many UK references; and my students with care responsibilities might only be able to work from slides anyway. Without precise and accurate attendance information, I can’t even begin to segment my students and allocate resources appropriately.

## The problem

Many years ago as an undergraduate, I would, without any reflection, sign the names of friends on the paper attendance forms that were passed around. Periodically, I might ask them to do the same if I had a drastic emergency such as wanting to play a video game. This tradition has continued to this very day and has survived the transition to digital: the student dashboard for the course I taught in the spring shows there are an average of 181 people attended every Friday afternoon, which is problematic because I have never counted more than 50 (and I'm fairly certain it's a fire risk to have many more than 90).  

Because I cannot trust the attendance data, I cannot know how inclusive my teaching is. I review the reports from the education support services about disability and check in with those students periodically, but without clear, reliable data, I can’t tell if any groups are disengaged from the course. I want to know what the attendance pattern is for:

- Neurodivergent students
- Overseas students (I tend to talk rapidly, which I’m trying to control)
- Students with particular fatigue issues
- Students who have submitted the assessments

The last one is particularly important because I will have a cohort of students that are engaging with videos, quizzes, and coursework but who aren't physically present – if I know how big that cohort is, then I can assign resources appropriately (update: it turned out that about 25% of students turned up in person, and about half of those submitted assessments. Those 'present assessments' accounted for about half the total number of submissions, which sort of suggests that there was an equally sized group engaging with the lectures without being at them) 

So, I needed a new attendance tracking system. It needs to be: 

* easy for the students 
* easy for me (very important) 
* secure because if students can sign each other in then the system is useless. 

Signing in with Moodle is NOT fit for purpose, paper registers are a lot of work for me and don’t stop people signing friends in, and QR codes are fast and easy, but again, don’t stop the students sharing the link in group chats and so on.

### My Solution

It turns out that we can solve almost all the security problems with a QR code by asking three very simple additional questions:

1. How many people are sitting to your left?
2. How many people are sitting to your right?
3. How many rows are in front of you?

![An example of the form](/assets/images/attendenceform.png)

These questions are easy and fast (students take an average of 33 seconds), and they give all the information that a small piece of computer code needs in order to produce a complete map of where every student is sitting. This makes it easy to:

- Identify people who aren’t in the lecture (because their answers are either wrong, or suggest they are sitting on top of someone else)
- Identify people who are in the lecture but forgot to sign in (because they appear in the counts of everybody else in the row)

In practice, when I have deployed this method using a QR code, even though some (science!) students struggle to correctly count people on either side of them, there are almost no attempts to sign other people in (because the students understand the mechanism) and it’s extremely easy to fix the students who forget because you glance at it, think “Who was sitting next to Monica? Oh, it was Rachel!”

With these three simple questions, we completely fix accuracy problems in attendance tracking and I can now properly track which student groups I’m NOT reaching with my teaching.

The code itself (which sits entirely inside an Excel file) is NOT entirely ready for wide deployment yet but I might do a cleaner version for next time (it's not exactly rocket science either, it would only take 30 minutes or so to replicate) 

### Additional Benefits

Occasionally a student will claim they have been at every lecture but forgot to sign in (examples might be during disciplinary action or following a student complaint about quality of teaching, or during coursework feedback). With my system, students that have forgotten to sign in are immediately obvious (you can literally say “Mr. Bing, I don’t think you have signed in” after glancing at the map) and it’s possible to show for most lectures that there was nobody who forgot to sign in because the number of students on a row matches the total of the row.

## Beneficial Effects on Student Learning

There are three beneficial effects:

1. Most concretely, once the students understood the system of attendance, the number of students in the room increased from 45 at the start of the course to consistently 50 or above during February, making this a rare case of a module where the attendance increases during the term.
2. The key objective of the work was to be able to find out which students were attending lectures so that I could tell (along with other sources of information) which groups of students were disengaging from the lectures. I was able to analyze the information and find several groups that I needed to contact, and I’ve put appropriate measures in place (
3. It's nice to contextualise emails from students: a regularly attending student might get a different response from a continually absent one (even if that's "This is a short version of the answer, come and see me after the lecture if it is unclear")  
4. The most useful feature is this: you can have a laptop open in the lecture that shows a complete map with the names of the students where they are sitting. Suddenly it’s much easier to say “Okay, I’ll take the question from Joey, and then the one from Phoebe” or “Gunther, do you have something you need to share?”.:w

## Acknowledgements

This work wouldn’t have been possible without guidance from Professor Peter Komisarczuk, my academic mentor, and Professor Adrian Johnstone, who provided a historical view. Angelina Bianchi provided wonderfully detailed answers to my queries, and the admin staff at EMPS put up with my continuing strange questions.
