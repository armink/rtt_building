# Building RT-Thread in Cloud9
This article introduces how to prepare a RT-Thread building environment in Cloud9 VM.

## Prepare toolchains

Please fork this git in your github. And then please clone your git repo in Cloud9. 

When booting up your Cloud9 VM first time, you should use following command in Cloud9 terminal to prepare RT-Thread code and toolchains:

    sh prepare.sh

## Build RT-Thread

After prepare the code files of RT-Thread and toolchains, you can build the RT-Thread easily by following command: 

    source ./env.sh 

(Please run it under `/home/ubuntu/workspace` directory)

Then build the bsp, for example, the LPC408x bsp:

    cd /home/ubuntu/workspace/rt-thread/bsp/lpc408x
    scons

When you see the result:

    ... 
    CC build/kernel/src/thread.o
    CC build/kernel/src/timer.o
    LINK rtthread-lpc408x.elf
    arm-none-eabi-objcopy -O binary rtthread-lpc408x.elf rtthread.bin
    arm-none-eabi-size rtthread-lpc408x.elf
       text    data     bss     dec     hex filename
      88404    1268    6792   96464   178d0 rtthread-lpc408x.elf
    scons: done building targets.

OK, RT-Thread has been compiled successfully.
