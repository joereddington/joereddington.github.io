---
layout: post
title: "Factory Reset"
date: "Tue Jan 07 15:17:22 +0000 2025"
---

My [Ubuntu machine](http://joereddington.com/2023/07/05/pc.html) was [not working properly](https://askubuntu.com/questions/1537327/oh-NO-something-has-gone-wrong-a-problem-has-occured-and-the-system-cant-reco) so I reinstalled the operating system. This most is mostly my notes for when I do it next time (and indeed, I'm still updating it in March with libraries and bits of software I missed) 

Because I use [Finder Zero](https://joereddington.com/2021/01/28/Finder-Zero-You-use-far-fewer-files-than-you-think,-so-stop-hoarding-them.html) it was relatively simple but still took a while. 

# Prep
First, I [properly did a backup](https://joereddington.com/2024/10/01/backup.html).  

One of the hard drives in the machine is a backup drive anyway (to the extent that I normally don't bother to mount it). I've got it backed up to an external drive anyway but I don't intend to touch it for this format/install (It was nvme1n1, but it became nvme0n1 during this process, which worried me a bit because I thought those were constant identifiers. 

I also have a script called 'blackbox' that I wrote in November 2023. It gathers a bunch of configuration files from all over the system and copies them into a folder that gets securely backed up.   I run it every so often and I made sure it was up to date.  I put it on a different usb stick. (I should probably do something much neater with symbolic links)  

(Later edit: I should have been a bit more careful about where my ssh keys are)  

# Install device 
Next I made a install device. I have a 250GB USB stick and I'll use [these commands](https://askubuntu.com/a/377561/49853) to make it happen: 

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

# Setting up
Setting up took a while, but part of that was writing better notes. The rest of this post is mostly so I can refer to it later. 

## Basics
```bash
setxkbmap us # For my particular keyboard
sudo vim /etc/default/keyboard  # Change default keyboard (I probably don't need both these commands) 
```

## Check to see if the large backup drive is okay
```bash
lsblk
mkdir bigdisk
sudo mount /dev/nvme0n1p1 bigdisk/
ls bigdisk/
```

## Install Git 
```bash
sudo apt install git
mkdir git
cd git/
```

## Getting ssh working

```
sudo apt install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
```

Next: sshing from laptop requires removing the existing key; the next connection will ask to add the new key. 

## Blackbox 
I copied blackbox over via USB Stick - I could probably do scp in future.

```bash
cp .git-credentials ../../
git config --global credential.helper store
ln -s thegitconfigfile ~/.gitconfig
cd 
```

## Install Vim

```bash
cd 
cd git
sudo apt install vim
sudo apt install vim-gtk3 # Existing vim doesn't come with +clipboard
vim --version | grep clipboard
git clone --depth 10 https://github.com/joereddington/dotvimdirectory 
cd dotvimdirectory/
more setup.sh  # reminding myself what this does
echo $HOME # Checking
./setup.sh  
vim  # Some testing
cd
```

Remember to add a symbolic link to the .bashrc and .bash_profile

```bash
cd
ln -s ~/.vim/bashrc .bashrc
ln -s ~/.vim/bash_profile .bash_profile
cd 
```

## i3
Installed from [this website's instructions](https://i3wm.org/docs/repositories.html).

```bash
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2024.03.04_all.deb keyring.deb SHA256:f9bb4340b5ce0ded29b7e014ee9ce788006e9bbfe31e96c09b2118ab91fca734
sudo apt install ./keyring.deb # This gives a strange message because it recognizes the keyring.deb as another file
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt install i3
cd git
git clone --depth 5 https://github.com/joereddington/i3config # But there isn't a config file to put it in until you relaunch
sudo apt install rofi # The i3 config specifies rofi as the launcher, so you have to install it
cd 
```

* Now log out and log in again. Accept the "generate a config" option or you will get confused with controls.
* At this point, I plugged in the other monitor and rebooted.

## Not command line stuff
* Firefox and other logins 
* Install Spotify and Darktable from Snap

## Setup personal blog
```bash
cd git
git clone --depth 5 https://github.com/joereddington/joereddington.github.io
cd
```

## Audio 
I start by playing an audio video in YouTube. 

```bash
sudo apt install pulseaudio
pactl list short sinks
pactl load-module module-alsa-sink device=hdmi:CARD=NVidia,DEV=0
pactl set-card-profile alsa_card.pci-0000_01_00.1 output:hdmi-stereo-extra1
pactl list short sinks
pactl set-default-sink 123A #music starts coming from youtube
paplay --device=alsa_output.hdmi_CARD_NVidia_DEV_0 /usr/share/sounds/alsa/Front_Center.wav
```


## My todo: 
```bash
git clone --depth 10 https://github.com/joereddington/todo.txt/
git clone --depth 10 https://github.com/joereddington/igor
cd igor
python3 -m venv venv
source venv/bin/activate
pip3 install numpy
pip3 install matplotlib
deactivate 
cd ..
./deploytodo.sh
```

## Public History 

```bash
git clone --depth 10 https://github.com/joereddington/historycode
cd historycode/
git submodule update --init --recursive
cd site/
git status
git branch
git checkout main #it checks out headless by default
mkdir databases #needs this directory to exist
vim localdeploy.sh #you need to change the location of the database to whatever firefox is using
python3 -m venv venv
source venv/bin/activate
pip3 install matplotlib
pip3 install pandas
pip3 install pytz
./deploy.sh 
```

# Extra
```bash
sudo apt install xclip # for pasting images into posts
sudo apt install texlive-full
sudo apt install universal-ctags 
sudo apt install xdotool #for delores
sudo apt install screen
sudo apt install libreoffice
cd git
git clone https://github.com/fboender/multi-git-status
```

## Things I fixed during this process
* i3config now includes the shortcut for copyq
* My 'blackbox' script is significantly upgraded
* Xmodmap is now working in the correct place. 
* I started using proper python virtual environments (I think I was forced into this a little)  

## Things that I accidentally fixed with a reinstall
* My ```jekyll serve``` commands are working again, so that's cool. 
* The printer is working!  
* I believe I've fixed the ongoing audio issue


## Next time 
* Put all the ```sudo apt install``` and ```git clone --depth``` commands and put them in a little script in blackbox. Some of them take a while. 
* Keep a stronger eye on which system config files I edit. 
* I will remember to set up duel boot to windows: it was periodically useful to have that option
