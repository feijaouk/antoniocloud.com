---
categories:
    - Training
    - Linux
tags:
    - linux
    - security
    - networking
---

Linux iptables, quick, simple and effective way to block an ip address or subnet range.

## Syntax for Linux iptables command to block or drop an ip address

`iptables -A INPUT -s IP-ADDRESS -j DROP`

## Example for Linux iptables command to block and ip

`# iptables -A INPUT -s 65.55.44.100 -j DROP`

## Example for Linux iptables command to block a port for a specific ip address

`# iptables -A INPUT -s 65.55.44.100 -p tcp --destination-port 25 -j DROP`

## Example to remove or unblock and ip address from the iptables list

`# iptables -D INPUT -s xx.xxx.xx.xx -j DROP`
`# iptables -D INPUT -s 65.55.44.100 -j DROP`

## Remember to safe your iptables!

`# service iptables save`

[source](https://www.cyberciti.biz/faq/how-do-i-block-an-ip-on-my-linux-server/)
