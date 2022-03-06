---
title: Extracting all of the postcodes from your text message history
---

_Review note: this is an interesting post because it is definitely note something I would do this way now, nor is it something I'd consider worth blogging about, but I'm keeping it as a reminder of how I thought in 2016_ 

I’ve always wanted an app that could scan through your SMS history and pull out the addresses that people have sent you over the years. It would be really handy for travelling, posting surprise presents and checking to see, for example, if anyone you knew lived near a place you were going.

For [this post](http://joereddington.com/5781/2016/04/03/live-notes-adjusting-responses-from-apple-watch.../), I extracted all the SMS messages from my iPhone, so it occurred to me I could do the next best thing.

If you'd like to repeat this work - I'm using OSX and I extracted the iPhone messages with iExplorer into CSV files.   I'm also using UK postcodes which have a particular structure:

> The structure of a postcode is a one or two-letter [postcode area](https://en.wikipedia.org/wiki/List_of_postcode_areas_in_the_United_Kingdom "List of postcode areas in the United Kingdom") code named for a local town or area of London, one or two digits signifying a district in that region, a space, and then an arbitrary code of one number and two letters. For example, the postcode of the [University of Roehampton](https://en.wikipedia.org/wiki/University_of_Roehampton "University of Roehampton") in London is SW15 5PU, where SW stands for south-west London. The postcode of [GCHQ](https://en.wikipedia.org/wiki/GCHQ "GCHQ"){.mw-redirect} is GL51 0EX, where GL signifies the postal town of [Gloucester](https://en.wikipedia.org/wiki/Gloucester "Gloucester").
> 
> ([from](https://en.wikipedia.org/wiki/Postcodes_in_the_United_Kingdom) wikipedia)

To match postcodes I'm using this regular expression:

> \[A-Z\]\[0-9\]* \[0-9\]\[A-zA-Z\][a-zA-Z]

Alert readers will notice that that's a little off, but it works for these purposes.

With that regular expression all you need to do to extract all of the postcodes you've ever been sent is to run this command in the root of the folder that you extracted your SMS messages to.

> grep '\[A-Z\]\[0-9\]\* \[0-9\]\[A-zA-Z\][a-zA-Z]' \*.csv > codes.csv

The results need a small amount of clearing up (I'm afraid I'm going to avoid sharing all of my friend's address here), but it worked, I now I have a handy set of postcodes, which makes it much easier to surprise friends with presents.
