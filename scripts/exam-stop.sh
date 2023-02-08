#!/bin/bash
filename=pid.file # pid.file에 있는 값을 filename 변수에 넣어준다.
pid=`cat $filename` # filename 변수의 값을 출력해서 pid에 저장한다.
kill $pid # 프로세스 삭제
cp /dev/null filename # filename 변수를 초기화
sudo /home/ec2-user/tomcat/bin/shutdown.sh
