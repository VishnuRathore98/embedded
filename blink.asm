
blink.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   8:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
   c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  10:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  14:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  18:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  1c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  20:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  24:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  28:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  2c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  30:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  34:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  38:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  3c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  40:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  44:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  48:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  4c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  50:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  54:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  58:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  5c:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  60:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>
  64:	0c 94 3e 00 	jmp	0x7c	; 0x7c <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61
  74:	0e 94 40 00 	call	0x80	; 0x80 <main>
  78:	0c 94 65 02 	jmp	0x4ca	; 0x4ca <_exit>

0000007c <__bad_interrupt>:
  7c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000080 <main>:
  80:	cf 93       	push	r28
  82:	df 93       	push	r29
  84:	cd b7       	in	r28, 0x3d	; 61
  86:	de b7       	in	r29, 0x3e	; 62
  88:	6c 97       	sbiw	r28, 0x1c	; 28
  8a:	0f b6       	in	r0, 0x3f	; 63
  8c:	f8 94       	cli
  8e:	de bf       	out	0x3e, r29	; 62
  90:	0f be       	out	0x3f, r0	; 63
  92:	cd bf       	out	0x3d, r28	; 61
  94:	84 e2       	ldi	r24, 0x24	; 36
  96:	90 e0       	ldi	r25, 0x00	; 0
  98:	fc 01       	movw	r30, r24
  9a:	20 81       	ld	r18, Z
  9c:	84 e2       	ldi	r24, 0x24	; 36
  9e:	90 e0       	ldi	r25, 0x00	; 0
  a0:	20 62       	ori	r18, 0x20	; 32
  a2:	fc 01       	movw	r30, r24
  a4:	20 83       	st	Z, r18
  a6:	85 e2       	ldi	r24, 0x25	; 37
  a8:	90 e0       	ldi	r25, 0x00	; 0
  aa:	fc 01       	movw	r30, r24
  ac:	20 81       	ld	r18, Z
  ae:	85 e2       	ldi	r24, 0x25	; 37
  b0:	90 e0       	ldi	r25, 0x00	; 0
  b2:	20 62       	ori	r18, 0x20	; 32
  b4:	fc 01       	movw	r30, r24
  b6:	20 83       	st	Z, r18
  b8:	80 e0       	ldi	r24, 0x00	; 0
  ba:	90 e0       	ldi	r25, 0x00	; 0
  bc:	aa e7       	ldi	r26, 0x7A	; 122
  be:	b4 e4       	ldi	r27, 0x44	; 68
  c0:	8f 87       	std	Y+15, r24	; 0x0f
  c2:	98 8b       	std	Y+16, r25	; 0x10
  c4:	a9 8b       	std	Y+17, r26	; 0x11
  c6:	ba 8b       	std	Y+18, r27	; 0x12
  c8:	20 e0       	ldi	r18, 0x00	; 0
  ca:	30 e0       	ldi	r19, 0x00	; 0
  cc:	4a e7       	ldi	r20, 0x7A	; 122
  ce:	55 e4       	ldi	r21, 0x45	; 69
  d0:	6f 85       	ldd	r22, Y+15	; 0x0f
  d2:	78 89       	ldd	r23, Y+16	; 0x10
  d4:	89 89       	ldd	r24, Y+17	; 0x11
  d6:	9a 89       	ldd	r25, Y+18	; 0x12
  d8:	0e 94 d0 01 	call	0x3a0	; 0x3a0 <__mulsf3>
  dc:	dc 01       	movw	r26, r24
  de:	cb 01       	movw	r24, r22
  e0:	8b 8b       	std	Y+19, r24	; 0x13
  e2:	9c 8b       	std	Y+20, r25	; 0x14
  e4:	ad 8b       	std	Y+21, r26	; 0x15
  e6:	be 8b       	std	Y+22, r27	; 0x16
  e8:	20 e0       	ldi	r18, 0x00	; 0
  ea:	30 e0       	ldi	r19, 0x00	; 0
  ec:	40 e8       	ldi	r20, 0x80	; 128
  ee:	5f e3       	ldi	r21, 0x3F	; 63
  f0:	6b 89       	ldd	r22, Y+19	; 0x13
  f2:	7c 89       	ldd	r23, Y+20	; 0x14
  f4:	8d 89       	ldd	r24, Y+21	; 0x15
  f6:	9e 89       	ldd	r25, Y+22	; 0x16
  f8:	0e 94 4a 01 	call	0x294	; 0x294 <__cmpsf2>
  fc:	88 23       	and	r24, r24
  fe:	2c f4       	brge	.+10     	; 0x10a <main+0x8a>
 100:	81 e0       	ldi	r24, 0x01	; 1
 102:	90 e0       	ldi	r25, 0x00	; 0
 104:	98 8f       	std	Y+24, r25	; 0x18
 106:	8f 8b       	std	Y+23, r24	; 0x17
 108:	3f c0       	rjmp	.+126    	; 0x188 <main+0x108>
 10a:	20 e0       	ldi	r18, 0x00	; 0
 10c:	3f ef       	ldi	r19, 0xFF	; 255
 10e:	4f e7       	ldi	r20, 0x7F	; 127
 110:	57 e4       	ldi	r21, 0x47	; 71
 112:	6b 89       	ldd	r22, Y+19	; 0x13
 114:	7c 89       	ldd	r23, Y+20	; 0x14
 116:	8d 89       	ldd	r24, Y+21	; 0x15
 118:	9e 89       	ldd	r25, Y+22	; 0x16
 11a:	0e 94 cb 01 	call	0x396	; 0x396 <__gesf2>
 11e:	18 16       	cp	r1, r24
 120:	4c f5       	brge	.+82     	; 0x174 <main+0xf4>
 122:	20 e0       	ldi	r18, 0x00	; 0
 124:	30 e0       	ldi	r19, 0x00	; 0
 126:	40 e2       	ldi	r20, 0x20	; 32
 128:	51 e4       	ldi	r21, 0x41	; 65
 12a:	6f 85       	ldd	r22, Y+15	; 0x0f
 12c:	78 89       	ldd	r23, Y+16	; 0x10
 12e:	89 89       	ldd	r24, Y+17	; 0x11
 130:	9a 89       	ldd	r25, Y+18	; 0x12
 132:	0e 94 d0 01 	call	0x3a0	; 0x3a0 <__mulsf3>
 136:	dc 01       	movw	r26, r24
 138:	cb 01       	movw	r24, r22
 13a:	bc 01       	movw	r22, r24
 13c:	cd 01       	movw	r24, r26
 13e:	0e 94 4f 01 	call	0x29e	; 0x29e <__fixunssfsi>
 142:	dc 01       	movw	r26, r24
 144:	cb 01       	movw	r24, r22
 146:	98 8f       	std	Y+24, r25	; 0x18
 148:	8f 8b       	std	Y+23, r24	; 0x17
 14a:	0f c0       	rjmp	.+30     	; 0x16a <main+0xea>
 14c:	80 e9       	ldi	r24, 0x90	; 144
 14e:	91 e0       	ldi	r25, 0x01	; 1
 150:	9a 8f       	std	Y+26, r25	; 0x1a
 152:	89 8f       	std	Y+25, r24	; 0x19
 154:	89 8d       	ldd	r24, Y+25	; 0x19
 156:	9a 8d       	ldd	r25, Y+26	; 0x1a
 158:	01 97       	sbiw	r24, 0x01	; 1
 15a:	f1 f7       	brne	.-4      	; 0x158 <main+0xd8>
 15c:	9a 8f       	std	Y+26, r25	; 0x1a
 15e:	89 8f       	std	Y+25, r24	; 0x19
 160:	8f 89       	ldd	r24, Y+23	; 0x17
 162:	98 8d       	ldd	r25, Y+24	; 0x18
 164:	01 97       	sbiw	r24, 0x01	; 1
 166:	98 8f       	std	Y+24, r25	; 0x18
 168:	8f 8b       	std	Y+23, r24	; 0x17
 16a:	8f 89       	ldd	r24, Y+23	; 0x17
 16c:	98 8d       	ldd	r25, Y+24	; 0x18
 16e:	89 2b       	or	r24, r25
 170:	69 f7       	brne	.-38     	; 0x14c <main+0xcc>
 172:	14 c0       	rjmp	.+40     	; 0x19c <main+0x11c>
 174:	6b 89       	ldd	r22, Y+19	; 0x13
 176:	7c 89       	ldd	r23, Y+20	; 0x14
 178:	8d 89       	ldd	r24, Y+21	; 0x15
 17a:	9e 89       	ldd	r25, Y+22	; 0x16
 17c:	0e 94 4f 01 	call	0x29e	; 0x29e <__fixunssfsi>
 180:	dc 01       	movw	r26, r24
 182:	cb 01       	movw	r24, r22
 184:	98 8f       	std	Y+24, r25	; 0x18
 186:	8f 8b       	std	Y+23, r24	; 0x17
 188:	8f 89       	ldd	r24, Y+23	; 0x17
 18a:	98 8d       	ldd	r25, Y+24	; 0x18
 18c:	9c 8f       	std	Y+28, r25	; 0x1c
 18e:	8b 8f       	std	Y+27, r24	; 0x1b
 190:	8b 8d       	ldd	r24, Y+27	; 0x1b
 192:	9c 8d       	ldd	r25, Y+28	; 0x1c
 194:	01 97       	sbiw	r24, 0x01	; 1
 196:	f1 f7       	brne	.-4      	; 0x194 <main+0x114>
 198:	9c 8f       	std	Y+28, r25	; 0x1c
 19a:	8b 8f       	std	Y+27, r24	; 0x1b
 19c:	85 e2       	ldi	r24, 0x25	; 37
 19e:	90 e0       	ldi	r25, 0x00	; 0
 1a0:	fc 01       	movw	r30, r24
 1a2:	20 81       	ld	r18, Z
 1a4:	85 e2       	ldi	r24, 0x25	; 37
 1a6:	90 e0       	ldi	r25, 0x00	; 0
 1a8:	2f 7d       	andi	r18, 0xDF	; 223
 1aa:	fc 01       	movw	r30, r24
 1ac:	20 83       	st	Z, r18
 1ae:	80 e0       	ldi	r24, 0x00	; 0
 1b0:	90 e0       	ldi	r25, 0x00	; 0
 1b2:	aa e7       	ldi	r26, 0x7A	; 122
 1b4:	b4 e4       	ldi	r27, 0x44	; 68
 1b6:	89 83       	std	Y+1, r24	; 0x01
 1b8:	9a 83       	std	Y+2, r25	; 0x02
 1ba:	ab 83       	std	Y+3, r26	; 0x03
 1bc:	bc 83       	std	Y+4, r27	; 0x04
 1be:	20 e0       	ldi	r18, 0x00	; 0
 1c0:	30 e0       	ldi	r19, 0x00	; 0
 1c2:	4a e7       	ldi	r20, 0x7A	; 122
 1c4:	55 e4       	ldi	r21, 0x45	; 69
 1c6:	69 81       	ldd	r22, Y+1	; 0x01
 1c8:	7a 81       	ldd	r23, Y+2	; 0x02
 1ca:	8b 81       	ldd	r24, Y+3	; 0x03
 1cc:	9c 81       	ldd	r25, Y+4	; 0x04
 1ce:	0e 94 d0 01 	call	0x3a0	; 0x3a0 <__mulsf3>
 1d2:	dc 01       	movw	r26, r24
 1d4:	cb 01       	movw	r24, r22
 1d6:	8d 83       	std	Y+5, r24	; 0x05
 1d8:	9e 83       	std	Y+6, r25	; 0x06
 1da:	af 83       	std	Y+7, r26	; 0x07
 1dc:	b8 87       	std	Y+8, r27	; 0x08
 1de:	20 e0       	ldi	r18, 0x00	; 0
 1e0:	30 e0       	ldi	r19, 0x00	; 0
 1e2:	40 e8       	ldi	r20, 0x80	; 128
 1e4:	5f e3       	ldi	r21, 0x3F	; 63
 1e6:	6d 81       	ldd	r22, Y+5	; 0x05
 1e8:	7e 81       	ldd	r23, Y+6	; 0x06
 1ea:	8f 81       	ldd	r24, Y+7	; 0x07
 1ec:	98 85       	ldd	r25, Y+8	; 0x08
 1ee:	0e 94 4a 01 	call	0x294	; 0x294 <__cmpsf2>
 1f2:	88 23       	and	r24, r24
 1f4:	2c f4       	brge	.+10     	; 0x200 <main+0x180>
 1f6:	81 e0       	ldi	r24, 0x01	; 1
 1f8:	90 e0       	ldi	r25, 0x00	; 0
 1fa:	9a 87       	std	Y+10, r25	; 0x0a
 1fc:	89 87       	std	Y+9, r24	; 0x09
 1fe:	3f c0       	rjmp	.+126    	; 0x27e <main+0x1fe>
 200:	20 e0       	ldi	r18, 0x00	; 0
 202:	3f ef       	ldi	r19, 0xFF	; 255
 204:	4f e7       	ldi	r20, 0x7F	; 127
 206:	57 e4       	ldi	r21, 0x47	; 71
 208:	6d 81       	ldd	r22, Y+5	; 0x05
 20a:	7e 81       	ldd	r23, Y+6	; 0x06
 20c:	8f 81       	ldd	r24, Y+7	; 0x07
 20e:	98 85       	ldd	r25, Y+8	; 0x08
 210:	0e 94 cb 01 	call	0x396	; 0x396 <__gesf2>
 214:	18 16       	cp	r1, r24
 216:	4c f5       	brge	.+82     	; 0x26a <main+0x1ea>
 218:	20 e0       	ldi	r18, 0x00	; 0
 21a:	30 e0       	ldi	r19, 0x00	; 0
 21c:	40 e2       	ldi	r20, 0x20	; 32
 21e:	51 e4       	ldi	r21, 0x41	; 65
 220:	69 81       	ldd	r22, Y+1	; 0x01
 222:	7a 81       	ldd	r23, Y+2	; 0x02
 224:	8b 81       	ldd	r24, Y+3	; 0x03
 226:	9c 81       	ldd	r25, Y+4	; 0x04
 228:	0e 94 d0 01 	call	0x3a0	; 0x3a0 <__mulsf3>
 22c:	dc 01       	movw	r26, r24
 22e:	cb 01       	movw	r24, r22
 230:	bc 01       	movw	r22, r24
 232:	cd 01       	movw	r24, r26
 234:	0e 94 4f 01 	call	0x29e	; 0x29e <__fixunssfsi>
 238:	dc 01       	movw	r26, r24
 23a:	cb 01       	movw	r24, r22
 23c:	9a 87       	std	Y+10, r25	; 0x0a
 23e:	89 87       	std	Y+9, r24	; 0x09
 240:	0f c0       	rjmp	.+30     	; 0x260 <main+0x1e0>
 242:	80 e9       	ldi	r24, 0x90	; 144
 244:	91 e0       	ldi	r25, 0x01	; 1
 246:	9c 87       	std	Y+12, r25	; 0x0c
 248:	8b 87       	std	Y+11, r24	; 0x0b
 24a:	8b 85       	ldd	r24, Y+11	; 0x0b
 24c:	9c 85       	ldd	r25, Y+12	; 0x0c
 24e:	01 97       	sbiw	r24, 0x01	; 1
 250:	f1 f7       	brne	.-4      	; 0x24e <main+0x1ce>
 252:	9c 87       	std	Y+12, r25	; 0x0c
 254:	8b 87       	std	Y+11, r24	; 0x0b
 256:	89 85       	ldd	r24, Y+9	; 0x09
 258:	9a 85       	ldd	r25, Y+10	; 0x0a
 25a:	01 97       	sbiw	r24, 0x01	; 1
 25c:	9a 87       	std	Y+10, r25	; 0x0a
 25e:	89 87       	std	Y+9, r24	; 0x09
 260:	89 85       	ldd	r24, Y+9	; 0x09
 262:	9a 85       	ldd	r25, Y+10	; 0x0a
 264:	89 2b       	or	r24, r25
 266:	69 f7       	brne	.-38     	; 0x242 <main+0x1c2>
 268:	14 c0       	rjmp	.+40     	; 0x292 <main+0x212>
 26a:	6d 81       	ldd	r22, Y+5	; 0x05
 26c:	7e 81       	ldd	r23, Y+6	; 0x06
 26e:	8f 81       	ldd	r24, Y+7	; 0x07
 270:	98 85       	ldd	r25, Y+8	; 0x08
 272:	0e 94 4f 01 	call	0x29e	; 0x29e <__fixunssfsi>
 276:	dc 01       	movw	r26, r24
 278:	cb 01       	movw	r24, r22
 27a:	9a 87       	std	Y+10, r25	; 0x0a
 27c:	89 87       	std	Y+9, r24	; 0x09
 27e:	89 85       	ldd	r24, Y+9	; 0x09
 280:	9a 85       	ldd	r25, Y+10	; 0x0a
 282:	9e 87       	std	Y+14, r25	; 0x0e
 284:	8d 87       	std	Y+13, r24	; 0x0d
 286:	8d 85       	ldd	r24, Y+13	; 0x0d
 288:	9e 85       	ldd	r25, Y+14	; 0x0e
 28a:	01 97       	sbiw	r24, 0x01	; 1
 28c:	f1 f7       	brne	.-4      	; 0x28a <main+0x20a>
 28e:	9e 87       	std	Y+14, r25	; 0x0e
 290:	8d 87       	std	Y+13, r24	; 0x0d
 292:	09 cf       	rjmp	.-494    	; 0xa6 <main+0x26>

00000294 <__cmpsf2>:
 294:	0e 94 7e 01 	call	0x2fc	; 0x2fc <__fp_cmp>
 298:	08 f4       	brcc	.+2      	; 0x29c <__cmpsf2+0x8>
 29a:	81 e0       	ldi	r24, 0x01	; 1
 29c:	08 95       	ret

0000029e <__fixunssfsi>:
 29e:	0e 94 aa 01 	call	0x354	; 0x354 <__fp_splitA>
 2a2:	88 f0       	brcs	.+34     	; 0x2c6 <__fixunssfsi+0x28>
 2a4:	9f 57       	subi	r25, 0x7F	; 127
 2a6:	98 f0       	brcs	.+38     	; 0x2ce <__fixunssfsi+0x30>
 2a8:	b9 2f       	mov	r27, r25
 2aa:	99 27       	eor	r25, r25
 2ac:	b7 51       	subi	r27, 0x17	; 23
 2ae:	b0 f0       	brcs	.+44     	; 0x2dc <__fixunssfsi+0x3e>
 2b0:	e1 f0       	breq	.+56     	; 0x2ea <__fixunssfsi+0x4c>
 2b2:	66 0f       	add	r22, r22
 2b4:	77 1f       	adc	r23, r23
 2b6:	88 1f       	adc	r24, r24
 2b8:	99 1f       	adc	r25, r25
 2ba:	1a f0       	brmi	.+6      	; 0x2c2 <__fixunssfsi+0x24>
 2bc:	ba 95       	dec	r27
 2be:	c9 f7       	brne	.-14     	; 0x2b2 <__fixunssfsi+0x14>
 2c0:	14 c0       	rjmp	.+40     	; 0x2ea <__fixunssfsi+0x4c>
 2c2:	b1 30       	cpi	r27, 0x01	; 1
 2c4:	91 f0       	breq	.+36     	; 0x2ea <__fixunssfsi+0x4c>
 2c6:	0e 94 c4 01 	call	0x388	; 0x388 <__fp_zero>
 2ca:	b1 e0       	ldi	r27, 0x01	; 1
 2cc:	08 95       	ret
 2ce:	0c 94 c4 01 	jmp	0x388	; 0x388 <__fp_zero>
 2d2:	67 2f       	mov	r22, r23
 2d4:	78 2f       	mov	r23, r24
 2d6:	88 27       	eor	r24, r24
 2d8:	b8 5f       	subi	r27, 0xF8	; 248
 2da:	39 f0       	breq	.+14     	; 0x2ea <__fixunssfsi+0x4c>
 2dc:	b9 3f       	cpi	r27, 0xF9	; 249
 2de:	cc f3       	brlt	.-14     	; 0x2d2 <__fixunssfsi+0x34>
 2e0:	86 95       	lsr	r24
 2e2:	77 95       	ror	r23
 2e4:	67 95       	ror	r22
 2e6:	b3 95       	inc	r27
 2e8:	d9 f7       	brne	.-10     	; 0x2e0 <__fixunssfsi+0x42>
 2ea:	3e f4       	brtc	.+14     	; 0x2fa <__fixunssfsi+0x5c>
 2ec:	90 95       	com	r25
 2ee:	80 95       	com	r24
 2f0:	70 95       	com	r23
 2f2:	61 95       	neg	r22
 2f4:	7f 4f       	sbci	r23, 0xFF	; 255
 2f6:	8f 4f       	sbci	r24, 0xFF	; 255
 2f8:	9f 4f       	sbci	r25, 0xFF	; 255
 2fa:	08 95       	ret

000002fc <__fp_cmp>:
 2fc:	99 0f       	add	r25, r25
 2fe:	00 08       	sbc	r0, r0
 300:	55 0f       	add	r21, r21
 302:	aa 0b       	sbc	r26, r26
 304:	e0 e8       	ldi	r30, 0x80	; 128
 306:	fe ef       	ldi	r31, 0xFE	; 254
 308:	16 16       	cp	r1, r22
 30a:	17 06       	cpc	r1, r23
 30c:	e8 07       	cpc	r30, r24
 30e:	f9 07       	cpc	r31, r25
 310:	c0 f0       	brcs	.+48     	; 0x342 <__fp_cmp+0x46>
 312:	12 16       	cp	r1, r18
 314:	13 06       	cpc	r1, r19
 316:	e4 07       	cpc	r30, r20
 318:	f5 07       	cpc	r31, r21
 31a:	98 f0       	brcs	.+38     	; 0x342 <__fp_cmp+0x46>
 31c:	62 1b       	sub	r22, r18
 31e:	73 0b       	sbc	r23, r19
 320:	84 0b       	sbc	r24, r20
 322:	95 0b       	sbc	r25, r21
 324:	39 f4       	brne	.+14     	; 0x334 <__fp_cmp+0x38>
 326:	0a 26       	eor	r0, r26
 328:	61 f0       	breq	.+24     	; 0x342 <__fp_cmp+0x46>
 32a:	23 2b       	or	r18, r19
 32c:	24 2b       	or	r18, r20
 32e:	25 2b       	or	r18, r21
 330:	21 f4       	brne	.+8      	; 0x33a <__fp_cmp+0x3e>
 332:	08 95       	ret
 334:	0a 26       	eor	r0, r26
 336:	09 f4       	brne	.+2      	; 0x33a <__fp_cmp+0x3e>
 338:	a1 40       	sbci	r26, 0x01	; 1
 33a:	a6 95       	lsr	r26
 33c:	8f ef       	ldi	r24, 0xFF	; 255
 33e:	81 1d       	adc	r24, r1
 340:	81 1d       	adc	r24, r1
 342:	08 95       	ret

00000344 <__fp_split3>:
 344:	57 fd       	sbrc	r21, 7
 346:	90 58       	subi	r25, 0x80	; 128
 348:	44 0f       	add	r20, r20
 34a:	55 1f       	adc	r21, r21
 34c:	59 f0       	breq	.+22     	; 0x364 <__fp_splitA+0x10>
 34e:	5f 3f       	cpi	r21, 0xFF	; 255
 350:	71 f0       	breq	.+28     	; 0x36e <__fp_splitA+0x1a>
 352:	47 95       	ror	r20

00000354 <__fp_splitA>:
 354:	88 0f       	add	r24, r24
 356:	97 fb       	bst	r25, 7
 358:	99 1f       	adc	r25, r25
 35a:	61 f0       	breq	.+24     	; 0x374 <__fp_splitA+0x20>
 35c:	9f 3f       	cpi	r25, 0xFF	; 255
 35e:	79 f0       	breq	.+30     	; 0x37e <__fp_splitA+0x2a>
 360:	87 95       	ror	r24
 362:	08 95       	ret
 364:	12 16       	cp	r1, r18
 366:	13 06       	cpc	r1, r19
 368:	14 06       	cpc	r1, r20
 36a:	55 1f       	adc	r21, r21
 36c:	f2 cf       	rjmp	.-28     	; 0x352 <__fp_split3+0xe>
 36e:	46 95       	lsr	r20
 370:	f1 df       	rcall	.-30     	; 0x354 <__fp_splitA>
 372:	08 c0       	rjmp	.+16     	; 0x384 <__fp_splitA+0x30>
 374:	16 16       	cp	r1, r22
 376:	17 06       	cpc	r1, r23
 378:	18 06       	cpc	r1, r24
 37a:	99 1f       	adc	r25, r25
 37c:	f1 cf       	rjmp	.-30     	; 0x360 <__fp_splitA+0xc>
 37e:	86 95       	lsr	r24
 380:	71 05       	cpc	r23, r1
 382:	61 05       	cpc	r22, r1
 384:	08 94       	sec
 386:	08 95       	ret

00000388 <__fp_zero>:
 388:	e8 94       	clt

0000038a <__fp_szero>:
 38a:	bb 27       	eor	r27, r27
 38c:	66 27       	eor	r22, r22
 38e:	77 27       	eor	r23, r23
 390:	cb 01       	movw	r24, r22
 392:	97 f9       	bld	r25, 7
 394:	08 95       	ret

00000396 <__gesf2>:
 396:	0e 94 7e 01 	call	0x2fc	; 0x2fc <__fp_cmp>
 39a:	08 f4       	brcc	.+2      	; 0x39e <__gesf2+0x8>
 39c:	8f ef       	ldi	r24, 0xFF	; 255
 39e:	08 95       	ret

000003a0 <__mulsf3>:
 3a0:	0e 94 e3 01 	call	0x3c6	; 0x3c6 <__mulsf3x>
 3a4:	0c 94 54 02 	jmp	0x4a8	; 0x4a8 <__fp_round>
 3a8:	0e 94 46 02 	call	0x48c	; 0x48c <__fp_pscA>
 3ac:	38 f0       	brcs	.+14     	; 0x3bc <__mulsf3+0x1c>
 3ae:	0e 94 4d 02 	call	0x49a	; 0x49a <__fp_pscB>
 3b2:	20 f0       	brcs	.+8      	; 0x3bc <__mulsf3+0x1c>
 3b4:	95 23       	and	r25, r21
 3b6:	11 f0       	breq	.+4      	; 0x3bc <__mulsf3+0x1c>
 3b8:	0c 94 3d 02 	jmp	0x47a	; 0x47a <__fp_inf>
 3bc:	0c 94 43 02 	jmp	0x486	; 0x486 <__fp_nan>
 3c0:	11 24       	eor	r1, r1
 3c2:	0c 94 c5 01 	jmp	0x38a	; 0x38a <__fp_szero>

000003c6 <__mulsf3x>:
 3c6:	0e 94 a2 01 	call	0x344	; 0x344 <__fp_split3>
 3ca:	70 f3       	brcs	.-36     	; 0x3a8 <__mulsf3+0x8>

000003cc <__mulsf3_pse>:
 3cc:	95 9f       	mul	r25, r21
 3ce:	c1 f3       	breq	.-16     	; 0x3c0 <__mulsf3+0x20>
 3d0:	95 0f       	add	r25, r21
 3d2:	50 e0       	ldi	r21, 0x00	; 0
 3d4:	55 1f       	adc	r21, r21
 3d6:	62 9f       	mul	r22, r18
 3d8:	f0 01       	movw	r30, r0
 3da:	72 9f       	mul	r23, r18
 3dc:	bb 27       	eor	r27, r27
 3de:	f0 0d       	add	r31, r0
 3e0:	b1 1d       	adc	r27, r1
 3e2:	63 9f       	mul	r22, r19
 3e4:	aa 27       	eor	r26, r26
 3e6:	f0 0d       	add	r31, r0
 3e8:	b1 1d       	adc	r27, r1
 3ea:	aa 1f       	adc	r26, r26
 3ec:	64 9f       	mul	r22, r20
 3ee:	66 27       	eor	r22, r22
 3f0:	b0 0d       	add	r27, r0
 3f2:	a1 1d       	adc	r26, r1
 3f4:	66 1f       	adc	r22, r22
 3f6:	82 9f       	mul	r24, r18
 3f8:	22 27       	eor	r18, r18
 3fa:	b0 0d       	add	r27, r0
 3fc:	a1 1d       	adc	r26, r1
 3fe:	62 1f       	adc	r22, r18
 400:	73 9f       	mul	r23, r19
 402:	b0 0d       	add	r27, r0
 404:	a1 1d       	adc	r26, r1
 406:	62 1f       	adc	r22, r18
 408:	83 9f       	mul	r24, r19
 40a:	a0 0d       	add	r26, r0
 40c:	61 1d       	adc	r22, r1
 40e:	22 1f       	adc	r18, r18
 410:	74 9f       	mul	r23, r20
 412:	33 27       	eor	r19, r19
 414:	a0 0d       	add	r26, r0
 416:	61 1d       	adc	r22, r1
 418:	23 1f       	adc	r18, r19
 41a:	84 9f       	mul	r24, r20
 41c:	60 0d       	add	r22, r0
 41e:	21 1d       	adc	r18, r1
 420:	82 2f       	mov	r24, r18
 422:	76 2f       	mov	r23, r22
 424:	6a 2f       	mov	r22, r26
 426:	11 24       	eor	r1, r1
 428:	9f 57       	subi	r25, 0x7F	; 127
 42a:	50 40       	sbci	r21, 0x00	; 0
 42c:	9a f0       	brmi	.+38     	; 0x454 <__EEPROM_REGION_LENGTH__+0x54>
 42e:	f1 f0       	breq	.+60     	; 0x46c <__EEPROM_REGION_LENGTH__+0x6c>
 430:	88 23       	and	r24, r24
 432:	4a f0       	brmi	.+18     	; 0x446 <__EEPROM_REGION_LENGTH__+0x46>
 434:	ee 0f       	add	r30, r30
 436:	ff 1f       	adc	r31, r31
 438:	bb 1f       	adc	r27, r27
 43a:	66 1f       	adc	r22, r22
 43c:	77 1f       	adc	r23, r23
 43e:	88 1f       	adc	r24, r24
 440:	91 50       	subi	r25, 0x01	; 1
 442:	50 40       	sbci	r21, 0x00	; 0
 444:	a9 f7       	brne	.-22     	; 0x430 <__EEPROM_REGION_LENGTH__+0x30>
 446:	9e 3f       	cpi	r25, 0xFE	; 254
 448:	51 05       	cpc	r21, r1
 44a:	80 f0       	brcs	.+32     	; 0x46c <__EEPROM_REGION_LENGTH__+0x6c>
 44c:	0c 94 3d 02 	jmp	0x47a	; 0x47a <__fp_inf>
 450:	0c 94 c5 01 	jmp	0x38a	; 0x38a <__fp_szero>
 454:	5f 3f       	cpi	r21, 0xFF	; 255
 456:	e4 f3       	brlt	.-8      	; 0x450 <__EEPROM_REGION_LENGTH__+0x50>
 458:	98 3e       	cpi	r25, 0xE8	; 232
 45a:	d4 f3       	brlt	.-12     	; 0x450 <__EEPROM_REGION_LENGTH__+0x50>
 45c:	86 95       	lsr	r24
 45e:	77 95       	ror	r23
 460:	67 95       	ror	r22
 462:	b7 95       	ror	r27
 464:	f7 95       	ror	r31
 466:	e7 95       	ror	r30
 468:	9f 5f       	subi	r25, 0xFF	; 255
 46a:	c1 f7       	brne	.-16     	; 0x45c <__EEPROM_REGION_LENGTH__+0x5c>
 46c:	fe 2b       	or	r31, r30
 46e:	88 0f       	add	r24, r24
 470:	91 1d       	adc	r25, r1
 472:	96 95       	lsr	r25
 474:	87 95       	ror	r24
 476:	97 f9       	bld	r25, 7
 478:	08 95       	ret

0000047a <__fp_inf>:
 47a:	97 f9       	bld	r25, 7
 47c:	9f 67       	ori	r25, 0x7F	; 127
 47e:	80 e8       	ldi	r24, 0x80	; 128
 480:	70 e0       	ldi	r23, 0x00	; 0
 482:	60 e0       	ldi	r22, 0x00	; 0
 484:	08 95       	ret

00000486 <__fp_nan>:
 486:	9f ef       	ldi	r25, 0xFF	; 255
 488:	80 ec       	ldi	r24, 0xC0	; 192
 48a:	08 95       	ret

0000048c <__fp_pscA>:
 48c:	00 24       	eor	r0, r0
 48e:	0a 94       	dec	r0
 490:	16 16       	cp	r1, r22
 492:	17 06       	cpc	r1, r23
 494:	18 06       	cpc	r1, r24
 496:	09 06       	cpc	r0, r25
 498:	08 95       	ret

0000049a <__fp_pscB>:
 49a:	00 24       	eor	r0, r0
 49c:	0a 94       	dec	r0
 49e:	12 16       	cp	r1, r18
 4a0:	13 06       	cpc	r1, r19
 4a2:	14 06       	cpc	r1, r20
 4a4:	05 06       	cpc	r0, r21
 4a6:	08 95       	ret

000004a8 <__fp_round>:
 4a8:	09 2e       	mov	r0, r25
 4aa:	03 94       	inc	r0
 4ac:	00 0c       	add	r0, r0
 4ae:	11 f4       	brne	.+4      	; 0x4b4 <__fp_round+0xc>
 4b0:	88 23       	and	r24, r24
 4b2:	52 f0       	brmi	.+20     	; 0x4c8 <__fp_round+0x20>
 4b4:	bb 0f       	add	r27, r27
 4b6:	40 f4       	brcc	.+16     	; 0x4c8 <__fp_round+0x20>
 4b8:	bf 2b       	or	r27, r31
 4ba:	11 f4       	brne	.+4      	; 0x4c0 <__fp_round+0x18>
 4bc:	60 ff       	sbrs	r22, 0
 4be:	04 c0       	rjmp	.+8      	; 0x4c8 <__fp_round+0x20>
 4c0:	6f 5f       	subi	r22, 0xFF	; 255
 4c2:	7f 4f       	sbci	r23, 0xFF	; 255
 4c4:	8f 4f       	sbci	r24, 0xFF	; 255
 4c6:	9f 4f       	sbci	r25, 0xFF	; 255
 4c8:	08 95       	ret

000004ca <_exit>:
 4ca:	f8 94       	cli

000004cc <__stop_program>:
 4cc:	ff cf       	rjmp	.-2      	; 0x4cc <__stop_program>

Disassembly of section .comment:

00000000 <.comment>:
   0:	47 43       	sbci	r20, 0x37	; 55
   2:	43 3a       	cpi	r20, 0xA3	; 163
   4:	20 28       	or	r2, r0
   6:	47 4e       	sbci	r20, 0xE7	; 231
   8:	55 29       	or	r21, r5
   a:	20 37       	cpi	r18, 0x70	; 112
   c:	2e 33       	cpi	r18, 0x3E	; 62
   e:	2e 30       	cpi	r18, 0x0E	; 14
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <.note.gnu.avr.deviceinfo>:
   0:	04 00       	.word	0x0004	; ????
   2:	00 00       	nop
   4:	2d 00       	.word	0x002d	; ????
   6:	00 00       	nop
   8:	01 00       	.word	0x0001	; ????
   a:	00 00       	nop
   c:	41 56       	subi	r20, 0x61	; 97
   e:	52 00       	.word	0x0052	; ????
  10:	00 00       	nop
  12:	00 00       	nop
  14:	00 80       	ld	r0, Z
  16:	00 00       	nop
  18:	00 01       	movw	r0, r0
  1a:	00 00       	nop
  1c:	00 08       	sbc	r0, r0
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	00 00       	nop
  24:	00 04       	cpc	r0, r0
  26:	00 00       	nop
  28:	08 00       	.word	0x0008	; ????
  2a:	00 00       	nop
  2c:	01 00       	.word	0x0001	; ????
  2e:	00 00       	nop
  30:	00 61       	ori	r16, 0x10	; 16
  32:	74 6d       	ori	r23, 0xD4	; 212
  34:	65 67       	ori	r22, 0x75	; 117
  36:	61 33       	cpi	r22, 0x31	; 49
  38:	32 38       	cpi	r19, 0x82	; 130
  3a:	70 00       	.word	0x0070	; ????
  3c:	00 00       	nop
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	f0 05       	cpc	r31, r0
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	00 00       	nop
   8:	00 00       	nop
   a:	04 01       	movw	r0, r8
	...
  14:	02 0f       	add	r16, r18
  16:	00 00       	nop
  18:	00 01       	movw	r0, r0
  1a:	08 03       	fmul	r16, r16
  1c:	17 00       	.word	0x0017	; ????
  1e:	00 00       	nop
  20:	02 07       	cpc	r16, r18
  22:	04 14       	cp	r0, r4
  24:	00 00       	nop
  26:	00 05       	cpc	r16, r0
  28:	1b 00       	.word	0x001b	; ????
  2a:	00 00       	nop
  2c:	ff 03       	fmulsu	r23, r23
  2e:	00 06       	cpc	r0, r16
  30:	20 00       	.word	0x0020	; ????
  32:	00 00       	nop
  34:	00 00       	nop
  36:	22 00       	.word	0x0022	; ????
  38:	00 00       	nop
  3a:	01 05       	cpc	r16, r1
  3c:	03 00       	.word	0x0003	; ????
  3e:	00 81       	ld	r16, Z
  40:	00 07       	cpc	r16, r16
  42:	29 00       	.word	0x0029	; ????
  44:	00 00       	nop
  46:	00 00       	nop
  48:	14 00       	.word	0x0014	; ????
  4a:	00 00       	nop
  4c:	01 05       	cpc	r16, r1
  4e:	03 c6       	rjmp	.+3078   	; 0xc56 <__stack+0x357>
  50:	00 80       	ld	r0, Z
  52:	00 08       	sbc	r0, r0
  54:	2e 00       	.word	0x002e	; ????
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	14 00       	.word	0x0014	; ????
  5c:	00 00       	nop
  5e:	01 05       	cpc	r16, r1
  60:	03 c0       	rjmp	.+6      	; 0x68 <__ctors_end>
  62:	00 80       	ld	r0, Z
  64:	00 09       	sbc	r16, r0
  66:	35 00       	.word	0x0035	; ????
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	14 00       	.word	0x0014	; ????
  6e:	00 00       	nop
  70:	01 05       	cpc	r16, r1
  72:	03 c1       	rjmp	.+518    	; 0x27a <main+0x1fa>
  74:	00 80       	ld	r0, Z
  76:	00 0a       	sbc	r0, r16
  78:	3c 00       	.word	0x003c	; ????
  7a:	00 00       	nop
  7c:	00 00       	nop
  7e:	14 00       	.word	0x0014	; ????
  80:	00 00       	nop
  82:	01 05       	cpc	r16, r1
  84:	03 c2       	rjmp	.+1030   	; 0x48c <__fp_pscA>
  86:	00 80       	ld	r0, Z
  88:	00 0b       	sbc	r16, r16
  8a:	43 00       	.word	0x0043	; ????
  8c:	00 00       	nop
  8e:	00 00       	nop
  90:	1b 00       	.word	0x001b	; ????
  92:	00 00       	nop
  94:	01 05       	cpc	r16, r1
  96:	03 c4       	rjmp	.+2054   	; 0x89e <__DATA_REGION_LENGTH__+0x9e>
  98:	00 80       	ld	r0, Z
  9a:	00 0c       	add	r0, r0
  9c:	49 00       	.word	0x0049	; ????
  9e:	00 00       	nop
  a0:	00 00       	nop
  a2:	14 00       	.word	0x0014	; ????
  a4:	00 00       	nop
  a6:	01 05       	cpc	r16, r1
  a8:	03 bd       	out	0x23, r16	; 35
  aa:	00 80       	ld	r0, Z
  ac:	00 0d       	add	r16, r0
  ae:	4f 00       	.word	0x004f	; ????
  b0:	00 00       	nop
  b2:	00 00       	nop
  b4:	14 00       	.word	0x0014	; ????
  b6:	00 00       	nop
  b8:	01 05       	cpc	r16, r1
  ba:	03 b8       	out	0x03, r0	; 3
  bc:	00 80       	ld	r0, Z
  be:	00 0e       	add	r0, r16
  c0:	54 00       	.word	0x0054	; ????
  c2:	00 00       	nop
  c4:	00 00       	nop
  c6:	14 00       	.word	0x0014	; ????
  c8:	00 00       	nop
  ca:	01 05       	cpc	r16, r1
  cc:	03 bc       	out	0x23, r0	; 35
  ce:	00 80       	ld	r0, Z
  d0:	00 0f       	add	r16, r16
  d2:	59 00       	.word	0x0059	; ????
  d4:	00 00       	nop
  d6:	00 00       	nop
  d8:	14 00       	.word	0x0014	; ????
  da:	00 00       	nop
  dc:	01 05       	cpc	r16, r1
  de:	03 b9       	out	0x03, r16	; 3
  e0:	00 80       	ld	r0, Z
  e2:	00 10       	cpse	r0, r0
  e4:	5e 00       	.word	0x005e	; ????
  e6:	00 00       	nop
  e8:	00 00       	nop
  ea:	14 00       	.word	0x0014	; ????
  ec:	00 00       	nop
  ee:	01 05       	cpc	r16, r1
  f0:	03 bb       	out	0x13, r16	; 19
  f2:	00 80       	ld	r0, Z
  f4:	00 11       	cpse	r16, r0
  f6:	63 00       	.word	0x0063	; ????
  f8:	00 00       	nop
  fa:	00 00       	nop
  fc:	14 00       	.word	0x0014	; ????
  fe:	00 00       	nop
 100:	01 05       	cpc	r16, r1
 102:	03 ba       	out	0x13, r0	; 19
 104:	00 80       	ld	r0, Z
 106:	00 12       	cpse	r0, r16
 108:	68 00       	.word	0x0068	; ????
 10a:	00 00       	nop
 10c:	00 00       	nop
 10e:	14 00       	.word	0x0014	; ????
 110:	00 00       	nop
 112:	01 05       	cpc	r16, r1
 114:	03 6f       	ori	r16, 0xF3	; 243
 116:	00 80       	ld	r0, Z
 118:	00 13       	cpse	r16, r16
 11a:	6f 00       	.word	0x006f	; ????
 11c:	00 00       	nop
 11e:	00 00       	nop
 120:	14 00       	.word	0x0014	; ????
 122:	00 00       	nop
 124:	01 05       	cpc	r16, r1
 126:	03 36       	cpi	r16, 0x63	; 99
 128:	00 80       	ld	r0, Z
 12a:	00 14       	cp	r0, r0
 12c:	75 00       	.word	0x0075	; ????
 12e:	00 00       	nop
 130:	00 00       	nop
 132:	14 00       	.word	0x0014	; ????
 134:	00 00       	nop
 136:	01 05       	cpc	r16, r1
 138:	03 80       	ldd	r0, Z+3	; 0x03
 13a:	00 80       	ld	r0, Z
 13c:	00 15       	cp	r16, r0
 13e:	7c 00       	.word	0x007c	; ????
 140:	00 00       	nop
 142:	00 00       	nop
 144:	14 00       	.word	0x0014	; ????
 146:	00 00       	nop
 148:	01 05       	cpc	r16, r1
 14a:	03 81       	ldd	r16, Z+3	; 0x03
 14c:	00 80       	ld	r0, Z
 14e:	00 16       	cp	r0, r16
 150:	83 00       	.word	0x0083	; ????
 152:	00 00       	nop
 154:	00 00       	nop
 156:	14 00       	.word	0x0014	; ????
 158:	00 00       	nop
 15a:	01 05       	cpc	r16, r1
 15c:	03 82       	std	Z+3, r0	; 0x03
 15e:	00 80       	ld	r0, Z
 160:	00 17       	cp	r16, r16
 162:	8a 00       	.word	0x008a	; ????
 164:	00 00       	nop
 166:	00 00       	nop
 168:	1b 00       	.word	0x001b	; ????
 16a:	00 00       	nop
 16c:	01 05       	cpc	r16, r1
 16e:	03 84       	ldd	r0, Z+11	; 0x0b
 170:	00 80       	ld	r0, Z
 172:	00 18       	sub	r0, r0
 174:	90 00       	.word	0x0090	; ????
 176:	00 00       	nop
 178:	00 00       	nop
 17a:	1b 00       	.word	0x001b	; ????
 17c:	00 00       	nop
 17e:	01 05       	cpc	r16, r1
 180:	03 88       	ldd	r0, Z+19	; 0x13
 182:	00 80       	ld	r0, Z
 184:	00 19       	sub	r16, r0
 186:	96 00       	.word	0x0096	; ????
 188:	00 00       	nop
 18a:	00 00       	nop
 18c:	1b 00       	.word	0x001b	; ????
 18e:	00 00       	nop
 190:	01 05       	cpc	r16, r1
 192:	03 8a       	std	Z+19, r0	; 0x13
 194:	00 80       	ld	r0, Z
 196:	00 1a       	sub	r0, r16
 198:	9c 00       	.word	0x009c	; ????
 19a:	00 00       	nop
 19c:	00 00       	nop
 19e:	1b 00       	.word	0x001b	; ????
 1a0:	00 00       	nop
 1a2:	01 05       	cpc	r16, r1
 1a4:	03 86       	std	Z+11, r0	; 0x0b
 1a6:	00 80       	ld	r0, Z
 1a8:	00 1b       	sub	r16, r16
 1aa:	a1 00       	.word	0x00a1	; ????
 1ac:	00 00       	nop
 1ae:	00 00       	nop
 1b0:	14 00       	.word	0x0014	; ????
 1b2:	00 00       	nop
 1b4:	01 05       	cpc	r16, r1
 1b6:	03 43       	sbci	r16, 0x33	; 51
 1b8:	00 80       	ld	r0, Z
 1ba:	00 1c       	adc	r0, r0
 1bc:	a7 00       	.word	0x00a7	; ????
 1be:	00 00       	nop
 1c0:	00 00       	nop
 1c2:	14 00       	.word	0x0014	; ????
 1c4:	00 00       	nop
 1c6:	01 05       	cpc	r16, r1
 1c8:	03 70       	andi	r16, 0x03	; 3
 1ca:	00 80       	ld	r0, Z
 1cc:	00 1d       	adc	r16, r0
 1ce:	ae 00       	.word	0x00ae	; ????
 1d0:	00 00       	nop
 1d2:	00 00       	nop
 1d4:	14 00       	.word	0x0014	; ????
 1d6:	00 00       	nop
 1d8:	01 05       	cpc	r16, r1
 1da:	03 37       	cpi	r16, 0x73	; 115
 1dc:	00 80       	ld	r0, Z
 1de:	00 1e       	adc	r0, r16
 1e0:	b4 00       	.word	0x00b4	; ????
 1e2:	00 00       	nop
 1e4:	00 00       	nop
 1e6:	14 00       	.word	0x0014	; ????
 1e8:	00 00       	nop
 1ea:	01 05       	cpc	r16, r1
 1ec:	03 b0       	in	r0, 0x03	; 3
 1ee:	00 80       	ld	r0, Z
 1f0:	00 1f       	adc	r16, r16
 1f2:	bb 00       	.word	0x00bb	; ????
 1f4:	00 00       	nop
 1f6:	00 00       	nop
 1f8:	14 00       	.word	0x0014	; ????
 1fa:	00 00       	nop
 1fc:	01 05       	cpc	r16, r1
 1fe:	03 b1       	in	r16, 0x03	; 3
 200:	00 80       	ld	r0, Z
 202:	00 20       	and	r0, r0
 204:	c2 00       	.word	0x00c2	; ????
 206:	00 00       	nop
 208:	00 00       	nop
 20a:	14 00       	.word	0x0014	; ????
 20c:	00 00       	nop
 20e:	01 05       	cpc	r16, r1
 210:	03 b2       	in	r0, 0x13	; 19
 212:	00 80       	ld	r0, Z
 214:	00 21       	and	r16, r0
 216:	c8 00       	.word	0x00c8	; ????
 218:	00 00       	nop
 21a:	00 00       	nop
 21c:	14 00       	.word	0x0014	; ????
 21e:	00 00       	nop
 220:	01 05       	cpc	r16, r1
 222:	03 b4       	in	r0, 0x23	; 35
 224:	00 80       	ld	r0, Z
 226:	00 22       	and	r0, r16
 228:	ce 00       	.word	0x00ce	; ????
 22a:	00 00       	nop
 22c:	00 00       	nop
 22e:	14 00       	.word	0x0014	; ????
 230:	00 00       	nop
 232:	01 05       	cpc	r16, r1
 234:	03 b3       	in	r16, 0x13	; 19
 236:	00 80       	ld	r0, Z
 238:	00 23       	and	r16, r16
 23a:	d4 00       	.word	0x00d4	; ????
 23c:	00 00       	nop
 23e:	00 00       	nop
 240:	14 00       	.word	0x0014	; ????
 242:	00 00       	nop
 244:	01 05       	cpc	r16, r1
 246:	03 b6       	in	r0, 0x33	; 51
 248:	00 80       	ld	r0, Z
 24a:	00 24       	eor	r0, r0
 24c:	d9 00       	.word	0x00d9	; ????
 24e:	00 00       	nop
 250:	00 00       	nop
 252:	14 00       	.word	0x0014	; ????
 254:	00 00       	nop
 256:	01 05       	cpc	r16, r1
 258:	03 43       	sbci	r16, 0x33	; 51
 25a:	00 80       	ld	r0, Z
 25c:	00 25       	eor	r16, r0
 25e:	df 00       	.word	0x00df	; ????
 260:	00 00       	nop
 262:	00 00       	nop
 264:	14 00       	.word	0x0014	; ????
 266:	00 00       	nop
 268:	01 05       	cpc	r16, r1
 26a:	03 7c       	andi	r16, 0xC3	; 195
 26c:	00 80       	ld	r0, Z
 26e:	00 26       	eor	r0, r16
 270:	e5 00       	.word	0x00e5	; ????
 272:	00 00       	nop
 274:	00 00       	nop
 276:	1b 00       	.word	0x001b	; ????
 278:	00 00       	nop
 27a:	01 05       	cpc	r16, r1
 27c:	03 78       	andi	r16, 0x83	; 131
 27e:	00 80       	ld	r0, Z
 280:	00 27       	eor	r16, r16
 282:	e9 00       	.word	0x00e9	; ????
 284:	00 00       	nop
 286:	00 00       	nop
 288:	14 00       	.word	0x0014	; ????
 28a:	00 00       	nop
 28c:	01 05       	cpc	r16, r1
 28e:	03 7a       	andi	r16, 0xA3	; 163
 290:	00 80       	ld	r0, Z
 292:	00 28       	or	r0, r0
 294:	f0 00       	.word	0x00f0	; ????
 296:	00 00       	nop
 298:	00 00       	nop
 29a:	14 00       	.word	0x0014	; ????
 29c:	00 00       	nop
 29e:	01 05       	cpc	r16, r1
 2a0:	03 7b       	andi	r16, 0xB3	; 179
 2a2:	00 80       	ld	r0, Z
 2a4:	00 29       	or	r16, r0
 2a6:	f7 00       	.word	0x00f7	; ????
 2a8:	00 00       	nop
 2aa:	00 00       	nop
 2ac:	14 00       	.word	0x0014	; ????
 2ae:	00 00       	nop
 2b0:	01 05       	cpc	r16, r1
 2b2:	03 7e       	andi	r16, 0xE3	; 227
 2b4:	00 80       	ld	r0, Z
 2b6:	00 2a       	or	r0, r16
 2b8:	fd 00       	.word	0x00fd	; ????
 2ba:	00 00       	nop
 2bc:	00 00       	nop
 2be:	14 00       	.word	0x0014	; ????
 2c0:	00 00       	nop
 2c2:	01 05       	cpc	r16, r1
 2c4:	03 50       	subi	r16, 0x03	; 3
 2c6:	00 80       	ld	r0, Z
 2c8:	00 2b       	or	r16, r16
 2ca:	02 01       	movw	r0, r4
 2cc:	00 00       	nop
 2ce:	00 00       	nop
 2d0:	14 00       	.word	0x0014	; ????
 2d2:	00 00       	nop
 2d4:	01 05       	cpc	r16, r1
 2d6:	03 7f       	andi	r16, 0xF3	; 243
 2d8:	00 80       	ld	r0, Z
 2da:	00 2c       	mov	r0, r0
 2dc:	08 01       	movw	r0, r16
 2de:	00 00       	nop
 2e0:	00 00       	nop
 2e2:	14 00       	.word	0x0014	; ????
 2e4:	00 00       	nop
 2e6:	01 05       	cpc	r16, r1
 2e8:	03 25       	eor	r16, r3
 2ea:	00 80       	ld	r0, Z
 2ec:	00 2d       	mov	r16, r0
 2ee:	0e 01       	movw	r0, r28
 2f0:	00 00       	nop
 2f2:	00 00       	nop
 2f4:	14 00       	.word	0x0014	; ????
 2f6:	00 00       	nop
 2f8:	01 05       	cpc	r16, r1
 2fa:	03 24       	eor	r0, r3
 2fc:	00 80       	ld	r0, Z
 2fe:	00 2e       	mov	r0, r16
 300:	13 01       	movw	r2, r6
 302:	00 00       	nop
 304:	00 00       	nop
 306:	14 00       	.word	0x0014	; ????
 308:	00 00       	nop
 30a:	01 05       	cpc	r16, r1
 30c:	03 23       	and	r16, r19
 30e:	00 80       	ld	r0, Z
 310:	00 2f       	mov	r16, r16
 312:	18 01       	movw	r2, r16
 314:	00 00       	nop
 316:	00 00       	nop
 318:	14 00       	.word	0x0014	; ????
 31a:	00 00       	nop
 31c:	01 05       	cpc	r16, r1
 31e:	03 28       	or	r0, r3
 320:	00 80       	ld	r0, Z
 322:	00 30       	cpi	r16, 0x00	; 0
 324:	1e 01       	movw	r2, r28
 326:	00 00       	nop
 328:	00 00       	nop
 32a:	14 00       	.word	0x0014	; ????
 32c:	00 00       	nop
 32e:	01 05       	cpc	r16, r1
 330:	03 27       	eor	r16, r19
 332:	00 80       	ld	r0, Z
 334:	00 31       	cpi	r16, 0x10	; 16
 336:	23 01       	movw	r4, r6
 338:	00 00       	nop
 33a:	00 00       	nop
 33c:	14 00       	.word	0x0014	; ????
 33e:	00 00       	nop
 340:	01 05       	cpc	r16, r1
 342:	03 26       	eor	r0, r19
 344:	00 80       	ld	r0, Z
 346:	00 32       	cpi	r16, 0x20	; 32
 348:	28 01       	movw	r4, r16
 34a:	00 00       	nop
 34c:	00 00       	nop
 34e:	14 00       	.word	0x0014	; ????
 350:	00 00       	nop
 352:	01 05       	cpc	r16, r1
 354:	03 2b       	or	r16, r19
 356:	00 80       	ld	r0, Z
 358:	00 33       	cpi	r16, 0x30	; 48
 35a:	2e 01       	movw	r4, r28
 35c:	00 00       	nop
 35e:	00 00       	nop
 360:	14 00       	.word	0x0014	; ????
 362:	00 00       	nop
 364:	01 05       	cpc	r16, r1
 366:	03 2a       	or	r0, r19
 368:	00 80       	ld	r0, Z
 36a:	00 34       	cpi	r16, 0x40	; 64
 36c:	33 01       	movw	r6, r6
 36e:	00 00       	nop
 370:	00 00       	nop
 372:	14 00       	.word	0x0014	; ????
 374:	00 00       	nop
 376:	01 05       	cpc	r16, r1
 378:	03 29       	or	r16, r3
 37a:	00 80       	ld	r0, Z
 37c:	00 35       	cpi	r16, 0x50	; 80
 37e:	38 01       	movw	r6, r16
 380:	00 00       	nop
 382:	00 00       	nop
 384:	14 00       	.word	0x0014	; ????
 386:	00 00       	nop
 388:	01 05       	cpc	r16, r1
 38a:	03 48       	sbci	r16, 0x83	; 131
 38c:	00 80       	ld	r0, Z
 38e:	00 36       	cpi	r16, 0x60	; 96
 390:	3e 01       	movw	r6, r28
 392:	00 00       	nop
 394:	00 00       	nop
 396:	14 00       	.word	0x0014	; ????
 398:	00 00       	nop
 39a:	01 05       	cpc	r16, r1
 39c:	03 47       	sbci	r16, 0x73	; 115
 39e:	00 80       	ld	r0, Z
 3a0:	00 37       	cpi	r16, 0x70	; 112
 3a2:	44 01       	movw	r8, r8
 3a4:	00 00       	nop
 3a6:	00 00       	nop
 3a8:	14 00       	.word	0x0014	; ????
 3aa:	00 00       	nop
 3ac:	01 05       	cpc	r16, r1
 3ae:	03 46       	sbci	r16, 0x63	; 99
 3b0:	00 80       	ld	r0, Z
 3b2:	00 38       	cpi	r16, 0x80	; 128
 3b4:	4a 01       	movw	r8, r20
 3b6:	00 00       	nop
 3b8:	00 00       	nop
 3ba:	14 00       	.word	0x0014	; ????
 3bc:	00 00       	nop
 3be:	01 05       	cpc	r16, r1
 3c0:	03 45       	sbci	r16, 0x53	; 83
 3c2:	00 80       	ld	r0, Z
 3c4:	00 39       	cpi	r16, 0x90	; 144
 3c6:	51 01       	movw	r10, r2
 3c8:	00 00       	nop
 3ca:	00 00       	nop
 3cc:	14 00       	.word	0x0014	; ????
 3ce:	00 00       	nop
 3d0:	01 05       	cpc	r16, r1
 3d2:	03 44       	sbci	r16, 0x43	; 67
 3d4:	00 80       	ld	r0, Z
 3d6:	00 3a       	cpi	r16, 0xA0	; 160
 3d8:	58 01       	movw	r10, r16
 3da:	00 00       	nop
 3dc:	00 00       	nop
 3de:	14 00       	.word	0x0014	; ????
 3e0:	00 00       	nop
 3e2:	01 05       	cpc	r16, r1
 3e4:	03 6e       	ori	r16, 0xE3	; 227
 3e6:	00 80       	ld	r0, Z
 3e8:	00 3b       	cpi	r16, 0xB0	; 176
 3ea:	5f 01       	movw	r10, r30
 3ec:	00 00       	nop
 3ee:	00 00       	nop
 3f0:	14 00       	.word	0x0014	; ????
 3f2:	00 00       	nop
 3f4:	01 05       	cpc	r16, r1
 3f6:	03 35       	cpi	r16, 0x53	; 83
 3f8:	00 80       	ld	r0, Z
 3fa:	00 3c       	cpi	r16, 0xC0	; 192
 3fc:	65 01       	movw	r12, r10
 3fe:	00 00       	nop
 400:	00 00       	nop
 402:	14 00       	.word	0x0014	; ????
 404:	00 00       	nop
 406:	01 05       	cpc	r16, r1
 408:	03 43       	sbci	r16, 0x33	; 51
 40a:	00 80       	ld	r0, Z
 40c:	00 3d       	cpi	r16, 0xD0	; 208
 40e:	6b 01       	movw	r12, r22
 410:	00 00       	nop
 412:	00 00       	nop
 414:	14 00       	.word	0x0014	; ????
 416:	00 00       	nop
 418:	01 05       	cpc	r16, r1
 41a:	03 69       	ori	r16, 0x93	; 147
 41c:	00 80       	ld	r0, Z
 41e:	00 3e       	cpi	r16, 0xE0	; 224
 420:	71 01       	movw	r14, r2
 422:	00 00       	nop
 424:	00 00       	nop
 426:	14 00       	.word	0x0014	; ????
 428:	00 00       	nop
 42a:	01 05       	cpc	r16, r1
 42c:	03 3d       	cpi	r16, 0xD3	; 211
 42e:	00 80       	ld	r0, Z
 430:	00 3f       	cpi	r16, 0xF0	; 240
 432:	77 01       	movw	r14, r14
 434:	00 00       	nop
 436:	00 00       	nop
 438:	14 00       	.word	0x0014	; ????
 43a:	00 00       	nop
 43c:	01 05       	cpc	r16, r1
 43e:	03 3c       	cpi	r16, 0xC3	; 195
 440:	00 80       	ld	r0, Z
 442:	00 40       	sbci	r16, 0x00	; 0
 444:	7c 01       	movw	r14, r24
 446:	00 00       	nop
 448:	00 00       	nop
 44a:	14 00       	.word	0x0014	; ????
 44c:	00 00       	nop
 44e:	01 05       	cpc	r16, r1
 450:	03 68       	ori	r16, 0x83	; 131
 452:	00 80       	ld	r0, Z
 454:	00 41       	sbci	r16, 0x10	; 16
 456:	82 01       	movw	r16, r4
 458:	00 00       	nop
 45a:	00 00       	nop
 45c:	14 00       	.word	0x0014	; ????
 45e:	00 00       	nop
 460:	01 05       	cpc	r16, r1
 462:	03 6d       	ori	r16, 0xD3	; 211
 464:	00 80       	ld	r0, Z
 466:	00 42       	sbci	r16, 0x20	; 32
 468:	89 01       	movw	r16, r18
 46a:	00 00       	nop
 46c:	00 00       	nop
 46e:	14 00       	.word	0x0014	; ????
 470:	00 00       	nop
 472:	01 05       	cpc	r16, r1
 474:	03 6c       	ori	r16, 0xC3	; 195
 476:	00 80       	ld	r0, Z
 478:	00 43       	sbci	r16, 0x30	; 48
 47a:	90 01       	movw	r18, r0
 47c:	00 00       	nop
 47e:	00 00       	nop
 480:	14 00       	.word	0x0014	; ????
 482:	00 00       	nop
 484:	01 05       	cpc	r16, r1
 486:	03 6b       	ori	r16, 0xB3	; 179
 488:	00 80       	ld	r0, Z
 48a:	00 44       	sbci	r16, 0x40	; 64
 48c:	97 01       	movw	r18, r14
 48e:	00 00       	nop
 490:	00 00       	nop
 492:	14 00       	.word	0x0014	; ????
 494:	00 00       	nop
 496:	01 05       	cpc	r16, r1
 498:	03 3b       	cpi	r16, 0xB3	; 179
 49a:	00 80       	ld	r0, Z
 49c:	00 45       	sbci	r16, 0x50	; 80
 49e:	9d 01       	movw	r18, r26
 4a0:	00 00       	nop
 4a2:	00 00       	nop
 4a4:	14 00       	.word	0x0014	; ????
 4a6:	00 00       	nop
 4a8:	01 05       	cpc	r16, r1
 4aa:	03 4e       	sbci	r16, 0xE3	; 227
 4ac:	00 80       	ld	r0, Z
 4ae:	00 46       	sbci	r16, 0x60	; 96
 4b0:	a2 01       	movw	r20, r4
 4b2:	00 00       	nop
 4b4:	00 00       	nop
 4b6:	14 00       	.word	0x0014	; ????
 4b8:	00 00       	nop
 4ba:	01 05       	cpc	r16, r1
 4bc:	03 4d       	sbci	r16, 0xD3	; 211
 4be:	00 80       	ld	r0, Z
 4c0:	00 47       	sbci	r16, 0x70	; 112
 4c2:	a7 01       	movw	r20, r14
 4c4:	00 00       	nop
 4c6:	00 00       	nop
 4c8:	14 00       	.word	0x0014	; ????
 4ca:	00 00       	nop
 4cc:	01 05       	cpc	r16, r1
 4ce:	03 4c       	sbci	r16, 0xC3	; 195
 4d0:	00 80       	ld	r0, Z
 4d2:	00 48       	sbci	r16, 0x80	; 128
 4d4:	ac 01       	movw	r20, r24
 4d6:	00 00       	nop
 4d8:	00 00       	nop
 4da:	14 00       	.word	0x0014	; ????
 4dc:	00 00       	nop
 4de:	01 05       	cpc	r16, r1
 4e0:	03 60       	ori	r16, 0x03	; 3
 4e2:	00 80       	ld	r0, Z
 4e4:	00 49       	sbci	r16, 0x90	; 144
 4e6:	b3 01       	movw	r22, r6
 4e8:	00 00       	nop
 4ea:	00 00       	nop
 4ec:	14 00       	.word	0x0014	; ????
 4ee:	00 00       	nop
 4f0:	01 05       	cpc	r16, r1
 4f2:	03 64       	ori	r16, 0x43	; 67
 4f4:	00 80       	ld	r0, Z
 4f6:	00 4a       	sbci	r16, 0xA0	; 160
 4f8:	b7 01       	movw	r22, r14
 4fa:	00 00       	nop
 4fc:	00 00       	nop
 4fe:	14 00       	.word	0x0014	; ????
 500:	00 00       	nop
 502:	01 05       	cpc	r16, r1
 504:	03 66       	ori	r16, 0x63	; 99
 506:	00 80       	ld	r0, Z
 508:	00 4b       	sbci	r16, 0xB0	; 176
 50a:	be 01       	movw	r22, r28
 50c:	00 00       	nop
 50e:	00 00       	nop
 510:	14 00       	.word	0x0014	; ????
 512:	00 00       	nop
 514:	01 05       	cpc	r16, r1
 516:	03 61       	ori	r16, 0x13	; 19
 518:	00 80       	ld	r0, Z
 51a:	00 4c       	sbci	r16, 0xC0	; 192
 51c:	c4 01       	movw	r24, r8
 51e:	00 00       	nop
 520:	00 00       	nop
 522:	14 00       	.word	0x0014	; ????
 524:	00 00       	nop
 526:	01 05       	cpc	r16, r1
 528:	03 5f       	subi	r16, 0xF3	; 243
 52a:	00 80       	ld	r0, Z
 52c:	00 4d       	sbci	r16, 0xD0	; 208
 52e:	c9 01       	movw	r24, r18
 530:	00 00       	nop
 532:	00 00       	nop
 534:	1b 00       	.word	0x001b	; ????
 536:	00 00       	nop
 538:	01 05       	cpc	r16, r1
 53a:	03 5d       	subi	r16, 0xD3	; 211
 53c:	00 80       	ld	r0, Z
 53e:	00 4e       	sbci	r16, 0xE0	; 224
 540:	cc 01       	movw	r24, r24
 542:	00 00       	nop
 544:	00 00       	nop
 546:	14 00       	.word	0x0014	; ????
 548:	00 00       	nop
 54a:	01 05       	cpc	r16, r1
 54c:	03 57       	subi	r16, 0x73	; 115
 54e:	00 80       	ld	r0, Z
 550:	00 4f       	sbci	r16, 0xF0	; 240
 552:	d3 01       	movw	r26, r6
 554:	00 00       	nop
 556:	00 00       	nop
 558:	14 00       	.word	0x0014	; ????
 55a:	00 00       	nop
 55c:	01 05       	cpc	r16, r1
 55e:	03 55       	subi	r16, 0x53	; 83
 560:	00 80       	ld	r0, Z
 562:	00 50       	subi	r16, 0x00	; 0
 564:	d9 01       	movw	r26, r18
 566:	00 00       	nop
 568:	00 00       	nop
 56a:	14 00       	.word	0x0014	; ????
 56c:	00 00       	nop
 56e:	01 05       	cpc	r16, r1
 570:	03 54       	subi	r16, 0x43	; 67
 572:	00 80       	ld	r0, Z
 574:	00 51       	subi	r16, 0x10	; 16
 576:	df 01       	movw	r26, r30
 578:	00 00       	nop
 57a:	00 00       	nop
 57c:	14 00       	.word	0x0014	; ????
 57e:	00 00       	nop
 580:	01 05       	cpc	r16, r1
 582:	03 53       	subi	r16, 0x33	; 51
 584:	00 80       	ld	r0, Z
 586:	00 52       	subi	r16, 0x20	; 32
 588:	e4 01       	movw	r28, r8
 58a:	00 00       	nop
 58c:	00 00       	nop
 58e:	14 00       	.word	0x0014	; ????
 590:	00 00       	nop
 592:	01 05       	cpc	r16, r1
 594:	03 4b       	sbci	r16, 0xB3	; 179
 596:	00 80       	ld	r0, Z
 598:	00 53       	subi	r16, 0x30	; 48
 59a:	eb 01       	movw	r28, r22
 59c:	00 00       	nop
 59e:	00 00       	nop
 5a0:	14 00       	.word	0x0014	; ????
 5a2:	00 00       	nop
 5a4:	01 05       	cpc	r16, r1
 5a6:	03 4a       	sbci	r16, 0xA3	; 163
 5a8:	00 80       	ld	r0, Z
 5aa:	00 54       	subi	r16, 0x40	; 64
 5ac:	f2 01       	movw	r30, r4
 5ae:	00 00       	nop
 5b0:	00 00       	nop
 5b2:	14 00       	.word	0x0014	; ????
 5b4:	00 00       	nop
 5b6:	01 05       	cpc	r16, r1
 5b8:	03 3e       	cpi	r16, 0xE3	; 227
 5ba:	00 80       	ld	r0, Z
 5bc:	00 55       	subi	r16, 0x50	; 80
 5be:	f9 01       	movw	r30, r18
 5c0:	00 00       	nop
 5c2:	00 00       	nop
 5c4:	1b 00       	.word	0x001b	; ????
 5c6:	00 00       	nop
 5c8:	01 05       	cpc	r16, r1
 5ca:	03 41       	sbci	r16, 0x13	; 19
 5cc:	00 80       	ld	r0, Z
 5ce:	00 56       	subi	r16, 0x60	; 96
 5d0:	fe 01       	movw	r30, r28
 5d2:	00 00       	nop
 5d4:	00 00       	nop
 5d6:	14 00       	.word	0x0014	; ????
 5d8:	00 00       	nop
 5da:	01 05       	cpc	r16, r1
 5dc:	03 40       	sbci	r16, 0x03	; 3
 5de:	00 80       	ld	r0, Z
 5e0:	00 57       	subi	r16, 0x70	; 112
 5e2:	03 02       	muls	r16, r19
 5e4:	00 00       	nop
 5e6:	00 00       	nop
 5e8:	14 00       	.word	0x0014	; ????
 5ea:	00 00       	nop
 5ec:	01 05       	cpc	r16, r1
 5ee:	03 3f       	cpi	r16, 0xF3	; 243
 5f0:	00 80       	ld	r0, Z
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11       	cpse	r16, r1
   2:	01 25       	eor	r16, r1
   4:	0e 10       	cpse	r0, r14
   6:	06 00       	.word	0x0006	; ????
   8:	00 02       	muls	r16, r16
   a:	24 00       	.word	0x0024	; ????
   c:	03 0e       	add	r0, r19
   e:	0b 0b       	sbc	r16, r27
  10:	3e 0b       	sbc	r19, r30
  12:	00 00       	nop
  14:	03 24       	eor	r0, r3
  16:	00 03       	mulsu	r16, r16
  18:	0e 0b       	sbc	r16, r30
  1a:	0b 3e       	cpi	r16, 0xEB	; 235
  1c:	0b 00       	.word	0x000b	; ????
  1e:	00 04       	cpc	r0, r0
  20:	01 01       	movw	r0, r2
  22:	49 13       	cpse	r20, r25
  24:	00 00       	nop
  26:	05 21       	and	r16, r5
  28:	00 49       	sbci	r16, 0x90	; 144
  2a:	13 2f       	mov	r17, r19
  2c:	05 00       	.word	0x0005	; ????
  2e:	00 06       	cpc	r0, r16
  30:	34 00       	.word	0x0034	; ????
  32:	03 0e       	add	r0, r19
  34:	3a 0b       	sbc	r19, r26
  36:	3b 0b       	sbc	r19, r27
  38:	49 13       	cpse	r20, r25
  3a:	3f 0c       	add	r3, r15
  3c:	02 0a       	sbc	r0, r18
  3e:	00 00       	nop
  40:	07 34       	cpi	r16, 0x47	; 71
  42:	00 03       	mulsu	r16, r16
  44:	0e 3a       	cpi	r16, 0xAE	; 174
  46:	0b 3b       	cpi	r16, 0xBB	; 187
  48:	0b 49       	sbci	r16, 0x9B	; 155
  4a:	13 3f       	cpi	r17, 0xF3	; 243
  4c:	0c 02       	muls	r16, r28
  4e:	0a 00       	.word	0x000a	; ????
  50:	00 08       	sbc	r0, r0
  52:	34 00       	.word	0x0034	; ????
  54:	03 0e       	add	r0, r19
  56:	3a 0b       	sbc	r19, r26
  58:	3b 0b       	sbc	r19, r27
  5a:	49 13       	cpse	r20, r25
  5c:	3f 0c       	add	r3, r15
  5e:	02 0a       	sbc	r0, r18
  60:	00 00       	nop
  62:	09 34       	cpi	r16, 0x49	; 73
  64:	00 03       	mulsu	r16, r16
  66:	0e 3a       	cpi	r16, 0xAE	; 174
  68:	0b 3b       	cpi	r16, 0xBB	; 187
  6a:	0b 49       	sbci	r16, 0x9B	; 155
  6c:	13 3f       	cpi	r17, 0xF3	; 243
  6e:	0c 02       	muls	r16, r28
  70:	0a 00       	.word	0x000a	; ????
  72:	00 0a       	sbc	r0, r16
  74:	34 00       	.word	0x0034	; ????
  76:	03 0e       	add	r0, r19
  78:	3a 0b       	sbc	r19, r26
  7a:	3b 0b       	sbc	r19, r27
  7c:	49 13       	cpse	r20, r25
  7e:	3f 0c       	add	r3, r15
  80:	02 0a       	sbc	r0, r18
  82:	00 00       	nop
  84:	0b 34       	cpi	r16, 0x4B	; 75
  86:	00 03       	mulsu	r16, r16
  88:	0e 3a       	cpi	r16, 0xAE	; 174
  8a:	0b 3b       	cpi	r16, 0xBB	; 187
  8c:	0b 49       	sbci	r16, 0x9B	; 155
  8e:	13 3f       	cpi	r17, 0xF3	; 243
  90:	0c 02       	muls	r16, r28
  92:	0a 00       	.word	0x000a	; ????
  94:	00 0c       	add	r0, r0
  96:	34 00       	.word	0x0034	; ????
  98:	03 0e       	add	r0, r19
  9a:	3a 0b       	sbc	r19, r26
  9c:	3b 0b       	sbc	r19, r27
  9e:	49 13       	cpse	r20, r25
  a0:	3f 0c       	add	r3, r15
  a2:	02 0a       	sbc	r0, r18
  a4:	00 00       	nop
  a6:	0d 34       	cpi	r16, 0x4D	; 77
  a8:	00 03       	mulsu	r16, r16
  aa:	0e 3a       	cpi	r16, 0xAE	; 174
  ac:	0b 3b       	cpi	r16, 0xBB	; 187
  ae:	0b 49       	sbci	r16, 0x9B	; 155
  b0:	13 3f       	cpi	r17, 0xF3	; 243
  b2:	0c 02       	muls	r16, r28
  b4:	0a 00       	.word	0x000a	; ????
  b6:	00 0e       	add	r0, r16
  b8:	34 00       	.word	0x0034	; ????
  ba:	03 0e       	add	r0, r19
  bc:	3a 0b       	sbc	r19, r26
  be:	3b 0b       	sbc	r19, r27
  c0:	49 13       	cpse	r20, r25
  c2:	3f 0c       	add	r3, r15
  c4:	02 0a       	sbc	r0, r18
  c6:	00 00       	nop
  c8:	0f 34       	cpi	r16, 0x4F	; 79
  ca:	00 03       	mulsu	r16, r16
  cc:	0e 3a       	cpi	r16, 0xAE	; 174
  ce:	0b 3b       	cpi	r16, 0xBB	; 187
  d0:	0b 49       	sbci	r16, 0x9B	; 155
  d2:	13 3f       	cpi	r17, 0xF3	; 243
  d4:	0c 02       	muls	r16, r28
  d6:	0a 00       	.word	0x000a	; ????
  d8:	00 10       	cpse	r0, r0
  da:	34 00       	.word	0x0034	; ????
  dc:	03 0e       	add	r0, r19
  de:	3a 0b       	sbc	r19, r26
  e0:	3b 0b       	sbc	r19, r27
  e2:	49 13       	cpse	r20, r25
  e4:	3f 0c       	add	r3, r15
  e6:	02 0a       	sbc	r0, r18
  e8:	00 00       	nop
  ea:	11 34       	cpi	r17, 0x41	; 65
  ec:	00 03       	mulsu	r16, r16
  ee:	0e 3a       	cpi	r16, 0xAE	; 174
  f0:	0b 3b       	cpi	r16, 0xBB	; 187
  f2:	0b 49       	sbci	r16, 0x9B	; 155
  f4:	13 3f       	cpi	r17, 0xF3	; 243
  f6:	0c 02       	muls	r16, r28
  f8:	0a 00       	.word	0x000a	; ????
  fa:	00 12       	cpse	r0, r16
  fc:	34 00       	.word	0x0034	; ????
  fe:	03 0e       	add	r0, r19
 100:	3a 0b       	sbc	r19, r26
 102:	3b 0b       	sbc	r19, r27
 104:	49 13       	cpse	r20, r25
 106:	3f 0c       	add	r3, r15
 108:	02 0a       	sbc	r0, r18
 10a:	00 00       	nop
 10c:	13 34       	cpi	r17, 0x43	; 67
 10e:	00 03       	mulsu	r16, r16
 110:	0e 3a       	cpi	r16, 0xAE	; 174
 112:	0b 3b       	cpi	r16, 0xBB	; 187
 114:	0b 49       	sbci	r16, 0x9B	; 155
 116:	13 3f       	cpi	r17, 0xF3	; 243
 118:	0c 02       	muls	r16, r28
 11a:	0a 00       	.word	0x000a	; ????
 11c:	00 14       	cp	r0, r0
 11e:	34 00       	.word	0x0034	; ????
 120:	03 0e       	add	r0, r19
 122:	3a 0b       	sbc	r19, r26
 124:	3b 0b       	sbc	r19, r27
 126:	49 13       	cpse	r20, r25
 128:	3f 0c       	add	r3, r15
 12a:	02 0a       	sbc	r0, r18
 12c:	00 00       	nop
 12e:	15 34       	cpi	r17, 0x45	; 69
 130:	00 03       	mulsu	r16, r16
 132:	0e 3a       	cpi	r16, 0xAE	; 174
 134:	0b 3b       	cpi	r16, 0xBB	; 187
 136:	0b 49       	sbci	r16, 0x9B	; 155
 138:	13 3f       	cpi	r17, 0xF3	; 243
 13a:	0c 02       	muls	r16, r28
 13c:	0a 00       	.word	0x000a	; ????
 13e:	00 16       	cp	r0, r16
 140:	34 00       	.word	0x0034	; ????
 142:	03 0e       	add	r0, r19
 144:	3a 0b       	sbc	r19, r26
 146:	3b 0b       	sbc	r19, r27
 148:	49 13       	cpse	r20, r25
 14a:	3f 0c       	add	r3, r15
 14c:	02 0a       	sbc	r0, r18
 14e:	00 00       	nop
 150:	17 34       	cpi	r17, 0x47	; 71
 152:	00 03       	mulsu	r16, r16
 154:	0e 3a       	cpi	r16, 0xAE	; 174
 156:	0b 3b       	cpi	r16, 0xBB	; 187
 158:	0b 49       	sbci	r16, 0x9B	; 155
 15a:	13 3f       	cpi	r17, 0xF3	; 243
 15c:	0c 02       	muls	r16, r28
 15e:	0a 00       	.word	0x000a	; ????
 160:	00 18       	sub	r0, r0
 162:	34 00       	.word	0x0034	; ????
 164:	03 0e       	add	r0, r19
 166:	3a 0b       	sbc	r19, r26
 168:	3b 0b       	sbc	r19, r27
 16a:	49 13       	cpse	r20, r25
 16c:	3f 0c       	add	r3, r15
 16e:	02 0a       	sbc	r0, r18
 170:	00 00       	nop
 172:	19 34       	cpi	r17, 0x49	; 73
 174:	00 03       	mulsu	r16, r16
 176:	0e 3a       	cpi	r16, 0xAE	; 174
 178:	0b 3b       	cpi	r16, 0xBB	; 187
 17a:	0b 49       	sbci	r16, 0x9B	; 155
 17c:	13 3f       	cpi	r17, 0xF3	; 243
 17e:	0c 02       	muls	r16, r28
 180:	0a 00       	.word	0x000a	; ????
 182:	00 1a       	sub	r0, r16
 184:	34 00       	.word	0x0034	; ????
 186:	03 0e       	add	r0, r19
 188:	3a 0b       	sbc	r19, r26
 18a:	3b 0b       	sbc	r19, r27
 18c:	49 13       	cpse	r20, r25
 18e:	3f 0c       	add	r3, r15
 190:	02 0a       	sbc	r0, r18
 192:	00 00       	nop
 194:	1b 34       	cpi	r17, 0x4B	; 75
 196:	00 03       	mulsu	r16, r16
 198:	0e 3a       	cpi	r16, 0xAE	; 174
 19a:	0b 3b       	cpi	r16, 0xBB	; 187
 19c:	0b 49       	sbci	r16, 0x9B	; 155
 19e:	13 3f       	cpi	r17, 0xF3	; 243
 1a0:	0c 02       	muls	r16, r28
 1a2:	0a 00       	.word	0x000a	; ????
 1a4:	00 1c       	adc	r0, r0
 1a6:	34 00       	.word	0x0034	; ????
 1a8:	03 0e       	add	r0, r19
 1aa:	3a 0b       	sbc	r19, r26
 1ac:	3b 0b       	sbc	r19, r27
 1ae:	49 13       	cpse	r20, r25
 1b0:	3f 0c       	add	r3, r15
 1b2:	02 0a       	sbc	r0, r18
 1b4:	00 00       	nop
 1b6:	1d 34       	cpi	r17, 0x4D	; 77
 1b8:	00 03       	mulsu	r16, r16
 1ba:	0e 3a       	cpi	r16, 0xAE	; 174
 1bc:	0b 3b       	cpi	r16, 0xBB	; 187
 1be:	0b 49       	sbci	r16, 0x9B	; 155
 1c0:	13 3f       	cpi	r17, 0xF3	; 243
 1c2:	0c 02       	muls	r16, r28
 1c4:	0a 00       	.word	0x000a	; ????
 1c6:	00 1e       	adc	r0, r16
 1c8:	34 00       	.word	0x0034	; ????
 1ca:	03 0e       	add	r0, r19
 1cc:	3a 0b       	sbc	r19, r26
 1ce:	3b 0b       	sbc	r19, r27
 1d0:	49 13       	cpse	r20, r25
 1d2:	3f 0c       	add	r3, r15
 1d4:	02 0a       	sbc	r0, r18
 1d6:	00 00       	nop
 1d8:	1f 34       	cpi	r17, 0x4F	; 79
 1da:	00 03       	mulsu	r16, r16
 1dc:	0e 3a       	cpi	r16, 0xAE	; 174
 1de:	0b 3b       	cpi	r16, 0xBB	; 187
 1e0:	0b 49       	sbci	r16, 0x9B	; 155
 1e2:	13 3f       	cpi	r17, 0xF3	; 243
 1e4:	0c 02       	muls	r16, r28
 1e6:	0a 00       	.word	0x000a	; ????
 1e8:	00 20       	and	r0, r0
 1ea:	34 00       	.word	0x0034	; ????
 1ec:	03 0e       	add	r0, r19
 1ee:	3a 0b       	sbc	r19, r26
 1f0:	3b 0b       	sbc	r19, r27
 1f2:	49 13       	cpse	r20, r25
 1f4:	3f 0c       	add	r3, r15
 1f6:	02 0a       	sbc	r0, r18
 1f8:	00 00       	nop
 1fa:	21 34       	cpi	r18, 0x41	; 65
 1fc:	00 03       	mulsu	r16, r16
 1fe:	0e 3a       	cpi	r16, 0xAE	; 174
 200:	0b 3b       	cpi	r16, 0xBB	; 187
 202:	0b 49       	sbci	r16, 0x9B	; 155
 204:	13 3f       	cpi	r17, 0xF3	; 243
 206:	0c 02       	muls	r16, r28
 208:	0a 00       	.word	0x000a	; ????
 20a:	00 22       	and	r0, r16
 20c:	34 00       	.word	0x0034	; ????
 20e:	03 0e       	add	r0, r19
 210:	3a 0b       	sbc	r19, r26
 212:	3b 0b       	sbc	r19, r27
 214:	49 13       	cpse	r20, r25
 216:	3f 0c       	add	r3, r15
 218:	02 0a       	sbc	r0, r18
 21a:	00 00       	nop
 21c:	23 34       	cpi	r18, 0x43	; 67
 21e:	00 03       	mulsu	r16, r16
 220:	0e 3a       	cpi	r16, 0xAE	; 174
 222:	0b 3b       	cpi	r16, 0xBB	; 187
 224:	0b 49       	sbci	r16, 0x9B	; 155
 226:	13 3f       	cpi	r17, 0xF3	; 243
 228:	0c 02       	muls	r16, r28
 22a:	0a 00       	.word	0x000a	; ????
 22c:	00 24       	eor	r0, r0
 22e:	34 00       	.word	0x0034	; ????
 230:	03 0e       	add	r0, r19
 232:	3a 0b       	sbc	r19, r26
 234:	3b 0b       	sbc	r19, r27
 236:	49 13       	cpse	r20, r25
 238:	3f 0c       	add	r3, r15
 23a:	02 0a       	sbc	r0, r18
 23c:	00 00       	nop
 23e:	25 34       	cpi	r18, 0x45	; 69
 240:	00 03       	mulsu	r16, r16
 242:	0e 3a       	cpi	r16, 0xAE	; 174
 244:	0b 3b       	cpi	r16, 0xBB	; 187
 246:	0b 49       	sbci	r16, 0x9B	; 155
 248:	13 3f       	cpi	r17, 0xF3	; 243
 24a:	0c 02       	muls	r16, r28
 24c:	0a 00       	.word	0x000a	; ????
 24e:	00 26       	eor	r0, r16
 250:	34 00       	.word	0x0034	; ????
 252:	03 0e       	add	r0, r19
 254:	3a 0b       	sbc	r19, r26
 256:	3b 0b       	sbc	r19, r27
 258:	49 13       	cpse	r20, r25
 25a:	3f 0c       	add	r3, r15
 25c:	02 0a       	sbc	r0, r18
 25e:	00 00       	nop
 260:	27 34       	cpi	r18, 0x47	; 71
 262:	00 03       	mulsu	r16, r16
 264:	0e 3a       	cpi	r16, 0xAE	; 174
 266:	0b 3b       	cpi	r16, 0xBB	; 187
 268:	0b 49       	sbci	r16, 0x9B	; 155
 26a:	13 3f       	cpi	r17, 0xF3	; 243
 26c:	0c 02       	muls	r16, r28
 26e:	0a 00       	.word	0x000a	; ????
 270:	00 28       	or	r0, r0
 272:	34 00       	.word	0x0034	; ????
 274:	03 0e       	add	r0, r19
 276:	3a 0b       	sbc	r19, r26
 278:	3b 0b       	sbc	r19, r27
 27a:	49 13       	cpse	r20, r25
 27c:	3f 0c       	add	r3, r15
 27e:	02 0a       	sbc	r0, r18
 280:	00 00       	nop
 282:	29 34       	cpi	r18, 0x49	; 73
 284:	00 03       	mulsu	r16, r16
 286:	0e 3a       	cpi	r16, 0xAE	; 174
 288:	0b 3b       	cpi	r16, 0xBB	; 187
 28a:	0b 49       	sbci	r16, 0x9B	; 155
 28c:	13 3f       	cpi	r17, 0xF3	; 243
 28e:	0c 02       	muls	r16, r28
 290:	0a 00       	.word	0x000a	; ????
 292:	00 2a       	or	r0, r16
 294:	34 00       	.word	0x0034	; ????
 296:	03 0e       	add	r0, r19
 298:	3a 0b       	sbc	r19, r26
 29a:	3b 0b       	sbc	r19, r27
 29c:	49 13       	cpse	r20, r25
 29e:	3f 0c       	add	r3, r15
 2a0:	02 0a       	sbc	r0, r18
 2a2:	00 00       	nop
 2a4:	2b 34       	cpi	r18, 0x4B	; 75
 2a6:	00 03       	mulsu	r16, r16
 2a8:	0e 3a       	cpi	r16, 0xAE	; 174
 2aa:	0b 3b       	cpi	r16, 0xBB	; 187
 2ac:	0b 49       	sbci	r16, 0x9B	; 155
 2ae:	13 3f       	cpi	r17, 0xF3	; 243
 2b0:	0c 02       	muls	r16, r28
 2b2:	0a 00       	.word	0x000a	; ????
 2b4:	00 2c       	mov	r0, r0
 2b6:	34 00       	.word	0x0034	; ????
 2b8:	03 0e       	add	r0, r19
 2ba:	3a 0b       	sbc	r19, r26
 2bc:	3b 0b       	sbc	r19, r27
 2be:	49 13       	cpse	r20, r25
 2c0:	3f 0c       	add	r3, r15
 2c2:	02 0a       	sbc	r0, r18
 2c4:	00 00       	nop
 2c6:	2d 34       	cpi	r18, 0x4D	; 77
 2c8:	00 03       	mulsu	r16, r16
 2ca:	0e 3a       	cpi	r16, 0xAE	; 174
 2cc:	0b 3b       	cpi	r16, 0xBB	; 187
 2ce:	0b 49       	sbci	r16, 0x9B	; 155
 2d0:	13 3f       	cpi	r17, 0xF3	; 243
 2d2:	0c 02       	muls	r16, r28
 2d4:	0a 00       	.word	0x000a	; ????
 2d6:	00 2e       	mov	r0, r16
 2d8:	34 00       	.word	0x0034	; ????
 2da:	03 0e       	add	r0, r19
 2dc:	3a 0b       	sbc	r19, r26
 2de:	3b 0b       	sbc	r19, r27
 2e0:	49 13       	cpse	r20, r25
 2e2:	3f 0c       	add	r3, r15
 2e4:	02 0a       	sbc	r0, r18
 2e6:	00 00       	nop
 2e8:	2f 34       	cpi	r18, 0x4F	; 79
 2ea:	00 03       	mulsu	r16, r16
 2ec:	0e 3a       	cpi	r16, 0xAE	; 174
 2ee:	0b 3b       	cpi	r16, 0xBB	; 187
 2f0:	0b 49       	sbci	r16, 0x9B	; 155
 2f2:	13 3f       	cpi	r17, 0xF3	; 243
 2f4:	0c 02       	muls	r16, r28
 2f6:	0a 00       	.word	0x000a	; ????
 2f8:	00 30       	cpi	r16, 0x00	; 0
 2fa:	34 00       	.word	0x0034	; ????
 2fc:	03 0e       	add	r0, r19
 2fe:	3a 0b       	sbc	r19, r26
 300:	3b 0b       	sbc	r19, r27
 302:	49 13       	cpse	r20, r25
 304:	3f 0c       	add	r3, r15
 306:	02 0a       	sbc	r0, r18
 308:	00 00       	nop
 30a:	31 34       	cpi	r19, 0x41	; 65
 30c:	00 03       	mulsu	r16, r16
 30e:	0e 3a       	cpi	r16, 0xAE	; 174
 310:	0b 3b       	cpi	r16, 0xBB	; 187
 312:	0b 49       	sbci	r16, 0x9B	; 155
 314:	13 3f       	cpi	r17, 0xF3	; 243
 316:	0c 02       	muls	r16, r28
 318:	0a 00       	.word	0x000a	; ????
 31a:	00 32       	cpi	r16, 0x20	; 32
 31c:	34 00       	.word	0x0034	; ????
 31e:	03 0e       	add	r0, r19
 320:	3a 0b       	sbc	r19, r26
 322:	3b 0b       	sbc	r19, r27
 324:	49 13       	cpse	r20, r25
 326:	3f 0c       	add	r3, r15
 328:	02 0a       	sbc	r0, r18
 32a:	00 00       	nop
 32c:	33 34       	cpi	r19, 0x43	; 67
 32e:	00 03       	mulsu	r16, r16
 330:	0e 3a       	cpi	r16, 0xAE	; 174
 332:	0b 3b       	cpi	r16, 0xBB	; 187
 334:	0b 49       	sbci	r16, 0x9B	; 155
 336:	13 3f       	cpi	r17, 0xF3	; 243
 338:	0c 02       	muls	r16, r28
 33a:	0a 00       	.word	0x000a	; ????
 33c:	00 34       	cpi	r16, 0x40	; 64
 33e:	34 00       	.word	0x0034	; ????
 340:	03 0e       	add	r0, r19
 342:	3a 0b       	sbc	r19, r26
 344:	3b 0b       	sbc	r19, r27
 346:	49 13       	cpse	r20, r25
 348:	3f 0c       	add	r3, r15
 34a:	02 0a       	sbc	r0, r18
 34c:	00 00       	nop
 34e:	35 34       	cpi	r19, 0x45	; 69
 350:	00 03       	mulsu	r16, r16
 352:	0e 3a       	cpi	r16, 0xAE	; 174
 354:	0b 3b       	cpi	r16, 0xBB	; 187
 356:	0b 49       	sbci	r16, 0x9B	; 155
 358:	13 3f       	cpi	r17, 0xF3	; 243
 35a:	0c 02       	muls	r16, r28
 35c:	0a 00       	.word	0x000a	; ????
 35e:	00 36       	cpi	r16, 0x60	; 96
 360:	34 00       	.word	0x0034	; ????
 362:	03 0e       	add	r0, r19
 364:	3a 0b       	sbc	r19, r26
 366:	3b 0b       	sbc	r19, r27
 368:	49 13       	cpse	r20, r25
 36a:	3f 0c       	add	r3, r15
 36c:	02 0a       	sbc	r0, r18
 36e:	00 00       	nop
 370:	37 34       	cpi	r19, 0x47	; 71
 372:	00 03       	mulsu	r16, r16
 374:	0e 3a       	cpi	r16, 0xAE	; 174
 376:	0b 3b       	cpi	r16, 0xBB	; 187
 378:	0b 49       	sbci	r16, 0x9B	; 155
 37a:	13 3f       	cpi	r17, 0xF3	; 243
 37c:	0c 02       	muls	r16, r28
 37e:	0a 00       	.word	0x000a	; ????
 380:	00 38       	cpi	r16, 0x80	; 128
 382:	34 00       	.word	0x0034	; ????
 384:	03 0e       	add	r0, r19
 386:	3a 0b       	sbc	r19, r26
 388:	3b 0b       	sbc	r19, r27
 38a:	49 13       	cpse	r20, r25
 38c:	3f 0c       	add	r3, r15
 38e:	02 0a       	sbc	r0, r18
 390:	00 00       	nop
 392:	39 34       	cpi	r19, 0x49	; 73
 394:	00 03       	mulsu	r16, r16
 396:	0e 3a       	cpi	r16, 0xAE	; 174
 398:	0b 3b       	cpi	r16, 0xBB	; 187
 39a:	0b 49       	sbci	r16, 0x9B	; 155
 39c:	13 3f       	cpi	r17, 0xF3	; 243
 39e:	0c 02       	muls	r16, r28
 3a0:	0a 00       	.word	0x000a	; ????
 3a2:	00 3a       	cpi	r16, 0xA0	; 160
 3a4:	34 00       	.word	0x0034	; ????
 3a6:	03 0e       	add	r0, r19
 3a8:	3a 0b       	sbc	r19, r26
 3aa:	3b 0b       	sbc	r19, r27
 3ac:	49 13       	cpse	r20, r25
 3ae:	3f 0c       	add	r3, r15
 3b0:	02 0a       	sbc	r0, r18
 3b2:	00 00       	nop
 3b4:	3b 34       	cpi	r19, 0x4B	; 75
 3b6:	00 03       	mulsu	r16, r16
 3b8:	0e 3a       	cpi	r16, 0xAE	; 174
 3ba:	0b 3b       	cpi	r16, 0xBB	; 187
 3bc:	0b 49       	sbci	r16, 0x9B	; 155
 3be:	13 3f       	cpi	r17, 0xF3	; 243
 3c0:	0c 02       	muls	r16, r28
 3c2:	0a 00       	.word	0x000a	; ????
 3c4:	00 3c       	cpi	r16, 0xC0	; 192
 3c6:	34 00       	.word	0x0034	; ????
 3c8:	03 0e       	add	r0, r19
 3ca:	3a 0b       	sbc	r19, r26
 3cc:	3b 0b       	sbc	r19, r27
 3ce:	49 13       	cpse	r20, r25
 3d0:	3f 0c       	add	r3, r15
 3d2:	02 0a       	sbc	r0, r18
 3d4:	00 00       	nop
 3d6:	3d 34       	cpi	r19, 0x4D	; 77
 3d8:	00 03       	mulsu	r16, r16
 3da:	0e 3a       	cpi	r16, 0xAE	; 174
 3dc:	0b 3b       	cpi	r16, 0xBB	; 187
 3de:	0b 49       	sbci	r16, 0x9B	; 155
 3e0:	13 3f       	cpi	r17, 0xF3	; 243
 3e2:	0c 02       	muls	r16, r28
 3e4:	0a 00       	.word	0x000a	; ????
 3e6:	00 3e       	cpi	r16, 0xE0	; 224
 3e8:	34 00       	.word	0x0034	; ????
 3ea:	03 0e       	add	r0, r19
 3ec:	3a 0b       	sbc	r19, r26
 3ee:	3b 0b       	sbc	r19, r27
 3f0:	49 13       	cpse	r20, r25
 3f2:	3f 0c       	add	r3, r15
 3f4:	02 0a       	sbc	r0, r18
 3f6:	00 00       	nop
 3f8:	3f 34       	cpi	r19, 0x4F	; 79
 3fa:	00 03       	mulsu	r16, r16
 3fc:	0e 3a       	cpi	r16, 0xAE	; 174
 3fe:	0b 3b       	cpi	r16, 0xBB	; 187
 400:	0b 49       	sbci	r16, 0x9B	; 155
 402:	13 3f       	cpi	r17, 0xF3	; 243
 404:	0c 02       	muls	r16, r28
 406:	0a 00       	.word	0x000a	; ????
 408:	00 40       	sbci	r16, 0x00	; 0
 40a:	34 00       	.word	0x0034	; ????
 40c:	03 0e       	add	r0, r19
 40e:	3a 0b       	sbc	r19, r26
 410:	3b 0b       	sbc	r19, r27
 412:	49 13       	cpse	r20, r25
 414:	3f 0c       	add	r3, r15
 416:	02 0a       	sbc	r0, r18
 418:	00 00       	nop
 41a:	41 34       	cpi	r20, 0x41	; 65
 41c:	00 03       	mulsu	r16, r16
 41e:	0e 3a       	cpi	r16, 0xAE	; 174
 420:	0b 3b       	cpi	r16, 0xBB	; 187
 422:	0b 49       	sbci	r16, 0x9B	; 155
 424:	13 3f       	cpi	r17, 0xF3	; 243
 426:	0c 02       	muls	r16, r28
 428:	0a 00       	.word	0x000a	; ????
 42a:	00 42       	sbci	r16, 0x20	; 32
 42c:	34 00       	.word	0x0034	; ????
 42e:	03 0e       	add	r0, r19
 430:	3a 0b       	sbc	r19, r26
 432:	3b 0b       	sbc	r19, r27
 434:	49 13       	cpse	r20, r25
 436:	3f 0c       	add	r3, r15
 438:	02 0a       	sbc	r0, r18
 43a:	00 00       	nop
 43c:	43 34       	cpi	r20, 0x43	; 67
 43e:	00 03       	mulsu	r16, r16
 440:	0e 3a       	cpi	r16, 0xAE	; 174
 442:	0b 3b       	cpi	r16, 0xBB	; 187
 444:	0b 49       	sbci	r16, 0x9B	; 155
 446:	13 3f       	cpi	r17, 0xF3	; 243
 448:	0c 02       	muls	r16, r28
 44a:	0a 00       	.word	0x000a	; ????
 44c:	00 44       	sbci	r16, 0x40	; 64
 44e:	34 00       	.word	0x0034	; ????
 450:	03 0e       	add	r0, r19
 452:	3a 0b       	sbc	r19, r26
 454:	3b 0b       	sbc	r19, r27
 456:	49 13       	cpse	r20, r25
 458:	3f 0c       	add	r3, r15
 45a:	02 0a       	sbc	r0, r18
 45c:	00 00       	nop
 45e:	45 34       	cpi	r20, 0x45	; 69
 460:	00 03       	mulsu	r16, r16
 462:	0e 3a       	cpi	r16, 0xAE	; 174
 464:	0b 3b       	cpi	r16, 0xBB	; 187
 466:	0b 49       	sbci	r16, 0x9B	; 155
 468:	13 3f       	cpi	r17, 0xF3	; 243
 46a:	0c 02       	muls	r16, r28
 46c:	0a 00       	.word	0x000a	; ????
 46e:	00 46       	sbci	r16, 0x60	; 96
 470:	34 00       	.word	0x0034	; ????
 472:	03 0e       	add	r0, r19
 474:	3a 0b       	sbc	r19, r26
 476:	3b 0b       	sbc	r19, r27
 478:	49 13       	cpse	r20, r25
 47a:	3f 0c       	add	r3, r15
 47c:	02 0a       	sbc	r0, r18
 47e:	00 00       	nop
 480:	47 34       	cpi	r20, 0x47	; 71
 482:	00 03       	mulsu	r16, r16
 484:	0e 3a       	cpi	r16, 0xAE	; 174
 486:	0b 3b       	cpi	r16, 0xBB	; 187
 488:	0b 49       	sbci	r16, 0x9B	; 155
 48a:	13 3f       	cpi	r17, 0xF3	; 243
 48c:	0c 02       	muls	r16, r28
 48e:	0a 00       	.word	0x000a	; ????
 490:	00 48       	sbci	r16, 0x80	; 128
 492:	34 00       	.word	0x0034	; ????
 494:	03 0e       	add	r0, r19
 496:	3a 0b       	sbc	r19, r26
 498:	3b 0b       	sbc	r19, r27
 49a:	49 13       	cpse	r20, r25
 49c:	3f 0c       	add	r3, r15
 49e:	02 0a       	sbc	r0, r18
 4a0:	00 00       	nop
 4a2:	49 34       	cpi	r20, 0x49	; 73
 4a4:	00 03       	mulsu	r16, r16
 4a6:	0e 3a       	cpi	r16, 0xAE	; 174
 4a8:	0b 3b       	cpi	r16, 0xBB	; 187
 4aa:	0b 49       	sbci	r16, 0x9B	; 155
 4ac:	13 3f       	cpi	r17, 0xF3	; 243
 4ae:	0c 02       	muls	r16, r28
 4b0:	0a 00       	.word	0x000a	; ????
 4b2:	00 4a       	sbci	r16, 0xA0	; 160
 4b4:	34 00       	.word	0x0034	; ????
 4b6:	03 0e       	add	r0, r19
 4b8:	3a 0b       	sbc	r19, r26
 4ba:	3b 0b       	sbc	r19, r27
 4bc:	49 13       	cpse	r20, r25
 4be:	3f 0c       	add	r3, r15
 4c0:	02 0a       	sbc	r0, r18
 4c2:	00 00       	nop
 4c4:	4b 34       	cpi	r20, 0x4B	; 75
 4c6:	00 03       	mulsu	r16, r16
 4c8:	0e 3a       	cpi	r16, 0xAE	; 174
 4ca:	0b 3b       	cpi	r16, 0xBB	; 187
 4cc:	0b 49       	sbci	r16, 0x9B	; 155
 4ce:	13 3f       	cpi	r17, 0xF3	; 243
 4d0:	0c 02       	muls	r16, r28
 4d2:	0a 00       	.word	0x000a	; ????
 4d4:	00 4c       	sbci	r16, 0xC0	; 192
 4d6:	34 00       	.word	0x0034	; ????
 4d8:	03 0e       	add	r0, r19
 4da:	3a 0b       	sbc	r19, r26
 4dc:	3b 0b       	sbc	r19, r27
 4de:	49 13       	cpse	r20, r25
 4e0:	3f 0c       	add	r3, r15
 4e2:	02 0a       	sbc	r0, r18
 4e4:	00 00       	nop
 4e6:	4d 34       	cpi	r20, 0x4D	; 77
 4e8:	00 03       	mulsu	r16, r16
 4ea:	0e 3a       	cpi	r16, 0xAE	; 174
 4ec:	0b 3b       	cpi	r16, 0xBB	; 187
 4ee:	0b 49       	sbci	r16, 0x9B	; 155
 4f0:	13 3f       	cpi	r17, 0xF3	; 243
 4f2:	0c 02       	muls	r16, r28
 4f4:	0a 00       	.word	0x000a	; ????
 4f6:	00 4e       	sbci	r16, 0xE0	; 224
 4f8:	34 00       	.word	0x0034	; ????
 4fa:	03 0e       	add	r0, r19
 4fc:	3a 0b       	sbc	r19, r26
 4fe:	3b 0b       	sbc	r19, r27
 500:	49 13       	cpse	r20, r25
 502:	3f 0c       	add	r3, r15
 504:	02 0a       	sbc	r0, r18
 506:	00 00       	nop
 508:	4f 34       	cpi	r20, 0x4F	; 79
 50a:	00 03       	mulsu	r16, r16
 50c:	0e 3a       	cpi	r16, 0xAE	; 174
 50e:	0b 3b       	cpi	r16, 0xBB	; 187
 510:	0b 49       	sbci	r16, 0x9B	; 155
 512:	13 3f       	cpi	r17, 0xF3	; 243
 514:	0c 02       	muls	r16, r28
 516:	0a 00       	.word	0x000a	; ????
 518:	00 50       	subi	r16, 0x00	; 0
 51a:	34 00       	.word	0x0034	; ????
 51c:	03 0e       	add	r0, r19
 51e:	3a 0b       	sbc	r19, r26
 520:	3b 0b       	sbc	r19, r27
 522:	49 13       	cpse	r20, r25
 524:	3f 0c       	add	r3, r15
 526:	02 0a       	sbc	r0, r18
 528:	00 00       	nop
 52a:	51 34       	cpi	r21, 0x41	; 65
 52c:	00 03       	mulsu	r16, r16
 52e:	0e 3a       	cpi	r16, 0xAE	; 174
 530:	0b 3b       	cpi	r16, 0xBB	; 187
 532:	0b 49       	sbci	r16, 0x9B	; 155
 534:	13 3f       	cpi	r17, 0xF3	; 243
 536:	0c 02       	muls	r16, r28
 538:	0a 00       	.word	0x000a	; ????
 53a:	00 52       	subi	r16, 0x20	; 32
 53c:	34 00       	.word	0x0034	; ????
 53e:	03 0e       	add	r0, r19
 540:	3a 0b       	sbc	r19, r26
 542:	3b 0b       	sbc	r19, r27
 544:	49 13       	cpse	r20, r25
 546:	3f 0c       	add	r3, r15
 548:	02 0a       	sbc	r0, r18
 54a:	00 00       	nop
 54c:	53 34       	cpi	r21, 0x43	; 67
 54e:	00 03       	mulsu	r16, r16
 550:	0e 3a       	cpi	r16, 0xAE	; 174
 552:	0b 3b       	cpi	r16, 0xBB	; 187
 554:	0b 49       	sbci	r16, 0x9B	; 155
 556:	13 3f       	cpi	r17, 0xF3	; 243
 558:	0c 02       	muls	r16, r28
 55a:	0a 00       	.word	0x000a	; ????
 55c:	00 54       	subi	r16, 0x40	; 64
 55e:	34 00       	.word	0x0034	; ????
 560:	03 0e       	add	r0, r19
 562:	3a 0b       	sbc	r19, r26
 564:	3b 0b       	sbc	r19, r27
 566:	49 13       	cpse	r20, r25
 568:	3f 0c       	add	r3, r15
 56a:	02 0a       	sbc	r0, r18
 56c:	00 00       	nop
 56e:	55 34       	cpi	r21, 0x45	; 69
 570:	00 03       	mulsu	r16, r16
 572:	0e 3a       	cpi	r16, 0xAE	; 174
 574:	0b 3b       	cpi	r16, 0xBB	; 187
 576:	0b 49       	sbci	r16, 0x9B	; 155
 578:	13 3f       	cpi	r17, 0xF3	; 243
 57a:	0c 02       	muls	r16, r28
 57c:	0a 00       	.word	0x000a	; ????
 57e:	00 56       	subi	r16, 0x60	; 96
 580:	34 00       	.word	0x0034	; ????
 582:	03 0e       	add	r0, r19
 584:	3a 0b       	sbc	r19, r26
 586:	3b 0b       	sbc	r19, r27
 588:	49 13       	cpse	r20, r25
 58a:	3f 0c       	add	r3, r15
 58c:	02 0a       	sbc	r0, r18
 58e:	00 00       	nop
 590:	57 34       	cpi	r21, 0x47	; 71
 592:	00 03       	mulsu	r16, r16
 594:	0e 3a       	cpi	r16, 0xAE	; 174
 596:	0b 3b       	cpi	r16, 0xBB	; 187
 598:	0b 49       	sbci	r16, 0x9B	; 155
 59a:	13 3f       	cpi	r17, 0xF3	; 243
 59c:	0c 02       	muls	r16, r28
 59e:	0a 00       	.word	0x000a	; ????
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	16 00       	.word	0x0016	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	10 00       	.word	0x0010	; ????
   8:	00 00       	nop
   a:	02 01       	movw	r0, r4
   c:	fb 0e       	add	r15, r27
   e:	0a 00       	.word	0x000a	; ????
  10:	01 01       	movw	r0, r2
  12:	01 01       	movw	r0, r2
  14:	00 00       	nop
  16:	00 01       	movw	r0, r0
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	61 76       	andi	r22, 0x61	; 97
   2:	72 2d       	mov	r23, r2
   4:	6c 69       	ori	r22, 0x9C	; 156
   6:	62 63       	ori	r22, 0x32	; 50
   8:	20 32       	cpi	r18, 0x20	; 32
   a:	2e 30       	cpi	r18, 0x0E	; 14
   c:	2e 30       	cpi	r18, 0x0E	; 14
   e:	00 75       	andi	r16, 0x50	; 80
  10:	69 6e       	ori	r22, 0xE9	; 233
  12:	74 38       	cpi	r23, 0x84	; 132
  14:	5f 74       	andi	r21, 0x4F	; 79
  16:	00 75       	andi	r16, 0x50	; 80
  18:	69 6e       	ori	r22, 0xE9	; 233
  1a:	74 31       	cpi	r23, 0x14	; 20
  1c:	36 5f       	subi	r19, 0xF6	; 246
  1e:	74 00       	.word	0x0074	; ????
  20:	5f 5f       	subi	r21, 0xFF	; 255
  22:	65 65       	ori	r22, 0x55	; 85
  24:	70 72       	andi	r23, 0x20	; 32
  26:	6f 6d       	ori	r22, 0xDF	; 223
  28:	00 55       	subi	r16, 0x50	; 80
  2a:	44 52       	subi	r20, 0x24	; 36
  2c:	30 00       	.word	0x0030	; ????
  2e:	55 43       	sbci	r21, 0x35	; 53
  30:	53 52       	subi	r21, 0x23	; 35
  32:	30 41       	sbci	r19, 0x10	; 16
  34:	00 55       	subi	r16, 0x50	; 80
  36:	43 53       	subi	r20, 0x33	; 51
  38:	52 30       	cpi	r21, 0x02	; 2
  3a:	42 00       	.word	0x0042	; ????
  3c:	55 43       	sbci	r21, 0x35	; 53
  3e:	53 52       	subi	r21, 0x23	; 35
  40:	30 43       	sbci	r19, 0x30	; 48
  42:	00 55       	subi	r16, 0x50	; 80
  44:	42 52       	subi	r20, 0x22	; 34
  46:	52 30       	cpi	r21, 0x02	; 2
  48:	00 54       	subi	r16, 0x40	; 64
  4a:	57 41       	sbci	r21, 0x17	; 23
  4c:	4d 52       	subi	r20, 0x2D	; 45
  4e:	00 54       	subi	r16, 0x40	; 64
  50:	57 42       	sbci	r21, 0x27	; 39
  52:	52 00       	.word	0x0052	; ????
  54:	54 57       	subi	r21, 0x74	; 116
  56:	43 52       	subi	r20, 0x23	; 35
  58:	00 54       	subi	r16, 0x40	; 64
  5a:	57 53       	subi	r21, 0x37	; 55
  5c:	52 00       	.word	0x0052	; ????
  5e:	54 57       	subi	r21, 0x74	; 116
  60:	44 52       	subi	r20, 0x24	; 36
  62:	00 54       	subi	r16, 0x40	; 64
  64:	57 41       	sbci	r21, 0x17	; 23
  66:	52 00       	.word	0x0052	; ????
  68:	54 49       	sbci	r21, 0x94	; 148
  6a:	4d 53       	subi	r20, 0x3D	; 61
  6c:	4b 31       	cpi	r20, 0x1B	; 27
  6e:	00 54       	subi	r16, 0x40	; 64
  70:	49 46       	sbci	r20, 0x69	; 105
  72:	52 31       	cpi	r21, 0x12	; 18
  74:	00 54       	subi	r16, 0x40	; 64
  76:	43 43       	sbci	r20, 0x33	; 51
  78:	52 31       	cpi	r21, 0x12	; 18
  7a:	41 00       	.word	0x0041	; ????
  7c:	54 43       	sbci	r21, 0x34	; 52
  7e:	43 52       	subi	r20, 0x23	; 35
  80:	31 42       	sbci	r19, 0x21	; 33
  82:	00 54       	subi	r16, 0x40	; 64
  84:	43 43       	sbci	r20, 0x33	; 51
  86:	52 31       	cpi	r21, 0x12	; 18
  88:	43 00       	.word	0x0043	; ????
  8a:	54 43       	sbci	r21, 0x34	; 52
  8c:	4e 54       	subi	r20, 0x4E	; 78
  8e:	31 00       	.word	0x0031	; ????
  90:	4f 43       	sbci	r20, 0x3F	; 63
  92:	52 31       	cpi	r21, 0x12	; 18
  94:	41 00       	.word	0x0041	; ????
  96:	4f 43       	sbci	r20, 0x3F	; 63
  98:	52 31       	cpi	r21, 0x12	; 18
  9a:	42 00       	.word	0x0042	; ????
  9c:	49 43       	sbci	r20, 0x39	; 57
  9e:	52 31       	cpi	r21, 0x12	; 18
  a0:	00 47       	sbci	r16, 0x70	; 112
  a2:	54 43       	sbci	r21, 0x34	; 52
  a4:	43 52       	subi	r20, 0x23	; 35
  a6:	00 54       	subi	r16, 0x40	; 64
  a8:	49 4d       	sbci	r20, 0xD9	; 217
  aa:	53 4b       	sbci	r21, 0xB3	; 179
  ac:	32 00       	.word	0x0032	; ????
  ae:	54 49       	sbci	r21, 0x94	; 148
  b0:	46 52       	subi	r20, 0x26	; 38
  b2:	32 00       	.word	0x0032	; ????
  b4:	54 43       	sbci	r21, 0x34	; 52
  b6:	43 52       	subi	r20, 0x23	; 35
  b8:	32 41       	sbci	r19, 0x12	; 18
  ba:	00 54       	subi	r16, 0x40	; 64
  bc:	43 43       	sbci	r20, 0x33	; 51
  be:	52 32       	cpi	r21, 0x22	; 34
  c0:	42 00       	.word	0x0042	; ????
  c2:	54 43       	sbci	r21, 0x34	; 52
  c4:	4e 54       	subi	r20, 0x4E	; 78
  c6:	32 00       	.word	0x0032	; ????
  c8:	4f 43       	sbci	r20, 0x3F	; 63
  ca:	52 32       	cpi	r21, 0x22	; 34
  cc:	42 00       	.word	0x0042	; ????
  ce:	4f 43       	sbci	r20, 0x3F	; 63
  d0:	52 32       	cpi	r21, 0x22	; 34
  d2:	41 00       	.word	0x0041	; ????
  d4:	41 53       	subi	r20, 0x31	; 49
  d6:	53 52       	subi	r21, 0x23	; 35
  d8:	00 47       	sbci	r16, 0x70	; 112
  da:	54 43       	sbci	r21, 0x34	; 52
  dc:	43 52       	subi	r20, 0x23	; 35
  de:	00 41       	sbci	r16, 0x10	; 16
  e0:	44 4d       	sbci	r20, 0xD4	; 212
  e2:	55 58       	subi	r21, 0x85	; 133
  e4:	00 41       	sbci	r16, 0x10	; 16
  e6:	44 43       	sbci	r20, 0x34	; 52
  e8:	00 41       	sbci	r16, 0x10	; 16
  ea:	44 43       	sbci	r20, 0x34	; 52
  ec:	53 52       	subi	r21, 0x23	; 35
  ee:	41 00       	.word	0x0041	; ????
  f0:	41 44       	sbci	r20, 0x41	; 65
  f2:	43 53       	subi	r20, 0x33	; 51
  f4:	52 42       	sbci	r21, 0x22	; 34
  f6:	00 44       	sbci	r16, 0x40	; 64
  f8:	49 44       	sbci	r20, 0x49	; 73
  fa:	52 30       	cpi	r21, 0x02	; 2
  fc:	00 41       	sbci	r16, 0x10	; 16
  fe:	43 53       	subi	r20, 0x33	; 51
 100:	52 00       	.word	0x0052	; ????
 102:	44 49       	sbci	r20, 0x94	; 148
 104:	44 52       	subi	r20, 0x24	; 36
 106:	31 00       	.word	0x0031	; ????
 108:	50 4f       	sbci	r21, 0xF0	; 240
 10a:	52 54       	subi	r21, 0x42	; 66
 10c:	42 00       	.word	0x0042	; ????
 10e:	44 44       	sbci	r20, 0x44	; 68
 110:	52 42       	sbci	r21, 0x22	; 34
 112:	00 50       	subi	r16, 0x00	; 0
 114:	49 4e       	sbci	r20, 0xE9	; 233
 116:	42 00       	.word	0x0042	; ????
 118:	50 4f       	sbci	r21, 0xF0	; 240
 11a:	52 54       	subi	r21, 0x42	; 66
 11c:	43 00       	.word	0x0043	; ????
 11e:	44 44       	sbci	r20, 0x44	; 68
 120:	52 43       	sbci	r21, 0x32	; 50
 122:	00 50       	subi	r16, 0x00	; 0
 124:	49 4e       	sbci	r20, 0xE9	; 233
 126:	43 00       	.word	0x0043	; ????
 128:	50 4f       	sbci	r21, 0xF0	; 240
 12a:	52 54       	subi	r21, 0x42	; 66
 12c:	44 00       	.word	0x0044	; ????
 12e:	44 44       	sbci	r20, 0x44	; 68
 130:	52 44       	sbci	r21, 0x42	; 66
 132:	00 50       	subi	r16, 0x00	; 0
 134:	49 4e       	sbci	r20, 0xE9	; 233
 136:	44 00       	.word	0x0044	; ????
 138:	4f 43       	sbci	r20, 0x3F	; 63
 13a:	52 30       	cpi	r21, 0x02	; 2
 13c:	42 00       	.word	0x0042	; ????
 13e:	4f 43       	sbci	r20, 0x3F	; 63
 140:	52 30       	cpi	r21, 0x02	; 2
 142:	41 00       	.word	0x0041	; ????
 144:	54 43       	sbci	r21, 0x34	; 52
 146:	4e 54       	subi	r20, 0x4E	; 78
 148:	30 00       	.word	0x0030	; ????
 14a:	54 43       	sbci	r21, 0x34	; 52
 14c:	43 52       	subi	r20, 0x23	; 35
 14e:	30 42       	sbci	r19, 0x20	; 32
 150:	00 54       	subi	r16, 0x40	; 64
 152:	43 43       	sbci	r20, 0x33	; 51
 154:	52 30       	cpi	r21, 0x02	; 2
 156:	41 00       	.word	0x0041	; ????
 158:	54 49       	sbci	r21, 0x94	; 148
 15a:	4d 53       	subi	r20, 0x3D	; 61
 15c:	4b 30       	cpi	r20, 0x0B	; 11
 15e:	00 54       	subi	r16, 0x40	; 64
 160:	49 46       	sbci	r20, 0x69	; 105
 162:	52 30       	cpi	r21, 0x02	; 2
 164:	00 47       	sbci	r16, 0x70	; 112
 166:	54 43       	sbci	r21, 0x34	; 52
 168:	43 52       	subi	r20, 0x23	; 35
 16a:	00 45       	sbci	r16, 0x50	; 80
 16c:	49 43       	sbci	r20, 0x39	; 57
 16e:	52 41       	sbci	r21, 0x12	; 18
 170:	00 45       	sbci	r16, 0x50	; 80
 172:	49 4d       	sbci	r20, 0xD9	; 217
 174:	53 4b       	sbci	r21, 0xB3	; 179
 176:	00 45       	sbci	r16, 0x50	; 80
 178:	49 46       	sbci	r20, 0x69	; 105
 17a:	52 00       	.word	0x0052	; ????
 17c:	50 43       	sbci	r21, 0x30	; 48
 17e:	49 43       	sbci	r20, 0x39	; 57
 180:	52 00       	.word	0x0052	; ????
 182:	50 43       	sbci	r21, 0x30	; 48
 184:	4d 53       	subi	r20, 0x3D	; 61
 186:	4b 32       	cpi	r20, 0x2B	; 43
 188:	00 50       	subi	r16, 0x00	; 0
 18a:	43 4d       	sbci	r20, 0xD3	; 211
 18c:	53 4b       	sbci	r21, 0xB3	; 179
 18e:	31 00       	.word	0x0031	; ????
 190:	50 43       	sbci	r21, 0x30	; 48
 192:	4d 53       	subi	r20, 0x3D	; 61
 194:	4b 30       	cpi	r20, 0x0B	; 11
 196:	00 50       	subi	r16, 0x00	; 0
 198:	43 49       	sbci	r20, 0x93	; 147
 19a:	46 52       	subi	r20, 0x26	; 38
 19c:	00 53       	subi	r16, 0x30	; 48
 19e:	50 44       	sbci	r21, 0x40	; 64
 1a0:	52 00       	.word	0x0052	; ????
 1a2:	53 50       	subi	r21, 0x03	; 3
 1a4:	53 52       	subi	r21, 0x23	; 35
 1a6:	00 53       	subi	r16, 0x30	; 48
 1a8:	50 43       	sbci	r21, 0x30	; 48
 1aa:	52 00       	.word	0x0052	; ????
 1ac:	57 44       	sbci	r21, 0x47	; 71
 1ae:	54 43       	sbci	r21, 0x34	; 52
 1b0:	53 52       	subi	r21, 0x23	; 35
 1b2:	00 50       	subi	r16, 0x00	; 0
 1b4:	52 52       	subi	r21, 0x22	; 34
 1b6:	00 4f       	sbci	r16, 0xF0	; 240
 1b8:	53 43       	sbci	r21, 0x33	; 51
 1ba:	43 41       	sbci	r20, 0x13	; 19
 1bc:	4c 00       	.word	0x004c	; ????
 1be:	43 4c       	sbci	r20, 0xC3	; 195
 1c0:	4b 50       	subi	r20, 0x0B	; 11
 1c2:	52 00       	.word	0x0052	; ????
 1c4:	53 52       	subi	r21, 0x23	; 35
 1c6:	45 47       	sbci	r20, 0x75	; 117
 1c8:	00 53       	subi	r16, 0x30	; 48
 1ca:	50 00       	.word	0x0050	; ????
 1cc:	53 50       	subi	r21, 0x03	; 3
 1ce:	4d 43       	sbci	r20, 0x3D	; 61
 1d0:	53 52       	subi	r21, 0x23	; 35
 1d2:	00 4d       	sbci	r16, 0xD0	; 208
 1d4:	43 55       	subi	r20, 0x53	; 83
 1d6:	43 52       	subi	r20, 0x23	; 35
 1d8:	00 4d       	sbci	r16, 0xD0	; 208
 1da:	43 55       	subi	r20, 0x53	; 83
 1dc:	53 52       	subi	r21, 0x23	; 35
 1de:	00 53       	subi	r16, 0x30	; 48
 1e0:	4d 43       	sbci	r20, 0x3D	; 61
 1e2:	52 00       	.word	0x0052	; ????
 1e4:	47 50       	subi	r20, 0x07	; 7
 1e6:	49 4f       	sbci	r20, 0xF9	; 249
 1e8:	52 32       	cpi	r21, 0x22	; 34
 1ea:	00 47       	sbci	r16, 0x70	; 112
 1ec:	50 49       	sbci	r21, 0x90	; 144
 1ee:	4f 52       	subi	r20, 0x2F	; 47
 1f0:	31 00       	.word	0x0031	; ????
 1f2:	47 50       	subi	r20, 0x07	; 7
 1f4:	49 4f       	sbci	r20, 0xF9	; 249
 1f6:	52 30       	cpi	r21, 0x02	; 2
 1f8:	00 45       	sbci	r16, 0x50	; 80
 1fa:	45 41       	sbci	r20, 0x15	; 21
 1fc:	52 00       	.word	0x0052	; ????
 1fe:	45 45       	sbci	r20, 0x55	; 85
 200:	44 52       	subi	r20, 0x24	; 36
 202:	00 45       	sbci	r16, 0x50	; 80
 204:	45 43       	sbci	r20, 0x35	; 53
 206:	52 00       	.word	0x0052	; ????
