#!/bin/bash
#
#A wraper script to use qrsh to run interactive jobs, while setting the env variables
#like a batch job, eg, JOB_ID, NSLOTS, CUDA_VISIBLE_DEVICE, etc.
#
#For ssh app used for rsh_command, and rsh_daemon, add "-t" option to force the 
#pseudo-terminal allocation.
#
#rsh_command                  /usr/bin/ssh -t -o LogLevel=ERROR
#rsh_daemon                   /usr/sbin/sshd -i
#
#-pty y option is for qrsh to force pseudo-terminal allocation. If use ssh as backend, it has no effect then.
#
qrsh -V -pty y "$@" $SHELL
