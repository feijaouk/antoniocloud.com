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

for DOMAIN in $(cat domains-list-to-block.txt); do
	echo "0.0.0.0   ${DOMAIN}" ;
done > new_hosts.txt

#echo -e ""
#cat new_hosts_temp.txt | sed s/\r//g > new_hosts.txt


echo -e "\n\n ...initiation /etc/host file with original and personalised entries... \n\n"

cat /etc/hosts_ORIGINAL > /etc/hosts

echo -e "\n\n ...adding the new list of domains to protect into /etc/hosts ... \n\n"

cat new_hosts.txt >> /etc/hosts


#
# echo "Flushing DNS Mac cache..."
# source https://coolestguidesontheplanet.com/clear-the-local-dns-cache-in-osx/

# all other versions (newer)
#killall -HUP mDNSResponder

# version 10.10.0 - 10.10.3
#discoveryutil mdnsflushcache

# version 10.5 - 10.6
#dscacheutil -flushcache


echo -e "\n\n ...flushing existent dns cache... \n\n"

dscacheutil -flushcache  && echo "OK dscacheutil" || echo "NOK dscacheutil"

killall -HUP mDNSResponder && echo "OK mDNSResponder" || echo "NOK mDNSResponder"

ResetMacDNSCache && echo "OK ResetMacDNSCache" || echo "NOK ResetMacDNSCache"





echo -e "\n\nScript $0 completed ... \n\n\n"
