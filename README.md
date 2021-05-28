This is a quick starter project I put together for developing programs for the Motorola 68000 processor using the open-source [vasm](http://sun.hasenbraten.de/vasm/) assembler.

Included is a slightly-messy shell script that will build vasm for you on Linux or Mac OS X systems. Adding Windows support should be trivial and I can add that in if requested. Updates will be made to the script to provide better error checking/graceful failure if something goes wrong.

Make you sure you have `curl`, `gcc`, and `make` installed, run `chmod +X ./build-toolchain.sh` and then run the script to compile vasm for the m68k target with Motorola syntax. It will be available under the `build-tools` directory, and the included Makefile will look for it there by default.

Put all includes in the /src/inc directory. The default main code file is /src/main.asm but you can change the name in the Makefile if needed. Don't forget to set PROJ_NAME in the Makefile to determine the name of your assembled binary file.

To build your project, just run `make clean && make build` from the base directory. Your binary will be located inside the bin/ folder!