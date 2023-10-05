---
layout: post
title: "Git problems"
date: "Wed Sep 20 07:22:37 +0100 2023"
---


I did three Git things today.

I took my work diary out of my personal website (so that I can write more detailed notes about urls and amounts and names).  In the process I got to use these two cool git commands: 


    git filter-branch --subdirectory-filter diary -- --all
    git filter-branch --tree-filter 'rm -rf diary' --prune-empty HEAD

The first one makes a subdirectory into the main root of the repo and discards everything else. It's amazing. The second runs a command that deletes the diary folder and removes all now empty commits(!)


Then I sat down to improve my git knowledge generally with the fun took [git gud](https://github.com/benthayer/git-gud). It was lots of fun until it suddenly ran out of levels - the repo hasn't been updated in three years either so it doesn't look like more levels will come. I still learned a reasonable amount. 

Lastly, armed with my new git-fu, I set about tidying up my ~/git directory - which in theory is completedly synced to GitHub but in practice has all manner of untracked files and uncommitted changes.  Of the 41 repos only about 15 where clean (I check with the tool [multi-git-status](https://github.com/fboender/multi-git-status) and I managed to deal with all but three of the rest. Those three had interesting bugs, because to my eyes they looked completely fine but multi-git-status was complaining.

So this is my output from mgitstatus -e -f 

```
joe@joe-Amd-Am4-Home-Office:~/git$ ./checkrepos 
./et-subtitle-player: Needs upstream (._vtt) 
./showcuts: Uncommitted changes 
./js-ttd: Needs upstream (main) 
fatal: '/Users/joe2021/git/export-history/' does NOT appear to be a git repository
fatal: Could NOT read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
joe@joe-Amd-Am4-Home-Office:~/git$ 
```

However, subtitle-play has no branches called ._vtt (I have one called vtt),  the showcuts repo is entirely clean, and I can find nothing different about the export history repo.   

The showcuts and et-subtitle-player problems were solved by deleting the repos and cloning them again from remote.  

That didn't work on the export-history one.  What worked for the export history one (after a large number of wrong turns was adding debug statements to the mgitstatus script that revealed the problem was actually in another directory: at one point on another machine (before copying the whole directory to the current desktop) I'd cloned a repo locally from export-history:


```
joe@joe-Amd-Am4-Home-Office:~/git/small_export$ git remote -v
origin  /Users/joe2021/git/export-history/ (fetch)
origin  /Users/joe2021/git/export-history/ (push)
```
The error message was telling me that the old remote location NO longer worked for fetching (I should have noticed earlier that the path it was complaining about wasn't actually on my machine). 


Of course, now I understand the problem, the error message makes much more sense. :D 





