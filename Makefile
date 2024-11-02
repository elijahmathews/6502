all: main.o rom1.bin

main.o:
	ca65 src/main.s -o main.o

rom1.bin: main.o
	ld65 -C src/memory.cfg -o /dev/null main.o

clean:
	rm main.o
	rm rom1.bin
