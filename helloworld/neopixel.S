.syntax unified 
.cpu cortex-m0plus
.thumb
//XXX CLEAR XXX
.equ MASK_1 0x1
.equ MASK_2 0x3
.equ MASK_3 0x7
.equ MASK_4 0xf
.equ MASK_5 0x1f
.equ MASK_6 0x3f
.equ MASK_7 0x7f
.equ MASK_8 0xff
//XXX SYSCTRL XXX
.equ SYSCTRL, 0x40000800
.equ DFLLCTRL,0x24
.equ DFLLCTRL_ENABLE, 1
.equ DFLLCTRL_ENABLE_ON, 0x1
.equ DFLLVAL, 0x28
.equ DFLLVAL_FINE, 0
.equ DFLLVAL_COARSE, 10
.equ DFLLVAL_DIFF, 16


//XXX GCLK XXX
.equ GCLK, 0x40000400
.equ CLKCTRL, 0x2
.equ CLKCTRL_ID, 0
.equ CLKCTRL_ID_SERCOM5CORE
.equ CLKCTRL_GEN, 8
.equ CLKCTRL_ENABLE, 14
.equ GENCTRL, 0x4
.equ GENCTRL_ID, 0
.equ GENCTRL_DIVSEL, 20
.equ GENCTRL_SRC, 8
.equ GENCTRL_ENABLE, 8
.equ GENDIV, 0x8
.equ GENDIV_ID,0
.equ GENDIV_DIV,8

.equ GCLK_DFLL48M_REF, 0x0

.equ GCLK_OSCULP32K_SRC, 0x5


//XXX GPIO XXX
.equ PORTA_BASE, 0x41004400 //base
.equ PORTB, 0x41004480
.equ BTNACONFIG, 0x5c

.equ DIRREG, 0x00 //DIR
.equ DIRCLR, 0x04
.equ DIRSET, 0x08 
.equ DIRTGL, 0x0C

.equ OUTREG, 0x10 //OUT
.equ OUTCLR, 0x14 
.equ OUTSET, 0x18 
.equ OUTTGL, 0x1c 

.equ INPREG, 0x20 //INPUT

.equ PINCFG, 0x40 //CFG
.equ PMUXEN, 0
.equ INBIT, 0b010
.equ PLBIT, 0b100

.equ PMUX, 0x30 //Peripheral Multiplex
.equ PMUX_PERIPH_F, 0x5
.equ PMUX_PERIPH_E, 0x5
.equ PMUX_PERIPH_D, 0x3
.equ PMUX_ODD, 4


//XXX PM XXX
.equ PM, 0x40000400
.equ APBCMASK, 0x20
.equ APBCMASK_TC7, 0x8000
.equ APBCMASK_TC4, 0x1000

//XXX TC XXX
.equ TC4,0x42002C00
.equ TC7 0x42003C00
.equ CTRLA, 0x00
.equ CTRLA_ENABLE, 0x1
.equ CTRLA_MODE, 0x2
.equ CTRLA_MODE_16, 0x0
.equ CTRLA_MODE_8, 0x1
.equ CTRLA_PER, 0x14
.equ CTRLA_WAVEGEN, 0x5
.equ CTRLA_WAVEGEN_NFRQ, 0x0
.equ CTRLC, 0x06
.equ CC1, 0x19
// XXX DMAC XXX
.equ DMAC, 0x41004800
.equ DMAC_CTRL, 0x00
.equ DMAC_CTRL_ENABLE, 1
.equ BASEADDRESS, 0x34
.equ WRBADDRESS, 0x38
.equ CHID, 0x3F
.equ CHCTRLA, 0x40
.equ CHCTRLA_ENABLE, 1
.equ CHCTRLA_ENABLE_ON, 0x1
.equ CHCTRLB, 0x44
.equ CHCTRLB_TRIGACT, 22
.equ CHCTRLB_TRIGACT_BEAT, 0x2
.equ CHCTRLB_TRIGSRC, 8
.equ CHCTRLB_TRIGSRC_TC4MC1, 0x26
.equ CHCTRLB_TRIGSRC_SERCOM5TX, 0x0C

.equ BTCTRL, 0x00
.equ BTCTRL_STEPSIZE, 13
.equ BTCTRL_STEPSEL, 12
.equ BTCTRL_DSTINC, 11
.equ BTCTRL_SRCINC, 10
.equ BTCTRL_BEATSIZE, 8
.equ BTCTRL_EVOSEL, 1
.equ BTCTRL_VALID, 0

.equ BTCTRL_BEATSIZE_BYTE, 0x0
.equ BTCTRL_EVOSEL_BEAT, 0x3 

.equ BTCNT, 0x02
.equ SRCADDR, 0x04
.equ DSTADDR, 0x08
.equ DESCADDR, 0x0c

.equ GCLKRST, 0x00
.equ GCLKSTS, 0x01
.equ GCLKCTL, 0x02
.equ GENCTRL, 0x04
.equ GENDIVI, 0x08

//bits
.equ LED_BIT_PIN, 17
.equ NEOPIXEL_CHAIN_PIN, 16
.equ BTNA, 28
.equ BTNB, 14
// XXX SERCOM5 XXX
.equ SERCOM5, 0x042001C00
// SPI
.equ SPICTRLA, 0x00
.equ SPICTRLA_ENABLE, 1
.equ SPICTRLA_MODE, 3
.equ SPICTRLA_MODE_MASTER, 0x3
.equ SPICTRLA_DOPO, 16
.equ SPICTRLA_DOPO_PAD3, 0x2
.equ SPICTRLA_DORD, 30
.equ SPICTRLA_DORD_LSB, 0x1
.equ SPICTRLB, 0x04
.equ SPIBAUD,  0x0C
.equ SPIINTENCLR, 0x14
.equ SPIINTENSET, 0x16
.equ SPIINTFLAG,  0x18
.equ SPISTATUS, 0x1A
.equ SPISYNCBUSY, 0x1C
.equ SPIADDR, 0x24
.equ SPIDATA, 0x28
.equ SPIDBGCTRL, 0x30

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
.section .data
LUTS_timings:
.half 17//CC1 0 HI
.half 34//CC1 1 HI
.half 38//CC1 0 LO
.half 29//CC1 1 LO
.section .bss 
.align 4
DMAC_descriptors:
	.space 16 //CH0 TC7 cc1
	.space 16 //CH0 TC4 cc1
.align 4
DMAC_writeback:
	.space 16
	.space 16
NEODATA:
	.space 240 // holds encoded neopixel rgb values transmit by spi
NEODATA_RAW:
	.space 24 // holds unencoded neopixel rgb values

.section .text
.global Reset_Handler
.thumb_func
Reset_Handler:
	bl init_DMAC
	bl initSERCOM5
	la r0, =NEODATA
	xor r1, r1, r1
	movs r2, #255
	orrs r1, r1, r2
	lsls r2, r2, #8
	orrs r1, r1, r2
	lsls r2, r2, #8
	orrs r1, r1, r2
	str r1, [r0, #0]
	bl encode_neodata
	bl transfer_neodata
	
	loop:
		// if BTNB pressed light neopixel
	b loop
.thumb_func:
init_DMAC:
	movs r0, =DMAC
	movs r1, =DMAC_descriptors
	str r1, [r0, #BASEADDRESS]
	movs r1, =DMAC_writeback
	str r1, [r0, #WRBADDRESS]
	movs r1, #1
	lsls r1, #DMAC_CTRL_ENABLE
	str r1, [r0, #DMAC_CTRL]
	bx r14
.thumb_func
InitSERCOM5_neo:
	/*link sercom5 pad 3 to port B23.*/
	/*configure SPI sercom5 pad 3 baud 3 = 166ns per bit*/
	/*so one byte transfers a bit of neopixel rgb.*/
	/*configure GCLK_SERCOM 48mhz.*/
	/*start DMAC CH0 to SPI DATA*/
	/*DMAC address NEODATA size 3 * 8 * 10 = 240 bytes /
	/*3 rgb value * 8 bits encode one neo bit * 10 neopixels*/
	
	/*Initialize endpoint connection*/
	la r0, =PORTB
	adds r0, r0, #PINCFG
	movs r1, #1
	lsls r1, r1, #PMUXEN
	strb r1, [r0, #23] /*pin23*/
	subs r0, r0, #PINCFG
	adds r0, r0,  #PMUX
	ldr r1, [r0, #11] /*odd even pin pair configured in a single byte*/
	lsls r1, r1, #4
	lsrs r1, r1, #4
	movs r2, #PMUX_PERIPH_D
	lsls r2, r2, #PMUX_ODD
	orrs r1, r1, r2
	strb r1, [r0, #11] /*odd even pair in a byte*/

	/*Initialize SPI medium MOSI directed toward PAD3(muxed to pin23)*/
	/*TODO enable and set tx to low*/
	la r0, = SERCOM5
	xor r1, r1, r1
	movs r1, #SPICTRLA_MODE_MASTER
	lsls r1, r1, #SPICTRLA_MODE
	movs r2, #SPICTRLA_DOPO_PAD3
	lsls r2, r2, #SPICTRLA_DOPO
	orrs r1, r1, r2
	movs r2, #SPICTRLA_DORD_LSB
	lsls r2, r2,#SPICTRLA_DORD
	orrs r1, r1, r2	
	str r1, [r0, #SPICTRLA]
	movs r1, r1, #3
	str r1, [r0, #SPIBAUD]
	
	/*enable DMA CHANNEL 0 for data feed to SPI*/	
	/*one byte per transfer or one neopixel bit per transfer*/
	la r0, =DMAC
	xor r1, r1, r1
	strb r1, [r0, #CHID]
	movs r1, #CHCTRLB_TRIGACT_BEAT 
	lsls r1, r1, #CHCTRLB_TRIGACT
	movs r2, #CHCTRLB_TRIGSRC_SERCOM5TX
	lsls r2, r2, #CHCTRLB_TRIGSRC
	orrs r1, r1, r2
	// NOTE: assuming no other channel in use Priority = 0.
	// TODO: refactor when other channels.
	str r1, [r0, #CHCTRLB]
	movs r1, #CHCTRLA_ENABLE_ON
	lsls r1, #CHCTRLA_ENABLE
	strb r1, [r0, #CHCTRLA]
	
	/*enable channel 0 memory handler/
	/*disable after completion, SPI low state ready for next.*/
	/*TODO buffer src with enough 0 set mem to send reset signal so valid flag is flag for if ready for next transfer*/
	la r0, =DMAC_descriptors
	movs r1,#1
	lsls r1, r1 #BTCTRL_SRCINC
	adds r1, r1, #1 //VALID DESCRIPTOR
	str r1, [r0, #BTCTRL]
	movs r1, #240
	strh r1, [r0, #BTCNT]
	la r1, =NEODATA
	str r1, [r0, #SRCADDR]
	la r1, =SERCOM5
	adds r1, r1, #SPIDATA
	str r1, [r0, #DSTADDR]
	

	/*enable DFLL48 closed loop for SPI clock*/
	la r0, =SYSCTRL
	movs r1, #DFLLCTRL_ENABLE_ON
	lsls r1, #DFLLCTRL_ENABLE
	strb r1, [r0, #DFLLCTRL]
	/*setup referenece gclk gen*/
	la r0= GCLK
	movs r1, #1
	lsls r1, r1, #GENDIV_ID
	movs r2, #1
	lsls r2, r2, #GENDIV_DIV
	orrs r1, r1, r2
	str r1, [r0, #GENDIV]

	movs r1, #2
	lsls r1, r1, #GENCTRL_ID
	movs r2, #1
	lsls r2, r2, #GENCTRL_DIVSEL
	mvns r2, r2 /*everything but DIVSEL*/
	and r1, r1, r2
	movs r2, #GCLK_OSCULP32K_SRC
	lsls r2, r2, #GENCTRL_SRC
	orrs r1, r1, r2
	movs r2, #1
	lsls r2, r2, #GENCTRL_ENABLE
	orrs r1, r1, r2
	str r1, [r0, #GENCTRL]

	movs r1, #GCLK_DFLL48M_REF	
	lsls r1, r1, #CLKCTRL_ID
	movs r2, #2
	lsls r2, r2, #CLKCTRL_GEN
	orrs r1, r1, r2
	movs r2, #1
	lsls r2, r2, #CLKCTRL_ENABLE
	orrs r1, r1, r2
	strh r1, [r0, #CLKCTRL]
	//TODO course and fine calibration step size
	
	
	/**/
	la r0, =GCLK
	movs r1, #1 
	lsls r1, r1, #GENDIV_ID
	movs r2, #1
	lsls r2, r2, #GENDIV_DIV
	orrs r1, r1, r2
	str r1, [r0, #GENDIV]

	movs r1, #1
	lsls r1, r1, #GENCTRL_ID
	movs r2, #1
	lsls r2, r2, #GENCTRL_DIVSEL
	mvns r2, r2
	and r1, r1, r2
	movs r2, #1
	lsls r2, r2, #GENCTRL_ENABLE
	orrs r1, r1, r2
	str r1, [r0, #GENCTRL]

	movs r1, #CLK_ID_SERCOM5CORE	
	lsls r1, r1, #CLKCTRL_ID
	movs r2, #1
	lsls r2, r2, #CLKCTRL_GEN
	orrs r1, r1, r2
	movs r2, #1
	lsls r2, r2, #CLKCTRL_ENABLE
	orrs r1, r1, r2
	strh r1, [r0, #CLKCTRL]


Default_Handler:
	b Default_Handler
