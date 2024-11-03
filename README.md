# 6502 Breadboard Computer

This repository contains code (and schematics and whatever) related to my version of a [Ben Eater inspired](https://eater.net/6502) breadboard computer using the [MOS Technologies 6502](https://en.wikipedia.org/wiki/MOS_Technology_6502) (actually its modern equivalent, the [Western Design Company W65C02](https://www.westerndesigncenter.com/wdc/w65c02s-chip.php), which is still in production as of this writing).

So far, this project is quite minimal and I don't have a definitive plan for what direction I'll be going with it. However, I plan to keep this repository up to date so that users have all resources necessary for reproducing both the computer itself and the code I run on it. Furthermore, I plan to *only* include code here that is released under free and open-source licenses, and thus will avoid including code such as WozMon (assumed copyrighted) or Microsoft BASIC (explicitly copyrighted).

## Building

> [!IMPORTANT]
> Building this code has only been tested in recent releases of Fedora and Ubuntu, but should work for most Linux distributions. Modifications to the build procedure may be required in Windows or macOS.

All of the code in this repository was written for the `ca65` assembler and `ld65` linker, both part of the open-source [`cc65`](https://cc65.github.io/) cross-development package. Once you have this installed, building the code should be as simple as cloning the repo and running `make`:
```console
$ git clone https://github.com/elijahmathews/6502.git
$ cd 6502
$ make
```
You can then use a chip programmer (such as the XGecu TL866II+) combined with a controller application (such as the open-source [Minipro](https://davidgriffith.gitlab.io/minipro/) controller) to write the output `rom1.bin` ROM image to a 28C256 ROM chip.
