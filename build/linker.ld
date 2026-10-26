MEMORY 
{
	FLASH (rx) : ORIGIN = 0x2000, LENGTH = 256K - 0x2000 /*factory bootloader at 0 length 0x2000*/
	RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 32K
}

_estack = ORIGIN(RAM) + LENGTH(RAM);

SECTIONS
{
	.vectors : 
	{
		. = ALIGN(4);
		KEEP(*(.vectors))
	} > FLASH
	.text :
	{
		. = ALIGN(4);
		*(.text*)
		*(.bss) 
	} > FLASH
}
