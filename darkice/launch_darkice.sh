#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

dir_path=$(dirname $(realpath $0)) #get the current directory for relative paths
# date 2>&1 >> $dir_path/darkice.log &
sleep 30 #wait for 30 seconds to make sure everything is booted up
# arecord -l 2>&1 >> $dir_path/darkice.log &
XDG_RUNTIME_DIR=/run/user/1000 /usr/bin/darkice -c $dir_path/darkice.cfg # 2>&1 >> $dir_path/darkice.log