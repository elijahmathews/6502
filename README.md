# 6502 Breadboard Computer

This is a repo containing code (and schematics and whatever) related to my [Ben Eater inspired](https://eater.net/6502) breadboard computer using the [MOS Technologies 6502](https://en.wikipedia.org/wiki/MOS_Technology_6502) (actually its modern equivalent, the [Western Design Company W65C02](https://www.westerndesigncenter.com/wdc/w65c02s-chip.php), which is still in production as of this writing).

This project is currently pretty empty (as you can see), and I'm not entirely sure where I'll be taking this! I will likely begin this very similar to Ben Eater's 6502 computer, but I will likely try to make some alterations as I see fit.

## Assembling

The code in this directory was written for the `ca65` assembler, part of the [`cc65`](https://cc65.github.io/) cross-development package. To assemble this code and link this code, you can then run this single line after cloning the repo:
```console
$ ca65 src/*.s && ld65 -C src/memory.cfg -o /dev/null src/*.o
```
You can then use a chip programmer (combined with a controller such as [Minipro](https://davidgriffith.gitlab.io/minipro/)) to write the output `rom1.bin` ROM image to a 28C256 ROM chip.
