---
title: "Install and connect SSH to a Raspberry Pi without monitor"

date: 2020-11-18
last_modified_at:

categories:
    - Linux
    - Raspberry Pi
tags:
    - linux
    - raspberry pi
    - ssh
    - dd
---

To install and connect to a Raspberry Pi with a monitor can be done!

I will be using the `dd` command to install the [Raspberry Pi OS](https://www.raspberrypi.org/software/operating-systems/).

* Step 1 - Download

- Download the [Raspberry Pi OS](https://www.raspberrypi.org/software/operating-systems/) version you need.

* Step 2 - Unzip

- Unzip the [Raspberry Pi OS](https://www.raspberrypi.org/software/operating-systems/) version you download.

* Step 3 - Copy

Copy the [Raspberry Pi OS](https://www.raspberrypi.org/software/operating-systems/) into the micro sdcard.

> **IMPORTANT** - this step will `delete everything in the SD card` - make sure you know what you are doing!

I am using the `dd` command

`sudo dd bs=1m if=path_of_your_image.img of=/dev/rdiskN; sync`

other ways to install are describe in here - https://www.raspberrypi.org/documentation/installation/installing-images/README.md

