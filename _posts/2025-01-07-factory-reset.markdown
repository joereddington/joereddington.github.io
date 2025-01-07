---
layout: post
title: "Factory Reset"
date: "Tue Jan 07 15:17:22 +0000 2025"
---

My Ubuntu machine isn't working properly so I'm going to reinstall the operating system.  Hopefully, because I use [Finder Zero](https://joereddington.com/2021/01/28/Finder-Zero-You-use-far-fewer-files-than-you-think,-so-stop-hoarding-them.html) and keep fairly good notes it will be easy enough.   Actually the point of this post is to make much better notes for next time.  I had a hard drive fail about a year ago and I'm working through those notes. 

# Prep
First, I [properly did a backup](https://joereddington.com/2024/10/01/backup.html).  As it happens, one of the hard drives in the machine is a backup drive anyway (to the extent that I normally don't bother to mount it). I've got it backed up to an external drive anyway but I don't intend to touch it for this format/install (It was nvme1n1, but it became nvme0n1 during this process, which worried me a bit because I thought those were constant identifiers. 

I also have a script called 'blackbox' that I wrote in Novemember 2023. It gathers a bunch of config files from all over the system and copies them into a folder that gets securely backed up.   I run it every so often and I made sure it was up to date.  I put it on a different usb stick. 

# Install device 
Next I make a install device. I have a 250GB USB stick and I'll use [these commands](https://askubuntu.com/a/377561/49853) to make it happen: 

```
wget https://releases.ubuntu.com/24.04.1/ubuntu-24.04.1-desktop-amd64.iso?_ga=2.80555220.278495081.1736263692-463090378.1736150188
sudo dd if=/path/to/ubuntu.iso of=/dev/sdX bs=4M && sync
```

(I did this from inside Ubuntu) 

# Installing
I changed the boot order in BIOS and started the install. 

![Choosing to Install](/assets/images/choosetoinstall0107.png)

Remembering to choose the correct drive.  
![Remembering to choose the correct drive](/assets/images/choosetherightdrive0107.png)

The actual installation took less than 20 minutes.




