## Magisk Auto Screenshot Module
A magisk module which takes a screenshot automatically every 10 seconds. This module works purely offline and stores the files on your phone disk. It avoids saving duplicate screenshots and uses `.nomedia` files to avoid flooding your gallery.

## Why?
This is part of a larger initiative to add accountability to my digital life. Additionally, it has been occasionally useful to have access to old screen states for data-loss prevention. Also, as someone with ADHD, it's good to be aware of where my time went after "zoning out". Potentially, in the age of LLMs, this is going to serve even more benefit where we can elicit help on organizing our digital lives from LLMs by giving them access to our digital history (note: always use local LLMs for this, never commercial ones!).

I have a similar script running on my XFCE desktop, see: https://github.com/SimonBaars/xfce-auto-screenshot

## Requirements
An Android phone which runs Magisk. It should be compatible with pretty much any Android version.

## Installation
Download the zip from here: https://github.com/SimonBaars/magisk-auto-screenshot/releases/tag/1.0

Flash the zip using Magisk. Reboot when Magisks prompts you to.

## How to use
Check the `Screenshots` folder in the root of your system's storage. It should contain a screenshot for every 10 seconds you've been using your phone.
