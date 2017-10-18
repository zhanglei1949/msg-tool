# msg-tool
msg-tool is wrapper of Message Queue on linux, which can be used interactively on shell and scripts. The source code is mainly from 《Linux网络编程》. I want to grow it into a stronger tool.

# TODO
## Enable different Message types
Currently only strings are supported
## Enable Multiple Message queue
Now it only support one queue for each directory. I.e. if you change your working directory in the shell enviroment, you can not access the queue you used before.

# Installation
```
gcc -o msg-tool msg-tool.c
```
Run `msg-tool-test.sh` for test.

# Usage 

`msgtool s <type> <message test>` to send messages. It will automatically create one if this is none queues.
`msgtool r <type>` to receive the message and print it on stdout.
`msgtool d ` to delete the message queue in this directory.
`msgtool m <octal mode>` to change the access mode.
