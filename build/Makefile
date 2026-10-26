FILE ?= main.uf2
build: convuf2
		
assemble: main.S
	arm-none-eabi-as -mcpu=cortex-m0plus -mthumb main.S -o main.o
link: assemble main.o
	arm-none-eabi-ld -T linker.ld main.o -o main.elf
convbin: link main.elf
	arm-none-eabi-objcopy -O binary main.elf main.bin
convuf2: convbin uf2conv.py uf2families.json main.bin
	python uf2conv.py -c -b 0x2000 -f 0x68ED2B88 -o $(FILE) main.bin
