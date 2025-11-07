---
layout: post  
title: "Q and A Lectures"  
date: "Tue Nov 12 17:47:16 +0000 2024"  
---

I believe that lectures are better with student interaction and that any way that we can get students to control the flow and rhythms of the experience are worthwhile. 

For my teaching in Autumn 2024 I ran some full Question and Answer lectures.

I have a two-hour Friday lecture, and on two selected days, I brought zero slides and told the students that it would be a review lecture. For the next two hours, I would answer any questions about the material they'd been taught so far (in practice, I am generally willing to answer any question about the module; particularly because I get to say 'I don't know, can you tell me more about it'). 

Happily (I lacked a backup plan), they went with it. For two hours, we did nothing but Q&A for a class of about 70 students. We talked about exceptions to particular rules, boundary cases, real-life examples, complex thought experiments, and a wide range of other things.

It was great: a full two hours of student-led learning where they focused on the topics or idiosyncrasies that mattered to them at their pace.

I did a fair amount of prep: 

* For the first two lectures we had [Bingo running](https://joereddington.com/2024/06/10/bingo.html) so the students understood my expectations around interaction. 
* I didn't do a full question and answer lecture until at least five sessions into the course. 
* Everybody got a handout explaining clearly what running a 'flipped'⁰ lecture was. 
* Crucially, the handout included ten 'starter' questions. These questions were different³ for each student and were randomly chosen from a set of about one hundred I'd prepared.  

You can see the simple code I used to generate them in [this GitHub repo](https://github.com/joereddington/qanda). The code is extremely ugly and I'll update it for the next iteration of the work. 

These starter questions did two things:

* They made the pressure much more even. On the one hand, the students didn't have to think up their own question, on the other hand everybody knew that everybody knew that they could ask a question. 

* They meant that students who did have a question didn't pay a social price for being 'that student with a strange question' because nobody else in the room² could say for sure it wasn't in the question database.

In the first session about 60% of the questions that students asked came from the question database and 40% were original. In the second session those percentages were reversed. That's definitely more original questions than I'd get in a normal lecture, and even the questions from the question database were a small selection of the available ones.

# Some things that surprised me
* The students didn't ask any of the questions in the question database that I wanted them to ask. This was annoying because I like talking about things that interest me rather than things that interest them.⁴
* The general stamina of the students is such that about 15 minutes before the end, we started to get questions like 'What's your favourite TV show?'⁵, but generally, people were on board.
* The students mostly avoided the questions that referenced the recommended reading. I suspect that's because most of them hadn't done it and didn't fancy either bluffing or outing themselves.
* The first time I did this I restricted coursework questions until the second hour because I expected a lot of them, but there were remarkably few. However, several lectures later, I had to abandon my slides in favor of solely answering coursework questions, so that appears to have been an accident of timing.

# Things to improve next year
* I want much more of a connection to the recommended reading. 
* The question database will need revision.    
* I want to improve the code with templates and more flexibility.  
* I haven't got students to ask questions electronically very well. It's done well by some of the law lecturers; I'll remind myself how they do it. 
* I want the students to get a lot better at answering each other's questions. 


# Conclusion 
This was an excellent way of handing over power to the students and making sure they had grasped everything so far. It pairs nicely with things like Bingo and is a good step towards the culture I want to build. 

# Update 
I did a keynote for the [NMWP unconference](https://newmediawritingprize.co.uk/unconference/) and took the same approach. The conference was by Zoom so I knocked up a quick PHP script (I literally ran 'php -S 0.0.0.0:8008' in the working directory on my desktop and sent them the IP address⁶) that did the same 'suggested questions' approach.  To avoid people seeing all the questions I locked the question list to user-agents and only allowed a new set every few minutes. The USP was that some questions unlocked later questions which I had to do by hand - I would like to make that more automatic in future.  

Certainly I'd be confident using the PHP script for a Teams Lecture in future. 


# Notes
⁰ It's _close_ to a flipped lecture, but it's either more or less aggressive depending on definition.
² Except me.  
⁴ There's an open debate about whether it's better for the students or the staff to set the content, but I think we can all agree we should know what the students _want_.  
⁵ Bluey, obviously.  
⁰ This was true both times I ran the Q&A lecture.  
⁶ I actually really liked running it from my desktop - I would normally put it on something like GitHub Pages or my AWS server, but this was super quick to update and switch off at the end. Also there's something pleasant about knowing that the machine is literally JUST   over there.

