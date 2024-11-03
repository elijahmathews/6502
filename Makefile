all: math.o main.o rom1.bin

math.o:
	ca65 src/math.s -o math.o

main.o:
	ca65 src/main.s -o main.o

rom1.bin: math.o main.o
	ld65 -C src/memory.cfg -o /dev/null math.o main.o

clean:
	rm math.o
	rm main.o
	rm rom1.bin
