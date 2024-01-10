---
layout: post
title: "From email: todo.txt"
date: "Wed Jan 10 13:22:07 +0000 2024"
---

In 2016 I [published my todo list publicly](https://joereddington.com/2016/08/26/my-to-do-list-is-now-public-and-its-the-most-useful-thing-ive-done-in-years/html) and I still get the occasional email about it. This was today's: 

> I recently came across your todo.txt repository on Github (https://github.com/joereddington/todo.txt). I'm also an enthusiast of the todo.txt format, every time I tried to adopt another framework I ended up returning. Simple is always the most efficient.
> 
> I'm very careful with backups, and my todo.txt files are obviously covered, but I found your solution using git especially elegant. I looked in your other repositories but I didn't find the script that does the synchronization. Would you mind sharing?

I have this line in my crontab:

    */50   7-22 * * *  /home/joe/git/deploytodo.sh

and the script is:

    #!/bin/bash
    
    #Get the directory where the script is located
    script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    
    #Change to the script's directory
    cd "$script_dir"
    
    #Do igor first
    cd igor
    python3 plotPri.py
    cd ..
    
    #TODO directory
    cd todo.txt
    
    #Clear the staging area (unstage all changes)
    git reset
    
    #Add all changes to the staging area
    git add .
    
    #Commit all changes with a commit message
    git commit -m "Update todo list"
    
    #Push changes to the remote repository (replace 'origin' and 'main' wit
    h your remote and branch)
    git push

(Igor is the script that creates the chart: it's [here](https://github.com/joereddington/igor)). 
