all: math.o main.o rom1.bin

math.o:
	ca65 src/asm/lib/math.s -o math.o

main.o:
	ca65 src/asm/crt0.s -o crt0.o

rom1.bin: math.o main.o
	ld65 -C memory.cfg -o /dev/null math.o crt0.o

clean:
	rm math.o
	rm crt0.o
	rm firmware.bin 
