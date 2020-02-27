---
date: 2020-02-19
last_modified_at: 2020-02-20
categories:
    - Linux
    - Networking
tags:
    - linux
    - bash
    - shell-scripting
    - networking
    - wireshark
---

See how to find the package you will need to install for the command you are looking for. Example, I was looking for the `tshark` command, but a simple `yum search tshark` was not returning any results. See how I found the linux command.

I ran this on a EC2 instances `Amazon Linux v2`, I wanted to run the command `tshark` but this was not available.

So, I searched for it with `yum search tshark` and package was not found.

A did quick research online and found in [here](https://www.question-defense.com/2010/03/07/install-tshark-on-centos-linux-using-the-yum-package-manager) a command that almost got forgotten!

`yum whatprovides {COMMAND}`

I decided to write this article to remind me of this command and it might be useful for you too.

![yum whatprovides tshark](/assets/images/tshark-install-yum-whatprovides.jpg)

Try with other commands. Was this useful to you?

Happy learning!

Antonio
