#!/bin/bash
sudo /home/ec2-user/tomcat/bin/startup.sh 1> /dev/null 2>&1 &
echo $! > pid.file
