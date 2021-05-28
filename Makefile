VASM_PATH = ./build-tools/vasmm68k_mot

build:
	$(VASM_PATH) -o ./bin/68ktest.bin -Fbin -no-opt -nosym -chklabels -I./src/inc/ ./src/main.asm

clean:
	rm -f bin/68ktest.bin
