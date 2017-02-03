# openocd for STM32

This repository proposes some scripts on top of openocd to flash and debug seamlessly official STM32 development board
(Nucleo, Discovery and Eval series)

## Prerequistites
- Functional gdb

## Quick install and use

### Install opencod
- `$ ./bootstrap`
- `$ ./configure --enable-maintainer-mode --enable-stlink`
- `$ make`

### Load scripts
- Update setlocal.sh script with your local path to arm gdb, then source local script
- `$ source setlocal.sh`

### Flash your board
- Plug your STM32 board to any available USB port
- For a STM32 L4 board (eg: nucleo_l476rg)
- `$ stm32_flsh l4 binary.bin`

### Debug
- For a STM32 L4 board (eg: nucleo_l476rg)
- `$ stm32_dbg l4 binary.elf`

## About

### Supported STM32 families
This version support following families:
- F1, F2, F3, F4, L0, L1, L4

### openocd
Current openocd version is 0.10.0.
Check [README](https://github.com/openocd-stm32/README) for more information

## Credits
Thanks to @jamike for his initial work and support
