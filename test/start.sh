#!/bin/bash

echo "running"
echo $USER 
SID=$(ps -p $$ --no-headers -o sid)
echo pid=$$ ppid=$PPID sid=$SID
ls -lht /proc/$$/fd
echo "err" 1>&2
id
which capsh
capsh --print
./bind
sleep 10
echo "done"

