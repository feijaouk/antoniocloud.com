# AWS list of services in command line


`curl https://awspolicygen.s3.amazonaws.com/js/policies.js | sed '1s/[^=]*=//' | jq '[.serviceMap[].StringPrefix]' |
grep \" | sed 's/\"//g' | sort | uniq`

