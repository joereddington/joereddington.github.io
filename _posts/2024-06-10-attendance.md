---
title: "CASPER: Improvements to Attendance Tracking"
tags:
- teaching
---

CASPER is a Python program I use for attendance tracking in lectures. It is quick, accurate, and secure. 

During a lecture I show the students a QR code that contains a link to a form. The form asks:

1. How many people are sitting to your left?
2. How many people are sitting to your right?
3. How many rows are in front of you?

...which is sufficient information for CASPER to build a map of the lecture room and note any anomalous results.  

# A Worked Example
Consider the following data for row 3 of a fictional lecture: 

| Name      | Row | Sitting Left  | Sitting Right | Total     |
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

Ten students have filled in the form, and if I look up from my notes I would see ten students in the row. 

However, Peppa has put in strange numbers! When I look up to check, I don't see their in the row... 

Now let's sort the students (In this example it doesn't matter if we sort by 'sitting left' or 'sitting right')  

| Seat 0 | Seat 1 | Seat 2 | Seat 3 | Seat 4 | Seat 5 | Seat 6 | Seat 7 | Seat 8 | Seat 9 | Seat 10 |
| - | - | - | - | - | - | - | - | - | - | - |
| Bluey | Bingo | Bandit | Chilli | Muffin | NOT FOUND | Lucky | Rusty | Mackenzie | Chloe | Coco |

There is a missing person between Muffin and Lucky. It turns out Socks forgot to fill out their form (in practice, it normally turns out that someone brought their partner to the lecture).⁰

# A real example
This example was the second time that this group of students had used CASPER¹. I have replaced student names with fake ones but the actual numbers are as entered. 

After the students fill in their forms I press the 'go' button on my laptop and got a map like this (again, it's a real map with replaced names): 

![Example of a map](/assets/images/examplecasper2.png)

The version of CASPER shown above is the prototype - it is now a much more user-friendly Python implementation.  You can see that because we are counting students rather than seats, everybody ends up clumped to one side. 

I looked at the map and asked the students the following questions: 

* Is Betty Ross here? (I could see the front row, and it was empty: Betty Ross wasn't present) 
* Is Happy Hogan here? (He had put himself in the wrong row; they is the missing person at the end of row eight)
* T'Challa and Sharon Carter where are you? Are you sitting on top of each other? (T'Challa had counted wrong, and should have been on the other side of Scott Lang)   
* Justin Hammer - who is sitting to your left? (His friend was attending the lecture with them and didn't think they should have filled out the form)   

That took under two minutes minutes but it was clear to everybody in the room that: 

* Everybody's attendance was correctly recorded
* I can detect unexpected people
* I can detect errors or attacks quickly.  

...and that sort of full review  (four questions!) only needs to be done a once or twice before a culture is clearly established. This particular example also predates changes I've made both to the student forms (students are more accurate now) and the code (there is much stronger error correcting code in place: Happy Hogan would have been placed correctly, as would T'Challa and Sharon Carter)   

# Scaling 
Students make mistakes (particularly early on). It turns out that the number of students that miscount (either the students on the row or the row itself) doesn't rise linearly with the total number of students: 40 students in a room will make 4 mistakes, but 80 students in a room will make 16 mistakes. There is a certain threshold of mistakes beyond which it is hard to be _certain_ about who is in the room (although you can still be a lot more certain than most other methods of attendance taking) because the structure breaks down.

CASPER compensates for this with various types of error detection and correction. As the modules have grown in size I've increased the sophistication of the algorithms, but how well they continue to function as numbers' rise is an open question. 

# History
CASPER was piloted casually in Spring 2024 and implemented fully in two modules in Autumn 2024. It was converted to Python for the Autumn 2025 term for a module with 170 students and during that term it was significantly upgraded.  It is currently (Spring 2026) being used in a 270 student module.  

# Future Plans 
* Most of the plans for this iteration focus on improving flexibility in terms of rooms (simply because I'm teaching in more of them and it's also a source of technical debt). 
* The long term plans would be to move off the command line (but I love it!) and onto the Web. The initial steps of that are quite simple and I may do them this iteration. 
* I am debating adding code to change the QR code every few seconds. I have a project student working on a similar system and it's been used reasonably successfully elsewhere (See the references below), but it wouldn't add anything to the security. It would however, look _cool_.   
* I will be watching scaling carefully 


# Discussion 
The main objective is to be able to find out which students are attending lectures so that I can tell (along with other sources of information) which groups of students were disengaging from the lectures. We have had several successes in terms of being able to check in with particular groups and make changes to accommodate them.

When framed as the above, CASPER is very popular with a predicable group of the students (the ones in the lecture), but very unpopular with a different predicable group of students. 

###  Proving a negative
A unexpected benefit is that you can prove _absence_. Occasionally a student will claim they have been at every lecture but forgot to sign in (examples might be: during disciplinary action; following a student complaint about quality of teaching; or during coursework feedback). With this system, students that have forgotten to sign in are immediately obvious (you can literally say “Mr Heeler, I don’t think you have signed in” after glancing at the map) and it’s possible to show for most lectures that there was nobody who forgot to sign in because the number of students on a row matches the total of the row (in essence, every student in the row is validating every other student in the row).


### Benefits
It's also nice to contextualise emails from students: a regularly attending student might get a different response from a continually absent one (In the sense of I can point them in the direction of the lecture recording, or make a note that something should be covered more in the materials and less orally). 

## Acknowledgements

This work was made possible by guidance from Professor Peter Komisarczuk, my academic mentor, and Professor Adrian Johnstone, who provided a historical view. Angelina Bianchi provided wonderfully detailed answers to my queries, and the admin staff at EMPS put up with my continuing strange questions. 


# References
Mohammed, M.S. and Zidan, K.A., 2023. Enhancing attendance tracking using animated QR codes: a case study. *Indonesian Journal of Electrical Engineering and Computer Science*, 31(3), p.1716.

Imanullah, M. and Reswan, Y., 2022. Randomized QR-code scanning for a low-cost secured attendance system. *International Journal of Electrical and Computer Engineering*, 12(4), pp.3762-3769.

