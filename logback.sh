#!/bin/bash


yesterday=`date --date='1 days ago' +%Y-%m-%d`
monthday=`date --date='1 days ago' +%Y-%m`
backpath=/mnt/log_backup
tomcatlog=/mnt/tomcat_log
tomcatpath=/opt/apache-tomcat-8.0.26/logs
mailtopath=/home/*****/script/netIO
logtype=(errorlog debug lovebar reward)
liveDay=10
MvErr=7
PackErr=6
UploadErr=5

#catalina log
CataFunc() {
    mv ${tomcatpath}/catalina.out.${yesterday} ${backpath}
    [ -f "${backpath}/catalina.out.${yesterday}" ] || { echo "catalina.out.${yesterday} mv failed" >> ${mailtopath}/${yesterday}.txt; exit ${MvErr}; }
    gzip -9 -c ${backpath}/catalina.out.${yesterday} > ${backpath}/catalina.out.${yesterday}.gz
    [ $? -eq 0 ] || {  echo "packing catalina.out.${yesterday}.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${PackErr}; }
    bypy list catalina/ | grep "^D ${monthday}[^-]" > /dev/null
    [ -$? -eq 0 ] || { bypy mkdir catalina/${monthday}; echo "create remotepath catalina/${monthday}"; }
    bypy upload ${backpath}/catalina.out.${yesterday}.gz catalina/${monthday}
    [ $? -eq 0 ] || { echo "Upload ${backpath}/catalina.out.${yesterday}.gz faild" >> ${mailtopath}/${yesterday}.txt; exit ${UploadErr}; }
    echo "Upload ${backpath}/catalina.out.${yesterday}.gz Success" >> ${mailtopath}/${yesterday}.txt
    rm -f ${backpath}/catalina.out.${yesterday}.gz
}

#access log
AccessFunc() {
    mv ${tomcatpath}/localhost_access_log.${yesterday}.txt ${backpath}
    [ -f "${backpath}/localhost_access_log.${yesterday}".txt ] || { echo "localhost_access_log.${yesterday}.txt mv failed" >> ${mailtopath}/${yesterday}.txt; exit ${MvErr}; }
    gzip -9 -c ${backpath}/localhost_access_log.${yesterday}.txt > ${backpath}/localhost_access_log.${yesterday}.txt.gz
    [ $? -eq 0 ] || {  echo "packing localhost_access_log.${yesterday}.txt.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${PackErr}; }
    bypy list access/ | grep "^D ${monthday}[^-]" > /dev/null
    [ -$? -eq 0 ] || { bypy mkdir access/${monthday}; echo "create remotepath access/${monthday}" >> ${mailtopath}/${yesterday}.txt; }
    bypy upload ${backpath}/localhost_access_log.${yesterday}.txt.gz access/${monthday}
    [ $? -eq 0 ] || { echo "Upload ${backpath}/localhost_access_log.${yesterday}.txt.gz faild" >> ${mailtopath}/${yesterday}.txt; exit ${UploadErr}; }
    echo "Upload ${backpath}/localhost_access_log.${yesterday}.txt.gz Success" >> ${mailtopath}/${yesterday}.txt
    rm -f ${backpath}/localhost_access_log.${yesterday}.txt.gz
}


#tomcat logs
Tomlog() {
    gzip -9 -c ${tomcatpath}/${1}.${yesterday}.log > ${tomcatpath}/${1}.${yesterday}.gz
    [ $? -eq 0 ] || {  echo "packing ${tomcatpath}/${1}.${yesterday}.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${PackErr}; }
    bypy list catalina/ | grep "^D ${monthday}[^-]" > /dev/null
    [ -$? -eq 0 ] || { bypy mkdir catalina/${monthday}; echo "create remotepath catalina/${monthday}" >> ${mailtopath}/${yesterday}.txt; }
    bypy upload ${tomcatpath}/${1}.${yesterday}.gz catalina/${monthday}
    [ $? -eq 0 ] || { echo "Upload ${tomcatpath}/${1}.${yesterday}.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${UploadErr}; }
    echo "Upload ${tomcatpath}/${1}.${yesterday}.gz Success" >> ${mailtopath}/${yesterday}.txt
    rm -f ${tomcatpath}/${1}.${yesterday}.gz
}

#debug log
#reward log
#lovebar log
#error log
morelog() {
    gzip -9 -c ${tomcatlog}/${1}.log-${yesterday} > ${tomcatlog}/${1}.log-${yesterday}.gz
    [ $? -eq 0 ] || {  echo "packing ${tomcatlog}/${1}.log-${yesterday}.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${PackErr}; }
    bypy list ${1}/ | grep "^D ${monthday}[^-]" > /dev/null
    [ -$? -eq 0 ] || { bypy mkdir ${1}/${monthday}; echo "create remotepath ${1}/${monthday}" >> ${mailtopath}/${yesterday}.txt; }
    bypy upload ${tomcatlog}/${1}.log-${yesterday}.gz ${1}/${monthday}
    [ $? -eq 0 ] || { echo "Upload ${tomcatlog}/${1}.log-${yesterday}.gz failed" >> ${mailtopath}/${yesterday}.txt; exit ${UploadErr}; }
    echo "Upload ${tomcatlog}/${1}.log-${yesterday}.gz Success" >> ${mailtopath}/${yesterday}.txt
    rm -f ${tomcatlog}/${1}.log-${yesterday}.gz
}

#clean over 10 days log
DelLog() {
    find ${tomcatpath} -mtime +${liveDay} -name "[c|l]*.log" -exec rm {} \;
    find ${backpath} -mtime +${liveDay} -name "[c|l]*" -exec rm {} \;
    find ${tomcatlog} -mtime +${liveDay} -name "[d|e|l|r|w]*[0-9]" -exec rm {} \;
}

for i in ${logtype[@]}
do
    morelog ${i}
done

Tomlog catalina
Tomlog localhost
CataFunc
AccessFunc
DelLog

#mail report
cat ${mailtopath}/${yesterday}.txt | mail -s "Report ${yesterday}" ******@*****.com
