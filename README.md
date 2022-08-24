# Simple Game Boy Assembly Examples

This is a collection of simple examples for learners of assembly for the Nintendo Game Boy. They are meant to be primarily single-file examples with minimal dependencies which can be built easily to demonstrate commonly used hardware features of the platform. These are not meant to be good examples of how to structure/build complex projects or comprehensive tutorials.

I hope someone finds them useful!

A simple batch file (Windows) and bash script (GNU/Linux) are provided for quick conversion/assembly/linking/fixing of the examples. They require [RGBDS](https://rgbds.gbdev.io/) to be accessible, either installed somewhere in the path or copied locally. Please see the [RGBDS installation instructions](https://rgbds.gbdev.io/install) for more information on installing RGBDS.

# Building the Examples

To build an example, navigate to a given example's directory, such as `/src/background-tile`, and run:

- Windows: `..\build.bat background-tile.asm`
- Linux: `../build.sh background-tile.asm`

The example should assemble/link/fix, creating a ready-to-run ROM. Symbol and map files will also be generated alongside the ROM file. Some examples include PNG assets which will be converted to 2bpp binary files and/or tilemaps.

# Helpful Resources

- [Pandocs](https://gbdev.io/pandocs/) - The main resource for details on the Game Boy hardware
- [hardware.inc](https://github.com/gbdev/hardware.inc) - The repository for the hardware.inc file (which still gets updates!)
- [GB ASM Tutorial](https://eldred.fr/gb-asm-tutorial/) - A modern and thorough tutorial teaching Game Boy assembly in much greater detail than these examples ever will
- [Awesome Game Boy Development](https://github.com/gbdev/awesome-gbdev) - A curated list of awesome resources for Game Boy development

# Examples

| Name              | Description                                                           |
|-------------------|-----------------------------------------------------------------------|
|background-tile    | Show a single background tile                                         |
|background-tilemap | Show a background tilemap                                             |
|sprite             | Show two sprites manually copied to OAM RAM                           |
|oamdma             | Show 40 sprites copied using OAM DMA                                  |
|vblank             | Use the vblank interrupt to limit main loop speed with an animation   |
|joypad             | Poll the joypad and display the button states                         |

# License

The code in this repository is licensed under the [CC0](https://creativecommons.org/publicdomain/zero/1.0/) license. *To the extent possible under law, all copyright and related or neighboring rights to code presented within simple-gb-asm-examples have been waived. This work is published from Canada.*
