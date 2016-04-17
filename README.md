# arm_programming_assembly
Pure assembly programming on stm32f407-discovery board

This repo created to record my learning of arm cortex-m f4.
And also hope it can help others.

I decide to use arm assembly langurage for two reasons. 
First, I think assembly it's the way to truly understand a chip
Two, I don't see anybody seriously did it. So, it's a true learning.


Environment:
os: mac os x 10.9.5
board: stm32f4-discovery,ver MB997D, with stm32f407VGT6
toolchain: arm-none-eabi

To install arm toolchain on MAC, use the commands below:
brew tap PX4/homebrew-px4
brew update
brew install gcc-arm-none-eabi

stm32f405.ld is from micropython project with no change.
startup.s is also from micropython's file startup_stm32.S, but simplified to less than 20 lines.
Some lines in Makefile is copyed from micropython's minimal directory.



