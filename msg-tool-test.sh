#!/bin/bash

$MSGTOOL_EXEC=/root/lei/study/pipe_test/msgtool
#$MSGTOOL_EXEC=./msgtool

echo current direction is `pwd`
echo -------------------------------------
$MSGTOOL_EXEC s 1 Message 1.1
./msgtool s 1 "Message 1.1"

cd ..
echo Now we are in `pwd`
echo -------------------------------------
./pipe_test/msgtool s 1 "Message 1.2"
./pipe_test/msgtool s 2 "Message 2.1"
./pipe_test/msgtool r 1
./pipe_test/msgtool r 2
./pipe_test/msgtool r 1
./pipe_test/msgtool d
#$MSGTOOL_EXEC d
