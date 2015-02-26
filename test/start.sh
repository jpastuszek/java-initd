#!/bin/bash

echo "running"
echo $USER 
SID=$(ps -p $$ --no-headers -o sid)
echo pid=$$ ppid=$PPID sid=$SID
echo '  PID  PPID  PGID   SID COMMAND'
ps xao pid,ppid,pgid,sid,comm | grep $$
pstree --show-pids --uid-changes $USER
ls -lht /proc/$$/fd
echo "err" 1>&2
id
which capsh
capsh --print
./bind
echo 'after bind'
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
sleep 1
echo "done"

