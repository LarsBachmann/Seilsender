#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

date 2>&1 >> ./darkice.log &
arecord -l 2>&1 >> ./darkice.log &
sleep 30
XDG_RUNTIME_DIR=/run/user/1000 /usr/bin/darkice -c ./darkice.cfg