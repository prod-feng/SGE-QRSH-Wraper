# SGE-QRSH-Wraper

For SGE (sun Grid Engine) users, when your use qlogin and qrsh to run interactive jobs, 
the process you get on the work node has not set the SGE runtime environment(like SGE_*,JOB_ID,etc), also like 
CUDA_VISIBLE_DEVICE, DISPLAY env variables, which are all set prperly for batch jobs automatically.

To get these env variables to be set as a batch job does, you can use the qrsh, following a shell command.
Then you can use

````text
qrsh -V -pty y -q gpu.q $SHELL
````

If your sconf set rsh_daemon and rsh_command to use ssh, then you can set rsh_command with "-t" option, to be:
````text
rsh_command                  /usr/bin/ssh -t
````

then, "qrsh -V  -q gpu.q $SHELL" should still work as the above(the -pty y does not affect here since it is set to use ssh).

You can write a script to wrap the qrsh command above.



