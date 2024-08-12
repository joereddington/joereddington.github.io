---
id: 6542
title: Simple photo import script
date: 2018-12-27T11:31:29+00:00
author: Joe Reddington
layout: post
guid: http://joereddington.com/?p=6542
categories:
  - Uncategorized
---
I&#8217;ve been taking photos with my DSLR, and filling up memory cards.

I want to quickly import the photos onto my computer at home, and there are lots of bits of software that are available to use for that. But it also seems like overkill.  I&#8217;ve got a simple script instead that I thought I&#8217;d share:

&nbsp;

<pre>#!/bin/bash
cd "/Volumes/NIKON D7000/DCIM/103D7000"
mkdir ~/CameraStorage/import_$(date +"%F")
mkdir ~/CameraStorage/import_$(date +"%F")/protected
mkdir ~/CameraStorage/import_$(date +"%F")/normal
find . -type f -flags +uchg -name "*.NEF" -exec cp {} ~/CameraStorage/import_$(date +"%F")/protected \; 
find . -type f -flags +nouchg -name "*.NEF" -exec cp {} ~/CameraStorage/import_$(date +"%F")/normal \;

</pre>

Updated later to be: 
<pre>
#!/bin/bash
SCRIPT_DIRECTORY=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$(dirname "$0")"
year=2022
cd $year 
mkdir import_$(date +"%F")
mkdir import_$(date +"%F")/protected
mkdir import_$(date +"%F")/normal

cd "/Volumes/NIKON D7000/DCIM/106D7000"
find . -type f -flags +uchg -name "*.NEF" -exec cp {} "$SCRIPT_DIRECTORY/$year"/import_$(date +"%F")/protected \; 
find . -type f -flags +nouchg -name "*.NEF" -exec cp {} "$SCRIPT_DIRECTORY/$year"/import_$(date +"%F")/normal \;
</pre>



The only interest bit of this is the uchg flag &#8211; that&#8217;s the one that is set on the camera when I protect a photo.

As I get better at photography I might improve this a bit. 


# 2024 edit. 

The script now looks like this: 

<pre> 

#!/bin/bash
SCRIPT_DIRECTORY=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIRECTORY
cd "$(dirname "$0")"
echo "$(dirname "$0")"
year=$(date +%Y)

if [ ! -d "$year" ]; then
  mkdir "$year"
  echo "Created folder: $year"
else
  echo "Folder already exists: $year"
fi
cd $year 

import_dir="import_$(date +"%F")"
if [ ! -d "$import_dir" ]; then
  mkdir "$import_dir"
  echo "Created directory: $import_dir"
else
  echo "Directory already exists: $import_dir"
fi


# Change to the target directory where the photos are located
cd "/media/joe/NIKON D7000/DCIM/106D7000" || { echo "Directory NOT found"; exit 1; }


# Copy .NEF files to the import directory
find . -type f -name "*.NEF" -exec cp {} "$SCRIPT_DIRECTORY/$year/$import_dir/" \;

# Copy .xmp files to the import directory
find . -type f -name "*.xmp" -exec cp {} "$SCRIPT_DIRECTORY/$year/$import_dir/" \;
</pre>

You can see I've got a bit more careful about how I run my scripting over the years. 

