#!/bin/bash

ips=/tmp/filterip.tmp
logfile=/var/log/secure*

grep "Accepted" $logfile | grep -o "[0-9]\{1,3\}\(\.[0-9]\{1,3\}\)\{3\}" | sort -n|uniq -c | sort -rn > $ips

cat $ips | while read line
do
    times=`echo $line | awk '{print $1}'`
    ip=`echo $line | awk '{print $2}'`
    recv=`curl -s "http://ip138.com/ips138.asp?ip=${ip}&action=2"| iconv -f gb2312 -t utf-8 | grep -o "：[^<]*" | head -1 | sed 's/.//1'`
    echo $times " " $ip " " $recv
done

rm -f $ips
