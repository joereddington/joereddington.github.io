---
layout: post
title: "Things I say to project students"
date: "Thu Oct 30 09:49:53 +0000 2025"
---

I like project supervision and I have had some excellent students. However, I'd like to make sure that everybody starts on the same page. Here is some information that will help. 


# Masterpiece 

From Terry Pratchett's [The Amazing Maurice and His Educated Rodents](https://www.amazon.co.uk/Amazing-Maurice-Educated-Rodents-Discworld/dp/0552576808/ref=sr_1_1?crid=1UODM2P6U3281&dib=eyJ2IjoiMSJ9.RL_03eUjqvZ9RdnVYrkJ2og8D84IRU2C2O0C94Y-qtd6BWvoRlmImK65BFCI6bOe8UJicG_1X_t8JPVx-UW8T7hhqKJs9x8RLQRboCF9noEJSKyXKBA074Fg4YAbn57hc6qhWIdb3vMsfdiz2l7cuXPPwMilDDuuuYdaIqVkIXcBsNv1We7J-K1uESiBJOhSB5bSZh4lW8rFy91D1R1FdyI-JtvxUj_SXJsjQI5kqNI.zAu6znHcbUvDXtNATMMhik4MoyV61XhIWpbjHZ5RoIM&dib_tag=se&keywords=Amazing+Maurice%2C+The&qid=1761817979&sprefix=amazing+maurice+the%2Caps%2C130&sr=8-1)

    'But that rat-catcher said they made one,' said Keith firmly. 'He said they did it to get into the Guild. Do you know what a masterpiece is?'
    'Oh course. It's anything really good'
    'I mean a real masterpiece,' said Keith. 'I grew up in a big city, with guilds everywhere. That's how I know. A masterpiece is something that an apprentice makes at the end of their training to show the senior members of the Guild that they deserves to be a "master". A full member. You understand? It might be a great symphony, or a beautiful piece of carving, or a batch of magnificent loaves - their "master piece".'
    'Very interesting. So?'
    'So what sort of master piece would you have to make to become a master rat-catcher? To show that you could really control rats? Remember the sign over the door?'

Your project is going to be almost literally your masterpiece in this respect. You are going to build a thing yourself that will help us respect you as a master of your craft.  That is how you should view it.  Ideally you will end up finding it so interesting that people start backing away from you at parties. 


# Choosing a project

Choosing a project is hard.  Ideally you will bring me a paper.  

I would love to be cc'd on emails like this: 

    Dear Prof. Dude, 
        I implemented your 2019 algorithm 'The Torment Nexus' for my final year project and I was very pleased to find that I was able to replicate your results.  
    
        I find the area interesting - are you hiring for any research assistant jobs? 

I'd also like to send more emails like this: 

    Dear Prof. Dude, 
        One of my project students tried to implement your 2019 algorithm 'The Torment Nexus' using the dataset you provided but it didn't work.  Can you share your code on GitHub or a similar platform so we can see if we made a mistake or you did? 
    

...because replication is the bedrock of good science. 

So I would like more students to bring me, very early on,  a paper they found on Google Scholar (other places to find academic papers are available) and say "I want to replicate this".  We can then look at the paper together and see if it's something that is possible within the scope of either a UG or Masters project.  If it is (and it's amazing how many published papers are this low level), then you will have found a project that is probably suitably hard, interesting, and _will help science_. Also when I say "Suitably hard" I more probably mean 'suitably serious' - I suspect that would be much easier than fumbling through with less complete ideas.  

## If you are choosing from a set of projects, choose one you love, but you should choose the hardest looking one. 
There are more marks in making a heroic effort for a difficult project than there in are perfectly executing a boring one. The more ambitious your project is, the more you will learn; the more you learn, the more you will be able to demonstrate in your report and code; and the more you can demonstrate, the more marks you will get. It's quite hard to show that you have performed exciting computer science when it turns out you have "built a website".  


## It is generally better to expand downwards than upwards. 
About 80% of students are not being ambitious enough with their projects. After they explain their project I find myself saying "That sounds like a great project, but I expect it's about a three week project so what are you planning for the main body of the work?" 

Part of the problem is that 'state of the art' has moved.  It used to be the case that "implement a machine learning solution to see if a patient is likely to have a stroke" was a big serious project that would take six months.  This is how I would do it in Python now: 

```python
# pip install pandas scikit-learn
import pandas as pd, numpy as np, sklearn as sk
d=pd.read_csv("stroke.csv"); y=d.pop("stroke"); X=pd.get_dummies(d)
p=np.random.RandomState(0).permutation(len(X)); t=int(.8*len(p))
m=sk.linear_model.LogisticRegression(max_iter=200,class_weight="balanced").fit(X.iloc[p[:t]],y.iloc[p[:t]])
print(sk.metrics.roc_auc_score(y.iloc[p[t:]], m.predict_proba(X.iloc[p[t:]])[:,1]))
```


So you can see that perhaps things have moved on. Now, you could take the view that you must expand your project to include many more datasets and many more analyses and so on. That quickly gets messy. 

On the other hand; if you say to me "I want to build, from scratch, my own implementation of a neural network to identify people at risk of a stroke", well, that is a much more significant thing. That will convince me you've dealt with all the tricky corner cases and really understood the material.  Honestly you will do much better if you come to me saying "I want to write my own implementation of algorithm X" compared to "I want to build an app that does Y".   


# How to have a great meeting with your supervisor if your supervisor is me. 
These are, of course, my own opinions. 

## Confess by email 
If you haven't done anything since the last meeting, then send me an email that says "Hey, I haven't done anything since the last meeting, can we skip this one?" and I will reply with some variant of the thumbs up emoji. I would rather you did some work, but I would much rather avoid meetings of the form: 

```
Me: how has project work been this week? 
You: I haven't really done any work this week. 
Me: Okay, well I suggest you do some work.  
```

(I'm more polite than this, but it's still a waste of everybody's time). Ideally your confession would be 24 hours before the meeting, but five minutes beforehand is (slightly) better than nothing. 

## Never arrive empty handed. 
The best way of getting value out of a supervisor meeting with me is to arrive with something to talk about.  Early on in your project this is likely to be a paper that you don't understand, or want to generally talk about.  Towards the middle of the project you'll be sending over versions of your code. As we get to the end you'll be sending over drafts of your report.  

When we have something concrete to talk about in the meeting, then I can actually teach you things, or at least adjust your path.  It's also sensible to arrive with a written down list of questions: supervisor meetings are scary. Also, when I say 'arrive with something to talk about' I mean email it over in advance (or, if it's code, have some way of sharing your git repo so I can run it).  

If you are having a code problem, we probably won't have time to look at a large serious example so I will suggest that you make a [Minimal, Complete, Verifiable Example (MCVE)](https://stackoverflow.com/help/minimal-reproducible-example). That is to say, you take a copy of the code that is having the problem, and then you keep taking things away and making more simple until you have a much smaller bit of code that has the same problem. If you do this for long enough you eventually have some code of only a few lines that is showing the problem and that's something we can talk about.  Of course, in doing this process, 90% of the time the problem will become obvious anyway, but that makes it a better idea rather than a worse one.   

### Worry about the art rather than the marks 
A couple of times during our process I'll walk you through the mark scheme for your final (or interim) report and talk to you about how to fit what you are doing into the report. Beyond that, I don't really want you thinking about the marks - you will do much better if you think about talking about your project in your job interviews this summer. A project that you are clearly enthusiastic about in detail is worth far more marks than one that is reverse engineered from the mark scheme.    

