.syntax unified 
.cpu cortex-m0plus
.thumb

.section .vectors, "a", %progbits
.word _estack
.word Reset_Handler
.word Default_Handler
.word Default_Handler
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word Default_Handler
.word 0
.word 0
.word Default_Handler
.word Default_Handler
.word _estack
.word Default_Handler
.word Default_Handler
.word Default_Handler
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word 0
.word Default_Handler
.word 0
.word 0
.word Default_Handler
.word Default_Handler
.word 0
.word 0
.word 0
.word Default_Handler
.word 0
.word 0
.word Default_Handler
.word Default_Handler
.word 0
.word 0
.word 0
.word Default_Handler
.word 0
.word 0
.word Default_Handler
.word Default_Handler

.section .text
.global Reset_Handler
.thumb_func
Reset_Handler:
	/*TODO check call convention*/
	/*check neopixel driver*/
	mv r0, 0x00ffffff
	bl neofill
	mv r1, #0
	bl neopixel
Default_Handler:
	b Default_Handler
