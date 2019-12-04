---
categories:
    - Linux
    - DNS
tags:
    - Linux
    - DNS
    - bash
    - shell-scripting
    - block advertising
---

Blocking advertising and pops using hosts file

Full script file on github [block-ads-v3.sh](https://github.com/AntonioFeijaoUK/www.antoniocloud.com/blob/master/docs/linux/block-ads-v3.sh)

!!! note
    Remember, do not execute or run what you do not understand, use at your own risk!

```sh
#!/bin/bash

#
# Version 2018-11-09 11:24
# Author #AntonioFeijaoUK
#
# Purpose:	Script to automate the update on /etc/hosts with entries about malicious or advertising domains sites,
# 			so that my computer or DNS-Server resolves these domains to 0.0.0.0, therefore avoiding/blocking the connection.
#
# Result:	"Cleaner" web-pages, safer navigation, faster loading pages as the extra mess/ads will not download.
#
# Updates:
#   2019-02-06 - Updated clean up script  awk '{print $1}'
#


echo -e "\n\n ...initiating LIST var with list of URLs... \n\n"


LIST="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
https://mirror1.malwaredomains.com/files/justdomains
http://sysctl.org/cameleon/hosts
https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist
https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt
https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt
https://hosts-file.net/ad_servers.txt"


#echo ${LIST}

echo -e "\n\n ...going through the list and curl the domains to block... \n\n"

COUNT=1

for URL in $(echo ${LIST}) ; do
  echo -e "\n\n ...curl URL -->  ${URL} ... \n\n"
  curl ${URL} --output "list_${COUNT}.txt"
  COUNT=$(( ${COUNT} + 1 ))
done


echo -e "\n\n ...aggregating and clearing up the lists, removing duplicates... \n\n"

cat -v list_* | grep -v ^# | grep -v ^$ | sed -e 's/\^M//g' | sed s/'127.0.0.1'//g | sed s/'0.0.0.0'//g |  awk '{print $1}' | sed 's/[[:blank:]]//g' | sort | uniq | sort > domains-list-to-block.txt



echo -e "\n\n ...adding 0.0.0.0 to the domains lists to protect from connection to the real IP... \n\n"

for DOMAIN in $(cat domains-lis
```

