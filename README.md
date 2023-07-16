# arm_programming_assembly
Pure assembly (bare-metal) programming on stm32f407-discovery board

This repo created to record my learning of arm cortex-m f4.<br>
And also hope it can help others. <br>

I decide to use arm assembly langurage for two reasons.  <br>
First, I think assembly it's the way to truly understand a chip. <br>
Two, I don't see anybody seriously did it. So, it's a true learning. <br>


Environment: <br>
> os: mac os x 10.9.5 <br>
board: stm32f4-discovery,ver MB997D, with stm32f407VGT6 <br>
toolchain: arm-none-eabi <br>

To install arm toolchain on MAC, use the commands below: <br>
```bash
brew tap PX4/homebrew-px4 
brew update 
brew install gcc-arm-none-eabi
```

Install st-link on MACOS
```bash
brew st-link
```

stm32f405.ld is from micropython project with no change. <br>
startup.s is also from micropython's file startup_stm32.S, but simplified to less than 20 lines. <br>
Some lines in Makefile is copyed from micropython's minimal directory. <br>

# Write to board
```bash
st-flash write startup.elf 0x08000000
```


