#!/bin/bash

#java -jar -Xms512m -Xmx512m -Xss350k -Dspring.profiles.active=beta -Dexternal.config.path="/var/install/zaakpay/config/application.properties" -DlogPath=/opt/app/logs/ -Dport=8080 -Duser.timezone="Asia/Kolkata" /var/install/zaakpay/zaakpay-lead-service-0.0.1.jar

java  -XX:+PrintGCDetails -Xms2048m -Xmx3072m -d64 -XX:+UseCompressedOops -XX:+IgnoreUnrecognizedVMOptions -Dhttp.maxConnections=256 -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath="/var/logs/heap/heap-OOMHeapExample.bin" -XX:ErrorFile="/var/logs/error.txt" -javaagent:/opt/app/newrelic/newrelic.jar -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCTimeStamps -XX:+PrintGCCause -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=5 -XX:GCLogFileSize=5M -XX:+UnlockCommercialFeatures -XX:+FlightRecorder -XX:StartFlightRecording:defaultrecording=true,dumponexit=true,dumponexitpath=/var/logs/,disk=true,maxage=7d,maxsize=2G,repository=/var/logs/ -jar -Dspring.profiles.active=prod -Dexternal.config.path="/var/install/zaakpay/config/application.properties" -DlogPath=/opt/app/logs/ -Dport=8080 -Duser.timezone="Asia/Kolkata" /var/install/zaakpay/zaakpay-lead-service-0.0.1.jar

tail -f /dev/null
