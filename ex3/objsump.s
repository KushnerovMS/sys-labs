
unmatched_rom_0x10000.bin:     file format binary


Disassembly of section .data:

0000000000010000 <.data>:
   10000:	00000297          	auipc	t0,0x0
   10004:	10828293          	addi	t0,t0,264 # 0x10108
   10008:	30529073          	csrw	mtvec,t0
   1000c:	4921                	li	s2,8
   1000e:	30491073          	csrw	mie,s2
   10012:	4481                	li	s1,0
   10014:	f1402973          	csrr	s2,mhartid
   10018:	09249863          	bne	s1,s2,0x100a8
   1001c:	030802b7          	lui	t0,0x3080
   10020:	4305                	li	t1,1
   10022:	0062a023          	sw	t1,0(t0) # 0x3080000
   10026:	001e0337          	lui	t1,0x1e0
   1002a:	0062b423          	sd	t1,8(t0)
   1002e:	08000337          	lui	t1,0x8000
   10032:	0062b823          	sd	t1,16(t0)
   10036:	09000337          	lui	t1,0x9000
   1003a:	0062bc23          	sd	t1,24(t0)
   1003e:	0ff0031b          	addiw	t1,zero,255
   10042:	01831313          	slli	t1,t1,0x18
   10046:	0062a223          	sw	t1,4(t0)
   1004a:	430d                	li	t1,3
   1004c:	0062a023          	sw	t1,0(t0)
   10050:	0002a303          	lw	t1,0(t0)
   10054:	00237313          	andi	t1,t1,2
   10058:	fe031ce3          	bnez	t1,0x10050
   1005c:	0002a023          	sw	zero,0(t0)
   10060:	00003297          	auipc	t0,0x3
   10064:	76028293          	addi	t0,t0,1888 # 0x137c0
   10068:	080f0317          	auipc	t1,0x80f0
   1006c:	f9830313          	addi	t1,t1,-104 # 0x8100000
   10070:	02628063          	beq	t0,t1,0x10090
   10074:	00003397          	auipc	t2,0x3
   10078:	71438393          	addi	t2,t2,1812 # 0x13788
   1007c:	00737a63          	bgeu	t1,t2,0x10090
   10080:	0002be03          	ld	t3,0(t0)
   10084:	01c33023          	sd	t3,0(t1)
   10088:	02a1                	addi	t0,t0,8
   1008a:	0321                	addi	t1,t1,8
   1008c:	fe736ae3          	bltu	t1,t2,0x10080
   10090:	020004b7          	lui	s1,0x2000
   10094:	4905                	li	s2,1
   10096:	0124a023          	sw	s2,0(s1) # 0x2000000
   1009a:	0491                	addi	s1,s1,4
   1009c:	02000937          	lui	s2,0x2000
   100a0:	0809091b          	addiw	s2,s2,128 # 0x2000080
   100a4:	ff24c8e3          	blt	s1,s2,0x10094
   100a8:	10500073          	wfi
   100ac:	34402973          	csrr	s2,mip
   100b0:	00897913          	andi	s2,s2,8
   100b4:	fe090ae3          	beqz	s2,0x100a8
   100b8:	020004b7          	lui	s1,0x2000
   100bc:	f1402973          	csrr	s2,mhartid
   100c0:	090a                	slli	s2,s2,0x2
   100c2:	9926                	add	s2,s2,s1
   100c4:	00092023          	sw	zero,0(s2)
   100c8:	0004a903          	lw	s2,0(s1) # 0x2000000
   100cc:	fe091ee3          	bnez	s2,0x100c8
   100d0:	0491                	addi	s1,s1,4
   100d2:	02000937          	lui	s2,0x2000
   100d6:	0809091b          	addiw	s2,s2,128 # 0x2000080
   100da:	ff24c7e3          	blt	s1,s2,0x100c8
   100de:	f14022f3          	csrr	t0,mhartid
   100e2:	02b2                	slli	t0,t0,0xc
   100e4:	081d0117          	auipc	sp,0x81d0
   100e8:	f1c10113          	addi	sp,sp,-228 # 0x81e0000
   100ec:	40510133          	sub	sp,sp,t0
   100f0:	086000ef          	jal	0x10176
   100f4:	080002b7          	lui	t0,0x8000
   100f8:	f1402573          	csrr	a0,mhartid
   100fc:	00001597          	auipc	a1,0x1
   10100:	d8458593          	addi	a1,a1,-636 # 0x10e80
   10104:	8282                	jr	t0
   10106:	0001                	nop
   10108:	038000ef          	jal	0x10140
	...
   10140:	34202573          	csrr	a0,mcause
   10144:	4585                	li	a1,1
   10146:	5400006f          	j	0x10686
   1014a:	1502                	slli	a0,a0,0x20
   1014c:	3e800793          	li	a5,1000
   10150:	9101                	srli	a0,a0,0x20
   10152:	02f50533          	mul	a0,a0,a5
   10156:	67f1                	lui	a5,0x1c
   10158:	1ff78693          	addi	a3,a5,511 # 0x1c1ff
   1015c:	20078793          	addi	a5,a5,512
   10160:	4701                	li	a4,0
   10162:	9536                	add	a0,a0,a3
   10164:	02f55533          	divu	a0,a0,a5
   10168:	c119                	beqz	a0,0x1016e
   1016a:	fff5071b          	addiw	a4,a0,-1
   1016e:	100107b7          	lui	a5,0x10010
   10172:	cf98                	sw	a4,24(a5)
   10174:	8082                	ret
   10176:	1141                	addi	sp,sp,-16
   10178:	e406                	sd	ra,8(sp)
   1017a:	f14027f3          	csrr	a5,mhartid
   1017e:	e38d                	bnez	a5,0x101a0
   10180:	100107b7          	lui	a5,0x10010
   10184:	0e100713          	li	a4,225
   10188:	6619                	lui	a2,0x6
   1018a:	cf98                	sw	a4,24(a5)
   1018c:	59060613          	addi	a2,a2,1424 # 0x6590
   10190:	00003597          	auipc	a1,0x3
   10194:	5d858593          	addi	a1,a1,1496 # 0x13768
   10198:	08000537          	lui	a0,0x8000
   1019c:	568000ef          	jal	0x10704
   101a0:	080f0617          	auipc	a2,0x80f0
   101a4:	e6060613          	addi	a2,a2,-416 # 0x8100000
   101a8:	0ff0000f          	fence
   101ac:	4a1c                	lw	a5,16(a2)
   101ae:	4505                	li	a0,1
   101b0:	0ff0000f          	fence
   101b4:	2781                	sext.w	a5,a5
   101b6:	00279713          	slli	a4,a5,0x2
   101ba:	00e606b3          	add	a3,a2,a4
   101be:	0f50000f          	fence	iorw,ow
   101c2:	04a6a5af          	amoadd.w.aq	a1,a0,(a3)
   101c6:	0721                	addi	a4,a4,8
   101c8:	2581                	sext.w	a1,a1
   101ca:	4811                	li	a6,4
   101cc:	9732                	add	a4,a4,a2
   101ce:	03058b63          	beq	a1,a6,0x10204
   101d2:	0ff0000f          	fence
   101d6:	431c                	lw	a5,0(a4)
   101d8:	0ff0000f          	fence
   101dc:	2781                	sext.w	a5,a5
   101de:	dbf5                	beqz	a5,0x101d2
   101e0:	567d                	li	a2,-1
   101e2:	0f50000f          	fence	iorw,ow
   101e6:	04c6a7af          	amoadd.w.aq	a5,a2,(a3)
   101ea:	2781                	sext.w	a5,a5
   101ec:	4685                	li	a3,1
   101ee:	00d78663          	beq	a5,a3,0x101fa
   101f2:	60a2                	ld	ra,8(sp)
   101f4:	4501                	li	a0,0
   101f6:	0141                	addi	sp,sp,16
   101f8:	8082                	ret
   101fa:	0f50000f          	fence	iorw,ow
   101fe:	0c07202f          	amoswap.w.aq	zero,zero,(a4)
   10202:	bfc5                	j	0x101f2
   10204:	40f507bb          	subw	a5,a0,a5
   10208:	0641                	addi	a2,a2,16
   1020a:	0f50000f          	fence	iorw,ow
   1020e:	0cf6202f          	amoswap.w.aq	zero,a5,(a2)
   10212:	57fd                	li	a5,-1
   10214:	0f50000f          	fence	iorw,ow
   10218:	04f6a02f          	amoadd.w.aq	zero,a5,(a3)
   1021c:	0f50000f          	fence	iorw,ow
   10220:	0ca7202f          	amoswap.w.aq	zero,a0,(a4)
   10224:	b7f9                	j	0x101f2
   10226:	0015959b          	slliw	a1,a1,0x1
   1022a:	357d                	addiw	a0,a0,-1 # 0x7ffffff
   1022c:	9d2d                	addw	a0,a0,a1
   1022e:	02b5553b          	divuw	a0,a0,a1
   10232:	c111                	beqz	a0,0x10236
   10234:	357d                	addiw	a0,a0,-1
   10236:	8082                	ret
   10238:	04850793          	addi	a5,a0,72
   1023c:	40b7a7af          	amoor.w	a5,a1,(a5)
   10240:	02079713          	slli	a4,a5,0x20
   10244:	fe074ae3          	bltz	a4,0x10238
   10248:	8082                	ret
   1024a:	457c                	lw	a5,76(a0)
   1024c:	2781                	sext.w	a5,a5
   1024e:	fe07cee3          	bltz	a5,0x1024a
   10252:	0ff7f513          	zext.b	a0,a5
   10256:	8082                	ret
   10258:	04850793          	addi	a5,a0,72
   1025c:	40b7a7af          	amoor.w	a5,a1,(a5)
   10260:	02079713          	slli	a4,a5,0x20
   10264:	fe074ae3          	bltz	a4,0x10258
   10268:	457c                	lw	a5,76(a0)
   1026a:	2781                	sext.w	a5,a5
   1026c:	fe07cee3          	bltz	a5,0x10268
   10270:	0ff7f513          	zext.b	a0,a5
   10274:	8082                	ret
   10276:	4d18                	lw	a4,24(a0)
   10278:	87aa                	mv	a5,a0
   1027a:	9b71                	andi	a4,a4,-4
   1027c:	00276713          	ori	a4,a4,2
   10280:	cd18                	sw	a4,24(a0)
   10282:	470d                	li	a4,3
   10284:	04878513          	addi	a0,a5,72 # 0x10010048
   10288:	40e5252f          	amoor.w	a0,a4,(a0)
   1028c:	02051813          	slli	a6,a0,0x20
   10290:	fe084ae3          	bltz	a6,0x10284
   10294:	47f8                	lw	a4,76(a5)
   10296:	fe074fe3          	bltz	a4,0x10294
   1029a:	0106571b          	srliw	a4,a2,0x10
   1029e:	0ff77713          	zext.b	a4,a4
   102a2:	04878513          	addi	a0,a5,72
   102a6:	40e5252f          	amoor.w	a0,a4,(a0)
   102aa:	02051813          	slli	a6,a0,0x20
   102ae:	fe084ae3          	bltz	a6,0x102a2
   102b2:	47f8                	lw	a4,76(a5)
   102b4:	fe074fe3          	bltz	a4,0x102b2
   102b8:	0086571b          	srliw	a4,a2,0x8
   102bc:	0ff77713          	zext.b	a4,a4
   102c0:	04878513          	addi	a0,a5,72
   102c4:	40e5252f          	amoor.w	a0,a4,(a0)
   102c8:	02051813          	slli	a6,a0,0x20
   102cc:	fe084ae3          	bltz	a6,0x102c0
   102d0:	47f8                	lw	a4,76(a5)
   102d2:	fe074fe3          	bltz	a4,0x102d0
   102d6:	0ff67613          	zext.b	a2,a2
   102da:	04878713          	addi	a4,a5,72
   102de:	40c7272f          	amoor.w	a4,a2,(a4)
   102e2:	02071513          	slli	a0,a4,0x20
   102e6:	fe054ae3          	bltz	a0,0x102da
   102ea:	47f8                	lw	a4,76(a5)
   102ec:	fe074fe3          	bltz	a4,0x102ea
   102f0:	ca8d                	beqz	a3,0x10322
   102f2:	fff6861b          	addiw	a2,a3,-1
   102f6:	1602                	slli	a2,a2,0x20
   102f8:	9201                	srli	a2,a2,0x20
   102fa:	0605                	addi	a2,a2,1
   102fc:	962e                	add	a2,a2,a1
   102fe:	4681                	li	a3,0
   10300:	04878713          	addi	a4,a5,72
   10304:	40d7272f          	amoor.w	a4,a3,(a4)
   10308:	02071513          	slli	a0,a4,0x20
   1030c:	fe054ae3          	bltz	a0,0x10300
   10310:	47f8                	lw	a4,76(a5)
   10312:	2701                	sext.w	a4,a4
   10314:	fe074ee3          	bltz	a4,0x10310
   10318:	00e58023          	sb	a4,0(a1)
   1031c:	0585                	addi	a1,a1,1
   1031e:	feb611e3          	bne	a2,a1,0x10300
   10322:	4f98                	lw	a4,24(a5)
   10324:	4501                	li	a0,0
   10326:	9b71                	andi	a4,a4,-4
   10328:	cf98                	sw	a4,24(a5)
   1032a:	8082                	ret
   1032c:	40b527af          	amoor.w	a5,a1,(a0)
   10330:	02079713          	slli	a4,a5,0x20
   10334:	fe074ce3          	bltz	a4,0x1032c
   10338:	8082                	ret
   1033a:	415c                	lw	a5,4(a0)
   1033c:	2781                	sext.w	a5,a5
   1033e:	fe07cee3          	bltz	a5,0x1033a
   10342:	0ff7f513          	zext.b	a0,a5
   10346:	8082                	ret
   10348:	0005c783          	lbu	a5,0(a1)
   1034c:	cb99                	beqz	a5,0x10362
   1034e:	0585                	addi	a1,a1,1
   10350:	40f5272f          	amoor.w	a4,a5,(a0)
   10354:	02071693          	slli	a3,a4,0x20
   10358:	fe06cce3          	bltz	a3,0x10350
   1035c:	0005c783          	lbu	a5,0(a1)
   10360:	f7fd                	bnez	a5,0x1034e
   10362:	8082                	ret
   10364:	46f1                	li	a3,28
   10366:	4825                	li	a6,9
   10368:	5671                	li	a2,-4
   1036a:	00d5d73b          	srlw	a4,a1,a3
   1036e:	8b3d                	andi	a4,a4,15
   10370:	05770793          	addi	a5,a4,87
   10374:	00e86463          	bltu	a6,a4,0x1037c
   10378:	03070793          	addi	a5,a4,48
   1037c:	40f5272f          	amoor.w	a4,a5,(a0)
   10380:	02071893          	slli	a7,a4,0x20
   10384:	fe08cce3          	bltz	a7,0x1037c
   10388:	36f1                	addiw	a3,a3,-4
   1038a:	fec690e3          	bne	a3,a2,0x1036a
   1038e:	8082                	ret
   10390:	4205d893          	srai	a7,a1,0x20
   10394:	46f1                	li	a3,28
   10396:	4825                	li	a6,9
   10398:	5671                	li	a2,-4
   1039a:	00d8d73b          	srlw	a4,a7,a3
   1039e:	8b3d                	andi	a4,a4,15
   103a0:	05770793          	addi	a5,a4,87
   103a4:	00e86463          	bltu	a6,a4,0x103ac
   103a8:	03070793          	addi	a5,a4,48
   103ac:	40f5272f          	amoor.w	a4,a5,(a0)
   103b0:	02071313          	slli	t1,a4,0x20
   103b4:	fe034ce3          	bltz	t1,0x103ac
   103b8:	36f1                	addiw	a3,a3,-4
   103ba:	fec690e3          	bne	a3,a2,0x1039a
   103be:	2581                	sext.w	a1,a1
   103c0:	46f1                	li	a3,28
   103c2:	4825                	li	a6,9
   103c4:	5671                	li	a2,-4
   103c6:	00d5d73b          	srlw	a4,a1,a3
   103ca:	8b3d                	andi	a4,a4,15
   103cc:	05770793          	addi	a5,a4,87
   103d0:	00e86463          	bltu	a6,a4,0x103d8
   103d4:	03070793          	addi	a5,a4,48
   103d8:	40f5272f          	amoor.w	a4,a5,(a0)
   103dc:	02071893          	slli	a7,a4,0x20
   103e0:	fe08cce3          	bltz	a7,0x103d8
   103e4:	36f1                	addiw	a3,a3,-4
   103e6:	fec690e3          	bne	a3,a2,0x103c6
   103ea:	8082                	ret
   103ec:	da010113          	addi	sp,sp,-608
   103f0:	23513423          	sd	s5,552(sp)
   103f4:	23613023          	sd	s6,544(sp)
   103f8:	8ab2                	mv	s5,a2
   103fa:	8b2e                	mv	s6,a1
   103fc:	05c00693          	li	a3,92
   10400:	20000613          	li	a2,512
   10404:	080c                	addi	a1,sp,16
   10406:	23313c23          	sd	s3,568(sp)
   1040a:	24113c23          	sd	ra,600(sp)
   1040e:	24813823          	sd	s0,592(sp)
   10412:	24913423          	sd	s1,584(sp)
   10416:	25213023          	sd	s2,576(sp)
   1041a:	23413823          	sd	s4,560(sp)
   1041e:	21713c23          	sd	s7,536(sp)
   10422:	89aa                	mv	s3,a0
   10424:	e53ff0ef          	jal	0x10276
   10428:	e535                	bnez	a0,0x10494
   1042a:	5a16                	lw	s4,100(sp)
   1042c:	5906                	lw	s2,96(sp)
   1042e:	6466                	ld	s0,88(sp)
   10430:	0349093b          	mulw	s2,s2,s4
   10434:	1ff9091b          	addiw	s2,s2,511
   10438:	0099591b          	srliw	s2,s2,0x9
   1043c:	1902                	slli	s2,s2,0x20
   1043e:	02095913          	srli	s2,s2,0x20
   10442:	9922                	add	s2,s2,s0
   10444:	03247a63          	bgeu	s0,s2,0x10478
   10448:	0094149b          	slliw	s1,s0,0x9
   1044c:	20000b93          	li	s7,512
   10450:	8626                	mv	a2,s1
   10452:	080c                	addi	a1,sp,16
   10454:	20000693          	li	a3,512
   10458:	854e                	mv	a0,s3
   1045a:	e1dff0ef          	jal	0x10276
   1045e:	034bd63b          	divuw	a2,s7,s4
   10462:	85d6                	mv	a1,s5
   10464:	0808                	addi	a0,sp,16
   10466:	0405                	addi	s0,s0,1
   10468:	2004849b          	addiw	s1,s1,512
   1046c:	514000ef          	jal	0x10980
   10470:	c111                	beqz	a0,0x10474
   10472:	e589                	bnez	a1,0x1047c
   10474:	fd246ee3          	bltu	s0,s2,0x10450
   10478:	450d                	li	a0,3
   1047a:	a831                	j	0x10496
   1047c:	00158693          	addi	a3,a1,1
   10480:	8e89                	sub	a3,a3,a0
   10482:	0095161b          	slliw	a2,a0,0x9
   10486:	0096969b          	slliw	a3,a3,0x9
   1048a:	85da                	mv	a1,s6
   1048c:	854e                	mv	a0,s3
   1048e:	de9ff0ef          	jal	0x10276
   10492:	c111                	beqz	a0,0x10496
   10494:	4511                	li	a0,4
   10496:	25813083          	ld	ra,600(sp)
   1049a:	25013403          	ld	s0,592(sp)
   1049e:	24813483          	ld	s1,584(sp)
   104a2:	24013903          	ld	s2,576(sp)
   104a6:	23813983          	ld	s3,568(sp)
   104aa:	23013a03          	ld	s4,560(sp)
   104ae:	22813a83          	ld	s5,552(sp)
   104b2:	22013b03          	ld	s6,544(sp)
   104b6:	21813b83          	ld	s7,536(sp)
   104ba:	26010113          	addi	sp,sp,608
   104be:	8082                	ret
   104c0:	db010113          	addi	sp,sp,-592
   104c4:	23313423          	sd	s3,552(sp)
   104c8:	21513c23          	sd	s5,536(sp)
   104cc:	89b2                	mv	s3,a2
   104ce:	8aae                	mv	s5,a1
   104d0:	4685                	li	a3,1
   104d2:	4605                	li	a2,1
   104d4:	080c                	addi	a1,sp,16
   104d6:	23213823          	sd	s2,560(sp)
   104da:	24113423          	sd	ra,584(sp)
   104de:	24813023          	sd	s0,576(sp)
   104e2:	22913c23          	sd	s1,568(sp)
   104e6:	23413023          	sd	s4,544(sp)
   104ea:	21613823          	sd	s6,528(sp)
   104ee:	892a                	mv	s2,a0
   104f0:	01f000ef          	jal	0x10d0e
   104f4:	c91d                	beqz	a0,0x1052a
   104f6:	4785                	li	a5,1
   104f8:	08f50b63          	beq	a0,a5,0x1058e
   104fc:	4789                	li	a5,2
   104fe:	08f50663          	beq	a0,a5,0x1058a
   10502:	4531                	li	a0,12
   10504:	24813083          	ld	ra,584(sp)
   10508:	24013403          	ld	s0,576(sp)
   1050c:	23813483          	ld	s1,568(sp)
   10510:	23013903          	ld	s2,560(sp)
   10514:	22813983          	ld	s3,552(sp)
   10518:	22013a03          	ld	s4,544(sp)
   1051c:	21813a83          	ld	s5,536(sp)
   10520:	21013b03          	ld	s6,528(sp)
   10524:	25010113          	addi	sp,sp,592
   10528:	8082                	ret
   1052a:	5a16                	lw	s4,100(sp)
   1052c:	5486                	lw	s1,96(sp)
   1052e:	6466                	ld	s0,88(sp)
   10530:	034484bb          	mulw	s1,s1,s4
   10534:	1ff4849b          	addiw	s1,s1,511
   10538:	0094d49b          	srliw	s1,s1,0x9
   1053c:	1482                	slli	s1,s1,0x20
   1053e:	9081                	srli	s1,s1,0x20
   10540:	94a2                	add	s1,s1,s0
   10542:	04947a63          	bgeu	s0,s1,0x10596
   10546:	20000b13          	li	s6,512
   1054a:	0004061b          	sext.w	a2,s0
   1054e:	080c                	addi	a1,sp,16
   10550:	4685                	li	a3,1
   10552:	854a                	mv	a0,s2
   10554:	7ba000ef          	jal	0x10d0e
   10558:	034b563b          	divuw	a2,s6,s4
   1055c:	85ce                	mv	a1,s3
   1055e:	0808                	addi	a0,sp,16
   10560:	0405                	addi	s0,s0,1
   10562:	41e000ef          	jal	0x10980
   10566:	c515                	beqz	a0,0x10592
   10568:	c58d                	beqz	a1,0x10592
   1056a:	00158693          	addi	a3,a1,1
   1056e:	8e89                	sub	a3,a3,a0
   10570:	0005061b          	sext.w	a2,a0
   10574:	85d6                	mv	a1,s5
   10576:	854a                	mv	a0,s2
   10578:	796000ef          	jal	0x10d0e
   1057c:	d541                	beqz	a0,0x10504
   1057e:	4705                	li	a4,1
   10580:	00e50763          	beq	a0,a4,0x1058e
   10584:	4709                	li	a4,2
   10586:	f6e51ee3          	bne	a0,a4,0x10502
   1058a:	452d                	li	a0,11
   1058c:	bfa5                	j	0x10504
   1058e:	4529                	li	a0,10
   10590:	bf95                	j	0x10504
   10592:	fa946ce3          	bltu	s0,s1,0x1054a
   10596:	450d                	li	a0,3
   10598:	b7b5                	j	0x10504
   1059a:	7179                	addi	sp,sp,-48
   1059c:	f022                	sd	s0,32(sp)
   1059e:	842a                	mv	s0,a0
   105a0:	24853503          	ld	a0,584(a0)
   105a4:	8732                	mv	a4,a2
   105a6:	25042603          	lw	a2,592(s0)
   105aa:	0526                	slli	a0,a0,0x9
   105ac:	ec26                	sd	s1,24(sp)
   105ae:	9522                	add	a0,a0,s0
   105b0:	84ae                	mv	s1,a1
   105b2:	85ba                	mv	a1,a4
   105b4:	f406                	sd	ra,40(sp)
   105b6:	3ca000ef          	jal	0x10980
   105ba:	e02a                	sd	a0,0(sp)
   105bc:	e42e                	sd	a1,8(sp)
   105be:	c909                	beqz	a0,0x105d0
   105c0:	87aa                	mv	a5,a0
   105c2:	450d                	li	a0,3
   105c4:	ed81                	bnez	a1,0x105dc
   105c6:	70a2                	ld	ra,40(sp)
   105c8:	7402                	ld	s0,32(sp)
   105ca:	64e2                	ld	s1,24(sp)
   105cc:	6145                	addi	sp,sp,48
   105ce:	8082                	ret
   105d0:	70a2                	ld	ra,40(sp)
   105d2:	7402                	ld	s0,32(sp)
   105d4:	64e2                	ld	s1,24(sp)
   105d6:	450d                	li	a0,3
   105d8:	6145                	addi	sp,sp,48
   105da:	8082                	ret
   105dc:	030806b7          	lui	a3,0x3080
   105e0:	4705                	li	a4,1
   105e2:	00e68023          	sb	a4,0(a3) # 0x3080000
   105e6:	4298                	lw	a4,0(a3)
   105e8:	01e7571b          	srliw	a4,a4,0x1e
   105ec:	2701                	sext.w	a4,a4
   105ee:	c719                	beqz	a4,0x105fc
   105f0:	4501                	li	a0,0
   105f2:	70a2                	ld	ra,40(sp)
   105f4:	7402                	ld	s0,32(sp)
   105f6:	64e2                	ld	s1,24(sp)
   105f8:	6145                	addi	sp,sp,48
   105fa:	8082                	ret
   105fc:	0585                	addi	a1,a1,1
   105fe:	8d9d                	sub	a1,a1,a5
   10600:	05a6                	slli	a1,a1,0x9
   10602:	e68c                	sd	a1,8(a3)
   10604:	07a6                	slli	a5,a5,0x9
   10606:	ea84                	sd	s1,16(a3)
   10608:	97a2                	add	a5,a5,s0
   1060a:	ee9c                	sd	a5,24(a3)
   1060c:	3f0007b7          	lui	a5,0x3f000
   10610:	27a1                	addiw	a5,a5,8 # 0x3f000008
   10612:	c2dc                	sw	a5,4(a3)
   10614:	00a68023          	sb	a0,0(a3)
   10618:	03080737          	lui	a4,0x3080
   1061c:	431c                	lw	a5,0(a4)
   1061e:	8b89                	andi	a5,a5,2
   10620:	fff5                	bnez	a5,0x1061c
   10622:	431c                	lw	a5,0(a4)
   10624:	4685                	li	a3,1
   10626:	01e7d79b          	srliw	a5,a5,0x1e
   1062a:	2781                	sext.w	a5,a5
   1062c:	fcd792e3          	bne	a5,a3,0x105f0
   10630:	00070023          	sb	zero,0(a4) # 0x3080000
   10634:	4501                	li	a0,0
   10636:	bf75                	j	0x105f2
   10638:	03080737          	lui	a4,0x3080
   1063c:	4785                	li	a5,1
   1063e:	00f70023          	sb	a5,0(a4) # 0x3080000
   10642:	431c                	lw	a5,0(a4)
   10644:	01e7d79b          	srliw	a5,a5,0x1e
   10648:	2781                	sext.w	a5,a5
   1064a:	ef85                	bnez	a5,0x10682
   1064c:	e70c                	sd	a1,8(a4)
   1064e:	eb08                	sd	a0,16(a4)
   10650:	090007b7          	lui	a5,0x9000
   10654:	ef1c                	sd	a5,24(a4)
   10656:	ff0007b7          	lui	a5,0xff000
   1065a:	c35c                	sw	a5,4(a4)
   1065c:	478d                	li	a5,3
   1065e:	00f70023          	sb	a5,0(a4)
   10662:	03080737          	lui	a4,0x3080
   10666:	431c                	lw	a5,0(a4)
   10668:	8b89                	andi	a5,a5,2
   1066a:	fff5                	bnez	a5,0x10666
   1066c:	431c                	lw	a5,0(a4)
   1066e:	4685                	li	a3,1
   10670:	01e7d79b          	srliw	a5,a5,0x1e
   10674:	2781                	sext.w	a5,a5
   10676:	00d79663          	bne	a5,a3,0x10682
   1067a:	00070023          	sb	zero,0(a4) # 0x3080000
   1067e:	4501                	li	a0,0
   10680:	8082                	ret
   10682:	4535                	li	a0,13
   10684:	8082                	ret
   10686:	1141                	addi	sp,sp,-16
   10688:	e406                	sd	ra,8(sp)
   1068a:	e022                	sd	s0,0(sp)
   1068c:	f14027f3          	csrr	a5,mhartid
   10690:	e7a1                	bnez	a5,0x106d8
   10692:	100107b7          	lui	a5,0x10010
   10696:	4705                	li	a4,1
   10698:	c798                	sw	a4,8(a5)
   1069a:	87aa                	mv	a5,a0
   1069c:	c599                	beqz	a1,0x106aa
   1069e:	00055663          	bgez	a0,0x106aa
   106a2:	4705                	li	a4,1
   106a4:	175e                	slli	a4,a4,0x37
   106a6:	00e567b3          	or	a5,a0,a4
   106aa:	03859413          	slli	s0,a1,0x38
   106ae:	10010537          	lui	a0,0x10010
   106b2:	00003597          	auipc	a1,0x3
   106b6:	09658593          	addi	a1,a1,150 # 0x13748
   106ba:	8c5d                	or	s0,s0,a5
   106bc:	c8dff0ef          	jal	0x10348
   106c0:	42045593          	srai	a1,s0,0x20
   106c4:	10010537          	lui	a0,0x10010
   106c8:	c9dff0ef          	jal	0x10364
   106cc:	0004059b          	sext.w	a1,s0
   106d0:	10010537          	lui	a0,0x10010
   106d4:	c91ff0ef          	jal	0x10364
   106d8:	100607b7          	lui	a5,0x10060
   106dc:	00c78693          	addi	a3,a5,12 # 0x1006000c
   106e0:	6721                	lui	a4,0x8
   106e2:	0f50000f          	fence	iorw,ow
   106e6:	44e6a02f          	amoor.w.aq	zero,a4,(a3)
   106ea:	00878693          	addi	a3,a5,8
   106ee:	0f50000f          	fence	iorw,ow
   106f2:	44e6a02f          	amoor.w.aq	zero,a4,(a3)
   106f6:	04078793          	addi	a5,a5,64
   106fa:	0f50000f          	fence	iorw,ow
   106fe:	44e7a02f          	amoor.w.aq	zero,a4,(a5)
   10702:	a001                	j	0x10702
   10704:	6785                	lui	a5,0x1
   10706:	439c                	lw	a5,0(a5)
   10708:	7139                	addi	sp,sp,-64
   1070a:	fc06                	sd	ra,56(sp)
   1070c:	2781                	sext.w	a5,a5
   1070e:	f822                	sd	s0,48(sp)
   10710:	f426                	sd	s1,40(sp)
   10712:	f04a                	sd	s2,32(sp)
   10714:	ec4e                	sd	s3,24(sp)
   10716:	e852                	sd	s4,16(sp)
   10718:	e456                	sd	s5,8(sp)
   1071a:	e05a                	sd	s6,0(sp)
   1071c:	4729                	li	a4,10
   1071e:	ffb7869b          	addiw	a3,a5,-5 # 0xffb
   10722:	00d77663          	bgeu	a4,a3,0x1072e
   10726:	4581                	li	a1,0
   10728:	4505                	li	a0,1
   1072a:	f5dff0ef          	jal	0x10686
   1072e:	4705                	li	a4,1
   10730:	00d71733          	sll	a4,a4,a3
   10734:	62377693          	andi	a3,a4,1571
   10738:	84aa                	mv	s1,a0
   1073a:	892e                	mv	s2,a1
   1073c:	8432                	mv	s0,a2
   1073e:	ea85                	bnez	a3,0x1076e
   10740:	05077693          	andi	a3,a4,80
   10744:	e6b1                	bnez	a3,0x10790
   10746:	18c77713          	andi	a4,a4,396
   1074a:	df71                	beqz	a4,0x10726
   1074c:	37e9                	addiw	a5,a5,-6
   1074e:	0007869b          	sext.w	a3,a5
   10752:	4725                	li	a4,9
   10754:	18d76363          	bltu	a4,a3,0x108da
   10758:	1782                	slli	a5,a5,0x20
   1075a:	9381                	srli	a5,a5,0x20
   1075c:	00003717          	auipc	a4,0x3
   10760:	f5c70713          	addi	a4,a4,-164 # 0x136b8
   10764:	078a                	slli	a5,a5,0x2
   10766:	97ba                	add	a5,a5,a4
   10768:	439c                	lw	a5,0(a5)
   1076a:	97ba                	add	a5,a5,a4
   1076c:	8782                	jr	a5
   1076e:	37e9                	addiw	a5,a5,-6
   10770:	0007869b          	sext.w	a3,a5
   10774:	4725                	li	a4,9
   10776:	02d76e63          	bltu	a4,a3,0x107b2
   1077a:	1782                	slli	a5,a5,0x20
   1077c:	9381                	srli	a5,a5,0x20
   1077e:	00003717          	auipc	a4,0x3
   10782:	f6270713          	addi	a4,a4,-158 # 0x136e0
   10786:	078a                	slli	a5,a5,0x2
   10788:	97ba                	add	a5,a5,a4
   1078a:	439c                	lw	a5,0(a5)
   1078c:	97ba                	add	a5,a5,a4
   1078e:	8782                	jr	a5
   10790:	37e9                	addiw	a5,a5,-6
   10792:	0007869b          	sext.w	a3,a5
   10796:	4725                	li	a4,9
   10798:	14d76b63          	bltu	a4,a3,0x108ee
   1079c:	1782                	slli	a5,a5,0x20
   1079e:	9381                	srli	a5,a5,0x20
   107a0:	00003717          	auipc	a4,0x3
   107a4:	f6870713          	addi	a4,a4,-152 # 0x13708
   107a8:	078a                	slli	a5,a5,0x2
   107aa:	97ba                	add	a5,a5,a4
   107ac:	439c                	lw	a5,0(a5)
   107ae:	97ba                	add	a5,a5,a4
   107b0:	8782                	jr	a5
   107b2:	20000a37          	lui	s4,0x20000
   107b6:	100409b7          	lui	s3,0x10040
   107ba:	6715                	lui	a4,0x5
   107bc:	e1f7079b          	addiw	a5,a4,-481 # 0x4e1f
   107c0:	9c3d                	addw	s0,s0,a5
   107c2:	e207071b          	addiw	a4,a4,-480
   107c6:	02e457bb          	divuw	a5,s0,a4
   107ca:	c391                	beqz	a5,0x107ce
   107cc:	37fd                	addiw	a5,a5,-1
   107ce:	00f9a023          	sw	a5,0(s3) # 0x10040000
   107d2:	0609a783          	lw	a5,96(s3)
   107d6:	06600593          	li	a1,102
   107da:	854e                	mv	a0,s3
   107dc:	9bf9                	andi	a5,a5,-2
   107de:	06f9a023          	sw	a5,96(s3)
   107e2:	a77ff0ef          	jal	0x10258
   107e6:	09900593          	li	a1,153
   107ea:	854e                	mv	a0,s3
   107ec:	a6dff0ef          	jal	0x10258
   107f0:	000307b7          	lui	a5,0x30
   107f4:	0077e793          	ori	a5,a5,7
   107f8:	06f9a223          	sw	a5,100(s3)
   107fc:	0609a783          	lw	a5,96(s3)
   10800:	0017e793          	ori	a5,a5,1
   10804:	06f9a023          	sw	a5,96(s3)
   10808:	0cc0000f          	fence	io,io
   1080c:	864a                	mv	a2,s2
   1080e:	85a6                	mv	a1,s1
   10810:	8552                	mv	a0,s4
   10812:	d89ff0ef          	jal	0x1059a
   10816:	2501                	sext.w	a0,a0
   10818:	e15d                	bnez	a0,0x108be
   1081a:	70e2                	ld	ra,56(sp)
   1081c:	7442                	ld	s0,48(sp)
   1081e:	74a2                	ld	s1,40(sp)
   10820:	7902                	ld	s2,32(sp)
   10822:	69e2                	ld	s3,24(sp)
   10824:	6a42                	ld	s4,16(sp)
   10826:	6aa2                	ld	s5,8(sp)
   10828:	6b02                	ld	s6,0(sp)
   1082a:	6121                	addi	sp,sp,64
   1082c:	8082                	ret
   1082e:	4781                	li	a5,0
   10830:	e3f9                	bnez	a5,0x108f6
   10832:	20000a37          	lui	s4,0x20000
   10836:	100409b7          	lui	s3,0x10040
   1083a:	6715                	lui	a4,0x5
   1083c:	e1f7079b          	addiw	a5,a4,-481 # 0x4e1f
   10840:	9c3d                	addw	s0,s0,a5
   10842:	e207071b          	addiw	a4,a4,-480
   10846:	02e457bb          	divuw	a5,s0,a4
   1084a:	c391                	beqz	a5,0x1084e
   1084c:	37fd                	addiw	a5,a5,-1 # 0x2ffff
   1084e:	00f9a023          	sw	a5,0(s3) # 0x10040000
   10852:	0609a783          	lw	a5,96(s3)
   10856:	06600593          	li	a1,102
   1085a:	854e                	mv	a0,s3
   1085c:	9bf9                	andi	a5,a5,-2
   1085e:	06f9a023          	sw	a5,96(s3)
   10862:	9f7ff0ef          	jal	0x10258
   10866:	09900593          	li	a1,153
   1086a:	854e                	mv	a0,s3
   1086c:	9edff0ef          	jal	0x10258
   10870:	006b27b7          	lui	a5,0x6b2
   10874:	08778793          	addi	a5,a5,135 # 0x6b2087
   10878:	b741                	j	0x107f8
   1087a:	10040a37          	lui	s4,0x10040
   1087e:	49c1                	li	s3,16
   10880:	4a91                	li	s5,4
   10882:	00003b17          	auipc	s6,0x3
   10886:	eaeb0b13          	addi	s6,s6,-338 # 0x13730
   1088a:	4601                	li	a2,0
   1088c:	85a2                	mv	a1,s0
   1088e:	8552                	mv	a0,s4
   10890:	2c4000ef          	jal	0x10b54
   10894:	e901                	bnez	a0,0x108a4
   10896:	864a                	mv	a2,s2
   10898:	85a6                	mv	a1,s1
   1089a:	8552                	mv	a0,s4
   1089c:	c25ff0ef          	jal	0x104c0
   108a0:	2501                	sext.w	a0,a0
   108a2:	bf9d                	j	0x10818
   108a4:	357d                	addiw	a0,a0,-1 # 0x1000ffff
   108a6:	0005079b          	sext.w	a5,a0
   108aa:	00faef63          	bltu	s5,a5,0x108c8
   108ae:	1502                	slli	a0,a0,0x20
   108b0:	8179                	srli	a0,a0,0x1e
   108b2:	955a                	add	a0,a0,s6
   108b4:	4108                	lw	a0,0(a0)
   108b6:	d165                	beqz	a0,0x10896
   108b8:	19fd                	addi	s3,s3,-1
   108ba:	fc0998e3          	bnez	s3,0x1088a
   108be:	1502                	slli	a0,a0,0x20
   108c0:	4581                	li	a1,0
   108c2:	9101                	srli	a0,a0,0x20
   108c4:	dc3ff0ef          	jal	0x10686
   108c8:	4531                	li	a0,12
   108ca:	b7fd                	j	0x108b8
   108cc:	4a01                	li	s4,0
   108ce:	100509b7          	lui	s3,0x10050
   108d2:	b7a5                	j	0x1083a
   108d4:	10050a37          	lui	s4,0x10050
   108d8:	b75d                	j	0x1087e
   108da:	30000a37          	lui	s4,0x30000
   108de:	100419b7          	lui	s3,0x10041
   108e2:	bde1                	j	0x107ba
   108e4:	4785                	li	a5,1
   108e6:	b7a9                	j	0x10830
   108e8:	10041a37          	lui	s4,0x10041
   108ec:	bf49                	j	0x1087e
   108ee:	4a01                	li	s4,0
   108f0:	100509b7          	lui	s3,0x10050
   108f4:	b5d9                	j	0x107ba
   108f6:	30000a37          	lui	s4,0x30000
   108fa:	100419b7          	lui	s3,0x10041
   108fe:	bf35                	j	0x1083a
   10900:	100409b7          	lui	s3,0x10040
   10904:	6715                	lui	a4,0x5
   10906:	e1f7079b          	addiw	a5,a4,-481 # 0x4e1f
   1090a:	9c3d                	addw	s0,s0,a5
   1090c:	e207071b          	addiw	a4,a4,-480
   10910:	02e457bb          	divuw	a5,s0,a4
   10914:	c391                	beqz	a5,0x10918
   10916:	37fd                	addiw	a5,a5,-1
   10918:	00f9a023          	sw	a5,0(s3) # 0x10040000
   1091c:	0609a783          	lw	a5,96(s3)
   10920:	06600593          	li	a1,102
   10924:	854e                	mv	a0,s3
   10926:	9bf9                	andi	a5,a5,-2
   10928:	06f9a023          	sw	a5,96(s3)
   1092c:	92dff0ef          	jal	0x10258
   10930:	09900593          	li	a1,153
   10934:	854e                	mv	a0,s3
   10936:	923ff0ef          	jal	0x10258
   1093a:	864a                	mv	a2,s2
   1093c:	85a6                	mv	a1,s1
   1093e:	854e                	mv	a0,s3
   10940:	aadff0ef          	jal	0x103ec
   10944:	2501                	sext.w	a0,a0
   10946:	bdc9                	j	0x10818
   10948:	100419b7          	lui	s3,0x10041
   1094c:	bf65                	j	0x10904
   1094e:	100509b7          	lui	s3,0x10050
   10952:	bf4d                	j	0x10904
   10954:	0200c7b7          	lui	a5,0x200c
   10958:	ff87b503          	ld	a0,-8(a5) # 0x200bff8
   1095c:	8082                	ret
   1095e:	3e800793          	li	a5,1000
   10962:	02f55533          	divu	a0,a0,a5
   10966:	0200c7b7          	lui	a5,0x200c
   1096a:	ff87b783          	ld	a5,-8(a5) # 0x200bff8
   1096e:	0200c737          	lui	a4,0x200c
   10972:	0785                	addi	a5,a5,1
   10974:	953e                	add	a0,a0,a5
   10976:	ff873783          	ld	a5,-8(a4) # 0x200bff8
   1097a:	fea7eee3          	bltu	a5,a0,0x10976
   1097e:	8082                	ret
   10980:	1141                	addi	sp,sp,-16
   10982:	ce05                	beqz	a2,0x109ba
   10984:	fff6089b          	addiw	a7,a2,-1
   10988:	1882                	slli	a7,a7,0x20
   1098a:	0198d893          	srli	a7,a7,0x19
   1098e:	98aa                	add	a7,a7,a0
   10990:	08088893          	addi	a7,a7,128
   10994:	872e                	mv	a4,a1
   10996:	01050813          	addi	a6,a0,16
   1099a:	87aa                	mv	a5,a0
   1099c:	a019                	j	0x109a2
   1099e:	03078463          	beq	a5,a6,0x109c6
   109a2:	0007c603          	lbu	a2,0(a5)
   109a6:	00074683          	lbu	a3,0(a4)
   109aa:	0785                	addi	a5,a5,1
   109ac:	0705                	addi	a4,a4,1
   109ae:	fed608e3          	beq	a2,a3,0x1099e
   109b2:	08050513          	addi	a0,a0,128
   109b6:	fd151fe3          	bne	a0,a7,0x10994
   109ba:	e002                	sd	zero,0(sp)
   109bc:	e402                	sd	zero,8(sp)
   109be:	6502                	ld	a0,0(sp)
   109c0:	65a2                	ld	a1,8(sp)
   109c2:	0141                	addi	sp,sp,16
   109c4:	8082                	ret
   109c6:	7518                	ld	a4,40(a0)
   109c8:	711c                	ld	a5,32(a0)
   109ca:	e43a                	sd	a4,8(sp)
   109cc:	e03e                	sd	a5,0(sp)
   109ce:	6502                	ld	a0,0(sp)
   109d0:	65a2                	ld	a1,8(sp)
   109d2:	0141                	addi	sp,sp,16
   109d4:	8082                	ret
   109d6:	00a5c7b3          	xor	a5,a1,a0
   109da:	8b9d                	andi	a5,a5,7
   109dc:	00c508b3          	add	a7,a0,a2
   109e0:	e7a1                	bnez	a5,0x10a28
   109e2:	479d                	li	a5,7
   109e4:	04c7f263          	bgeu	a5,a2,0x10a28
   109e8:	00757713          	andi	a4,a0,7
   109ec:	87aa                	mv	a5,a0
   109ee:	eb29                	bnez	a4,0x10a40
   109f0:	ff88f813          	andi	a6,a7,-8
   109f4:	fc080713          	addi	a4,a6,-64
   109f8:	06e7e763          	bltu	a5,a4,0x10a66
   109fc:	86ae                	mv	a3,a1
   109fe:	873e                	mv	a4,a5
   10a00:	0307f163          	bgeu	a5,a6,0x10a22
   10a04:	6290                	ld	a2,0(a3)
   10a06:	0721                	addi	a4,a4,8
   10a08:	06a1                	addi	a3,a3,8
   10a0a:	fec73c23          	sd	a2,-8(a4)
   10a0e:	ff076be3          	bltu	a4,a6,0x10a04
   10a12:	fff7c713          	not	a4,a5
   10a16:	983a                	add	a6,a6,a4
   10a18:	ff887813          	andi	a6,a6,-8
   10a1c:	0821                	addi	a6,a6,8
   10a1e:	97c2                	add	a5,a5,a6
   10a20:	95c2                	add	a1,a1,a6
   10a22:	0117e663          	bltu	a5,a7,0x10a2e
   10a26:	8082                	ret
   10a28:	87aa                	mv	a5,a0
   10a2a:	ff157ee3          	bgeu	a0,a7,0x10a26
   10a2e:	0005c703          	lbu	a4,0(a1)
   10a32:	0785                	addi	a5,a5,1
   10a34:	0585                	addi	a1,a1,1
   10a36:	fee78fa3          	sb	a4,-1(a5)
   10a3a:	ff17eae3          	bltu	a5,a7,0x10a2e
   10a3e:	8082                	ret
   10a40:	0005c683          	lbu	a3,0(a1)
   10a44:	0785                	addi	a5,a5,1
   10a46:	0077f713          	andi	a4,a5,7
   10a4a:	fed78fa3          	sb	a3,-1(a5)
   10a4e:	0585                	addi	a1,a1,1
   10a50:	d345                	beqz	a4,0x109f0
   10a52:	0005c683          	lbu	a3,0(a1)
   10a56:	0785                	addi	a5,a5,1
   10a58:	0077f713          	andi	a4,a5,7
   10a5c:	fed78fa3          	sb	a3,-1(a5)
   10a60:	0585                	addi	a1,a1,1
   10a62:	ff79                	bnez	a4,0x10a40
   10a64:	b771                	j	0x109f0
   10a66:	0005b383          	ld	t2,0(a1)
   10a6a:	0085b283          	ld	t0,8(a1)
   10a6e:	0105bf83          	ld	t6,16(a1)
   10a72:	0185bf03          	ld	t5,24(a1)
   10a76:	0205be83          	ld	t4,32(a1)
   10a7a:	0285be03          	ld	t3,40(a1)
   10a7e:	0305b303          	ld	t1,48(a1)
   10a82:	7d90                	ld	a2,56(a1)
   10a84:	04858593          	addi	a1,a1,72
   10a88:	04878793          	addi	a5,a5,72
   10a8c:	ff85b683          	ld	a3,-8(a1)
   10a90:	fa77bc23          	sd	t2,-72(a5)
   10a94:	fc57b023          	sd	t0,-64(a5)
   10a98:	fdf7b423          	sd	t6,-56(a5)
   10a9c:	fde7b823          	sd	t5,-48(a5)
   10aa0:	fdd7bc23          	sd	t4,-40(a5)
   10aa4:	ffc7b023          	sd	t3,-32(a5)
   10aa8:	fe67b423          	sd	t1,-24(a5)
   10aac:	fec7b823          	sd	a2,-16(a5)
   10ab0:	fed7bc23          	sd	a3,-8(a5)
   10ab4:	fae7e9e3          	bltu	a5,a4,0x10a66
   10ab8:	b791                	j	0x109fc
   10aba:	7179                	addi	sp,sp,-48
   10abc:	f406                	sd	ra,40(sp)
   10abe:	f022                	sd	s0,32(sp)
   10ac0:	ec26                	sd	s1,24(sp)
   10ac2:	e84a                	sd	s2,16(sp)
   10ac4:	e44e                	sd	s3,8(sp)
   10ac6:	4d1c                	lw	a5,24(a0)
   10ac8:	89ae                	mv	s3,a1
   10aca:	0ff00593          	li	a1,255
   10ace:	9bf1                	andi	a5,a5,-4
   10ad0:	0027e793          	ori	a5,a5,2
   10ad4:	cd1c                	sw	a5,24(a0)
   10ad6:	8432                	mv	s0,a2
   10ad8:	8936                	mv	s2,a3
   10ada:	84aa                	mv	s1,a0
   10adc:	f7cff0ef          	jal	0x10258
   10ae0:	85ce                	mv	a1,s3
   10ae2:	8526                	mv	a0,s1
   10ae4:	f74ff0ef          	jal	0x10258
   10ae8:	0184559b          	srliw	a1,s0,0x18
   10aec:	0ff5f593          	zext.b	a1,a1
   10af0:	8526                	mv	a0,s1
   10af2:	f66ff0ef          	jal	0x10258
   10af6:	0104559b          	srliw	a1,s0,0x10
   10afa:	0ff5f593          	zext.b	a1,a1
   10afe:	8526                	mv	a0,s1
   10b00:	f58ff0ef          	jal	0x10258
   10b04:	0084559b          	srliw	a1,s0,0x8
   10b08:	0ff5f593          	zext.b	a1,a1
   10b0c:	8526                	mv	a0,s1
   10b0e:	f4aff0ef          	jal	0x10258
   10b12:	0ff47593          	zext.b	a1,s0
   10b16:	8526                	mv	a0,s1
   10b18:	f40ff0ef          	jal	0x10258
   10b1c:	85ca                	mv	a1,s2
   10b1e:	8526                	mv	a0,s1
   10b20:	f38ff0ef          	jal	0x10258
   10b24:	3e800413          	li	s0,1000
   10b28:	a011                	j	0x10b2c
   10b2a:	cc09                	beqz	s0,0x10b44
   10b2c:	0ff00593          	li	a1,255
   10b30:	8526                	mv	a0,s1
   10b32:	f26ff0ef          	jal	0x10258
   10b36:	0185179b          	slliw	a5,a0,0x18
   10b3a:	4187d79b          	sraiw	a5,a5,0x18
   10b3e:	147d                	addi	s0,s0,-1
   10b40:	fe07c5e3          	bltz	a5,0x10b2a
   10b44:	70a2                	ld	ra,40(sp)
   10b46:	7402                	ld	s0,32(sp)
   10b48:	64e2                	ld	s1,24(sp)
   10b4a:	6942                	ld	s2,16(sp)
   10b4c:	69a2                	ld	s3,8(sp)
   10b4e:	2501                	sext.w	a0,a0
   10b50:	6145                	addi	sp,sp,48
   10b52:	8082                	ret
   10b54:	7179                	addi	sp,sp,-48
   10b56:	f022                	sd	s0,32(sp)
   10b58:	e84a                	sd	s2,16(sp)
   10b5a:	f406                	sd	ra,40(sp)
   10b5c:	ec26                	sd	s1,24(sp)
   10b5e:	e44e                	sd	s3,8(sp)
   10b60:	842a                	mv	s0,a0
   10b62:	892e                	mv	s2,a1
   10b64:	c615                	beqz	a2,0x10b90
   10b66:	67a9                	lui	a5,0xa
   10b68:	c3f7859b          	addiw	a1,a5,-961 # 0x9c3f
   10b6c:	00b905bb          	addw	a1,s2,a1
   10b70:	c407879b          	addiw	a5,a5,-960
   10b74:	02f5d7bb          	divuw	a5,a1,a5
   10b78:	eb91                	bnez	a5,0x10b8c
   10b7a:	c01c                	sw	a5,0(s0)
   10b7c:	4501                	li	a0,0
   10b7e:	70a2                	ld	ra,40(sp)
   10b80:	7402                	ld	s0,32(sp)
   10b82:	64e2                	ld	s1,24(sp)
   10b84:	6942                	ld	s2,16(sp)
   10b86:	69a2                	ld	s3,8(sp)
   10b88:	6145                	addi	sp,sp,48
   10b8a:	8082                	ret
   10b8c:	37fd                	addiw	a5,a5,-1
   10b8e:	b7f5                	j	0x10b7a
   10b90:	0200c7b7          	lui	a5,0x200c
   10b94:	ff87b703          	ld	a4,-8(a5) # 0x200bff8
   10b98:	0200c6b7          	lui	a3,0x200c
   10b9c:	3e970713          	addi	a4,a4,1001
   10ba0:	ff86b783          	ld	a5,-8(a3) # 0x200bff8
   10ba4:	fee7eee3          	bltu	a5,a4,0x10ba0
   10ba8:	32000713          	li	a4,800
   10bac:	31f9079b          	addiw	a5,s2,799
   10bb0:	02e7d7bb          	divuw	a5,a5,a4
   10bb4:	00080737          	lui	a4,0x80
   10bb8:	c038                	sw	a4,64(s0)
   10bba:	4858                	lw	a4,20(s0)
   10bbc:	00176713          	ori	a4,a4,1
   10bc0:	c858                	sw	a4,20(s0)
   10bc2:	00042823          	sw	zero,16(s0)
   10bc6:	0007871b          	sext.w	a4,a5
   10bca:	12071f63          	bnez	a4,0x10d08
   10bce:	c018                	sw	a4,0(s0)
   10bd0:	4c1c                	lw	a5,24(s0)
   10bd2:	44a9                	li	s1,10
   10bd4:	0037e793          	ori	a5,a5,3
   10bd8:	cc1c                	sw	a5,24(s0)
   10bda:	34fd                	addiw	s1,s1,-1
   10bdc:	0ff00593          	li	a1,255
   10be0:	8522                	mv	a0,s0
   10be2:	e76ff0ef          	jal	0x10258
   10be6:	f8f5                	bnez	s1,0x10bda
   10be8:	4c1c                	lw	a5,24(s0)
   10bea:	09500693          	li	a3,149
   10bee:	4601                	li	a2,0
   10bf0:	9bf1                	andi	a5,a5,-4
   10bf2:	cc1c                	sw	a5,24(s0)
   10bf4:	04000593          	li	a1,64
   10bf8:	8522                	mv	a0,s0
   10bfa:	ec1ff0ef          	jal	0x10aba
   10bfe:	84aa                	mv	s1,a0
   10c00:	0ff00593          	li	a1,255
   10c04:	8522                	mv	a0,s0
   10c06:	e52ff0ef          	jal	0x10258
   10c0a:	4c1c                	lw	a5,24(s0)
   10c0c:	4705                	li	a4,1
   10c0e:	4505                	li	a0,1
   10c10:	9bf1                	andi	a5,a5,-4
   10c12:	cc1c                	sw	a5,24(s0)
   10c14:	f6e495e3          	bne	s1,a4,0x10b7e
   10c18:	08700693          	li	a3,135
   10c1c:	1aa00613          	li	a2,426
   10c20:	04800593          	li	a1,72
   10c24:	8522                	mv	a0,s0
   10c26:	e95ff0ef          	jal	0x10aba
   10c2a:	84aa                	mv	s1,a0
   10c2c:	0ff00593          	li	a1,255
   10c30:	8522                	mv	a0,s0
   10c32:	e26ff0ef          	jal	0x10258
   10c36:	0ff00593          	li	a1,255
   10c3a:	8522                	mv	a0,s0
   10c3c:	e1cff0ef          	jal	0x10258
   10c40:	0ff00593          	li	a1,255
   10c44:	8522                	mv	a0,s0
   10c46:	e12ff0ef          	jal	0x10258
   10c4a:	89aa                	mv	s3,a0
   10c4c:	0ff00593          	li	a1,255
   10c50:	8522                	mv	a0,s0
   10c52:	e06ff0ef          	jal	0x10258
   10c56:	0005071b          	sext.w	a4,a0
   10c5a:	f5670713          	addi	a4,a4,-170 # 0x7ff56
   10c5e:	14fd                	addi	s1,s1,-1
   10c60:	00f9f793          	andi	a5,s3,15
   10c64:	00e03733          	snez	a4,a4
   10c68:	009034b3          	snez	s1,s1
   10c6c:	17fd                	addi	a5,a5,-1
   10c6e:	00f037b3          	snez	a5,a5
   10c72:	8cd9                	or	s1,s1,a4
   10c74:	0ff00593          	li	a1,255
   10c78:	8522                	mv	a0,s0
   10c7a:	8cdd                	or	s1,s1,a5
   10c7c:	ddcff0ef          	jal	0x10258
   10c80:	4c1c                	lw	a5,24(s0)
   10c82:	4509                	li	a0,2
   10c84:	9bf1                	andi	a5,a5,-4
   10c86:	cc1c                	sw	a5,24(s0)
   10c88:	ee049be3          	bnez	s1,0x10b7e
   10c8c:	4985                	li	s3,1
   10c8e:	06500693          	li	a3,101
   10c92:	4601                	li	a2,0
   10c94:	07700593          	li	a1,119
   10c98:	8522                	mv	a0,s0
   10c9a:	e21ff0ef          	jal	0x10aba
   10c9e:	0ff00593          	li	a1,255
   10ca2:	8522                	mv	a0,s0
   10ca4:	db4ff0ef          	jal	0x10258
   10ca8:	4c1c                	lw	a5,24(s0)
   10caa:	07700693          	li	a3,119
   10cae:	40000637          	lui	a2,0x40000
   10cb2:	9bf1                	andi	a5,a5,-4
   10cb4:	cc1c                	sw	a5,24(s0)
   10cb6:	06900593          	li	a1,105
   10cba:	8522                	mv	a0,s0
   10cbc:	dffff0ef          	jal	0x10aba
   10cc0:	0ff57493          	zext.b	s1,a0
   10cc4:	0ff00593          	li	a1,255
   10cc8:	8522                	mv	a0,s0
   10cca:	d8eff0ef          	jal	0x10258
   10cce:	4c1c                	lw	a5,24(s0)
   10cd0:	9bf1                	andi	a5,a5,-4
   10cd2:	cc1c                	sw	a5,24(s0)
   10cd4:	fb348de3          	beq	s1,s3,0x10c8e
   10cd8:	450d                	li	a0,3
   10cda:	ea0492e3          	bnez	s1,0x10b7e
   10cde:	46d5                	li	a3,21
   10ce0:	20000613          	li	a2,512
   10ce4:	05000593          	li	a1,80
   10ce8:	8522                	mv	a0,s0
   10cea:	dd1ff0ef          	jal	0x10aba
   10cee:	84aa                	mv	s1,a0
   10cf0:	0ff00593          	li	a1,255
   10cf4:	8522                	mv	a0,s0
   10cf6:	d62ff0ef          	jal	0x10258
   10cfa:	4c1c                	lw	a5,24(s0)
   10cfc:	4515                	li	a0,5
   10cfe:	9bf1                	andi	a5,a5,-4
   10d00:	cc1c                	sw	a5,24(s0)
   10d02:	e60482e3          	beqz	s1,0x10b66
   10d06:	bda5                	j	0x10b7e
   10d08:	fff7871b          	addiw	a4,a5,-1
   10d0c:	b5c9                	j	0x10bce
   10d0e:	715d                	addi	sp,sp,-80
   10d10:	f052                	sd	s4,32(sp)
   10d12:	e45e                	sd	s7,8(sp)
   10d14:	8a36                	mv	s4,a3
   10d16:	8bae                	mv	s7,a1
   10d18:	4685                	li	a3,1
   10d1a:	05200593          	li	a1,82
   10d1e:	e0a2                	sd	s0,64(sp)
   10d20:	e486                	sd	ra,72(sp)
   10d22:	fc26                	sd	s1,56(sp)
   10d24:	f84a                	sd	s2,48(sp)
   10d26:	f44e                	sd	s3,40(sp)
   10d28:	ec56                	sd	s5,24(sp)
   10d2a:	e85a                	sd	s6,16(sp)
   10d2c:	842a                	mv	s0,a0
   10d2e:	d8dff0ef          	jal	0x10aba
   10d32:	e16d                	bnez	a0,0x10e14
   10d34:	6909                	lui	s2,0x2
   10d36:	8aaa                	mv	s5,a0
   10d38:	0fe00993          	li	s3,254
   10d3c:	1901                	addi	s2,s2,-32 # 0x1fe0
   10d3e:	0ff00593          	li	a1,255
   10d42:	8522                	mv	a0,s0
   10d44:	d14ff0ef          	jal	0x10258
   10d48:	ff351be3          	bne	a0,s3,0x10d3e
   10d4c:	200b8493          	addi	s1,s7,512
   10d50:	4b01                	li	s6,0
   10d52:	0ff00593          	li	a1,255
   10d56:	8522                	mv	a0,s0
   10d58:	d00ff0ef          	jal	0x10258
   10d5c:	008b571b          	srliw	a4,s6,0x8
   10d60:	008b1793          	slli	a5,s6,0x8
   10d64:	8fd9                	or	a5,a5,a4
   10d66:	8fa9                	xor	a5,a5,a0
   10d68:	03079b13          	slli	s6,a5,0x30
   10d6c:	030b5b13          	srli	s6,s6,0x30
   10d70:	004b579b          	srliw	a5,s6,0x4
   10d74:	8bbd                	andi	a5,a5,15
   10d76:	0167c7b3          	xor	a5,a5,s6
   10d7a:	00c79713          	slli	a4,a5,0xc
   10d7e:	8fb9                	xor	a5,a5,a4
   10d80:	0107979b          	slliw	a5,a5,0x10
   10d84:	4107d79b          	sraiw	a5,a5,0x10
   10d88:	0107971b          	slliw	a4,a5,0x10
   10d8c:	0107571b          	srliw	a4,a4,0x10
   10d90:	0057171b          	slliw	a4,a4,0x5
   10d94:	01277733          	and	a4,a4,s2
   10d98:	8fb9                	xor	a5,a5,a4
   10d9a:	00ab8023          	sb	a0,0(s7)
   10d9e:	03079b13          	slli	s6,a5,0x30
   10da2:	0b85                	addi	s7,s7,1
   10da4:	030b5b13          	srli	s6,s6,0x30
   10da8:	fa9b95e3          	bne	s7,s1,0x10d52
   10dac:	0ff00593          	li	a1,255
   10db0:	8522                	mv	a0,s0
   10db2:	ca6ff0ef          	jal	0x10258
   10db6:	0085149b          	slliw	s1,a0,0x8
   10dba:	0ff00593          	li	a1,255
   10dbe:	8522                	mv	a0,s0
   10dc0:	14c2                	slli	s1,s1,0x30
   10dc2:	90c1                	srli	s1,s1,0x30
   10dc4:	c94ff0ef          	jal	0x10258
   10dc8:	00a4e7b3          	or	a5,s1,a0
   10dcc:	17c2                	slli	a5,a5,0x30
   10dce:	93c1                	srli	a5,a5,0x30
   10dd0:	05679063          	bne	a5,s6,0x10e10
   10dd4:	1a7d                	addi	s4,s4,-1 # 0x2fffffff
   10dd6:	f74044e3          	bgtz	s4,0x10d3e
   10dda:	4685                	li	a3,1
   10ddc:	4601                	li	a2,0
   10dde:	04c00593          	li	a1,76
   10de2:	8522                	mv	a0,s0
   10de4:	cd7ff0ef          	jal	0x10aba
   10de8:	0ff00593          	li	a1,255
   10dec:	8522                	mv	a0,s0
   10dee:	c6aff0ef          	jal	0x10258
   10df2:	4c1c                	lw	a5,24(s0)
   10df4:	9bf1                	andi	a5,a5,-4
   10df6:	cc1c                	sw	a5,24(s0)
   10df8:	60a6                	ld	ra,72(sp)
   10dfa:	6406                	ld	s0,64(sp)
   10dfc:	8556                	mv	a0,s5
   10dfe:	74e2                	ld	s1,56(sp)
   10e00:	7942                	ld	s2,48(sp)
   10e02:	79a2                	ld	s3,40(sp)
   10e04:	7a02                	ld	s4,32(sp)
   10e06:	6ae2                	ld	s5,24(sp)
   10e08:	6b42                	ld	s6,16(sp)
   10e0a:	6ba2                	ld	s7,8(sp)
   10e0c:	6161                	addi	sp,sp,80
   10e0e:	8082                	ret
   10e10:	4a89                	li	s5,2
   10e12:	b7e1                	j	0x10dda
   10e14:	0ff00593          	li	a1,255
   10e18:	8522                	mv	a0,s0
   10e1a:	c3eff0ef          	jal	0x10258
   10e1e:	4c1c                	lw	a5,24(s0)
   10e20:	4a85                	li	s5,1
   10e22:	9bf1                	andi	a5,a5,-4
   10e24:	cc1c                	sw	a5,24(s0)
   10e26:	bfc9                	j	0x10df8
	...
   10e80:	0dd0                	addi	a2,sp,724
   10e82:	edfe                	sd	t6,216(sp)
   10e84:	0000                	unimp
   10e86:	3628                	fld	fa0,104(a2)
   10e88:	0000                	unimp
   10e8a:	3800                	fld	fs0,48(s0)
   10e8c:	0000                	unimp
   10e8e:	8425                	srai	s0,s0,0x9
   10e90:	0000                	unimp
   10e92:	2800                	fld	fs0,16(s0)
   10e94:	0000                	unimp
   10e96:	1100                	addi	s0,sp,160
   10e98:	0000                	unimp
   10e9a:	1000                	addi	s0,sp,32
   10e9c:	0000                	unimp
   10e9e:	0000                	unimp
   10ea0:	0000                	unimp
   10ea2:	b202                	fsd	ft0,288(sp)
   10ea4:	0000                	unimp
   10ea6:	4c25                	li	s8,9
	...
   10eb8:	0000                	unimp
   10eba:	0100                	addi	s0,sp,128
   10ebc:	0000                	unimp
   10ebe:	0000                	unimp
   10ec0:	0000                	unimp
   10ec2:	0300                	addi	s0,sp,384
   10ec4:	0000                	unimp
   10ec6:	0400                	addi	s0,sp,512
   10ec8:	0000                	unimp
   10eca:	0000                	unimp
   10ecc:	0000                	unimp
   10ece:	0200                	addi	s0,sp,256
   10ed0:	0000                	unimp
   10ed2:	0300                	addi	s0,sp,384
   10ed4:	0000                	unimp
   10ed6:	0400                	addi	s0,sp,512
   10ed8:	0000                	unimp
   10eda:	0f00                	addi	s0,sp,912
   10edc:	0000                	unimp
   10ede:	0200                	addi	s0,sp,256
   10ee0:	0000                	unimp
   10ee2:	0300                	addi	s0,sp,384
   10ee4:	0000                	unimp
   10ee6:	2b00                	fld	fs0,16(a4)
   10ee8:	0000                	unimp
   10eea:	1b00                	addi	s0,sp,432
   10eec:	69466953          	.insn	4, 0x69466953
   10ef0:	6576                	ld	a0,344(sp)
   10ef2:	462c                	lw	a1,72(a2)
   10ef4:	3755                	addiw	a4,a4,-11
   10ef6:	3034                	fld	fa3,96(s0)
   10ef8:	432d                	li	t1,11
   10efa:	3030                	fld	fa2,96(s0)
   10efc:	2d30                	fld	fa2,88(a0)
   10efe:	6564                	ld	s1,200(a0)
   10f00:	0076                	c.slli	zero,0x1d
   10f02:	7566                	ld	a0,120(sp)
   10f04:	2d303037          	lui	zero,0x2d303
   10f08:	6564                	ld	s1,200(a0)
   10f0a:	0076                	c.slli	zero,0x1d
   10f0c:	69666973          	csrrsi	s2,0x696,12
   10f10:	6576                	ld	a0,344(sp)
   10f12:	642d                	lui	s0,0xb
   10f14:	7665                	lui	a2,0xffff9
   10f16:	0000                	unimp
   10f18:	0000                	unimp
   10f1a:	0300                	addi	s0,sp,384
   10f1c:	0000                	unimp
   10f1e:	1200                	addi	s0,sp,288
   10f20:	0000                	unimp
   10f22:	2600                	fld	fs0,8(a2)
   10f24:	69466953          	.insn	4, 0x69466953
   10f28:	6576                	ld	a0,344(sp)
   10f2a:	462c                	lw	a1,72(a2)
   10f2c:	3755                	addiw	a4,a4,-11
   10f2e:	3034                	fld	fa3,96(s0)
   10f30:	432d                	li	t1,11
   10f32:	3030                	fld	fa2,96(s0)
   10f34:	0030                	addi	a2,sp,8
   10f36:	0000                	unimp
   10f38:	0000                	unimp
   10f3a:	0100                	addi	s0,sp,128
   10f3c:	6c61                	lui	s8,0x18
   10f3e:	6169                	addi	sp,sp,208
   10f40:	00736573          	csrrsi	a0,0x7,6
   10f44:	0000                	unimp
   10f46:	0300                	addi	s0,sp,384
   10f48:	0000                	unimp
   10f4a:	1500                	addi	s0,sp,672
   10f4c:	0000                	unimp
   10f4e:	2c00                	fld	fs0,24(s0)
   10f50:	636f732f          	.insn	4, 0x636f732f
   10f54:	7265732f          	.insn	4, 0x7265732f
   10f58:	6169                	addi	sp,sp,208
   10f5a:	406c                	lw	a1,68(s0)
   10f5c:	3031                	.insn	2, 0x3031
   10f5e:	3130                	fld	fa2,96(a0)
   10f60:	3030                	fld	fa2,96(s0)
   10f62:	3030                	fld	fa2,96(s0)
   10f64:	0000                	unimp
   10f66:	0000                	unimp
   10f68:	0000                	unimp
   10f6a:	0300                	addi	s0,sp,384
   10f6c:	0000                	unimp
   10f6e:	1500                	addi	s0,sp,672
   10f70:	0000                	unimp
   10f72:	3400                	fld	fs0,40(s0)
   10f74:	636f732f          	.insn	4, 0x636f732f
   10f78:	7265732f          	.insn	4, 0x7265732f
   10f7c:	6169                	addi	sp,sp,208
   10f7e:	406c                	lw	a1,68(s0)
   10f80:	3031                	.insn	2, 0x3031
   10f82:	3130                	fld	fa2,96(a0)
   10f84:	3031                	.insn	2, 0x3031
   10f86:	3030                	fld	fa2,96(s0)
   10f88:	0000                	unimp
   10f8a:	0000                	unimp
   10f8c:	0000                	unimp
   10f8e:	0200                	addi	s0,sp,256
   10f90:	0000                	unimp
   10f92:	0100                	addi	s0,sp,128
   10f94:	73757063          	bgeu	a0,s7,0x116b4
   10f98:	0000                	unimp
   10f9a:	0000                	unimp
   10f9c:	0000                	unimp
   10f9e:	0300                	addi	s0,sp,384
   10fa0:	0000                	unimp
   10fa2:	0400                	addi	s0,sp,512
   10fa4:	0000                	unimp
   10fa6:	0000                	unimp
   10fa8:	0000                	unimp
   10faa:	0100                	addi	s0,sp,128
   10fac:	0000                	unimp
   10fae:	0300                	addi	s0,sp,384
   10fb0:	0000                	unimp
   10fb2:	0400                	addi	s0,sp,512
   10fb4:	0000                	unimp
   10fb6:	0f00                	addi	s0,sp,912
   10fb8:	0000                	unimp
   10fba:	0000                	unimp
   10fbc:	0000                	unimp
   10fbe:	0100                	addi	s0,sp,128
   10fc0:	40757063          	bgeu	a0,t2,0x113c0
   10fc4:	0030                	addi	a2,sp,8
   10fc6:	0000                	unimp
   10fc8:	0000                	unimp
   10fca:	0300                	addi	s0,sp,384
   10fcc:	0000                	unimp
   10fce:	0400                	addi	s0,sp,512
   10fd0:	0000                	unimp
   10fd2:	3c00                	fld	fs0,56(s0)
   10fd4:	0000                	unimp
   10fd6:	0000                	unimp
   10fd8:	0000                	unimp
   10fda:	0300                	addi	s0,sp,384
   10fdc:	0000                	unimp
   10fde:	1500                	addi	s0,sp,672
   10fe0:	0000                	unimp
   10fe2:	1b00                	addi	s0,sp,432
   10fe4:	69666973          	csrrsi	s2,0x696,12
   10fe8:	6576                	ld	a0,344(sp)
   10fea:	622c                	ld	a1,64(a2)
   10fec:	6c75                	lui	s8,0x1d
   10fee:	656c                	ld	a1,200(a0)
   10ff0:	3074                	fld	fa3,224(s0)
   10ff2:	7200                	ld	s0,32(a2)
   10ff4:	7369                	lui	t1,0xffffa
   10ff6:	00007663          	bgeu	zero,zero,0x11002
   10ffa:	0000                	unimp
   10ffc:	0000                	unimp
   10ffe:	0300                	addi	s0,sp,384
   11000:	0000                	unimp
   11002:	0400                	addi	s0,sp,512
   11004:	0000                	unimp
   11006:	4c00                	lw	s0,24(s0)
   11008:	00757063          	bgeu	a0,t2,0x11008
   1100c:	0000                	unimp
   1100e:	0300                	addi	s0,sp,384
   11010:	0000                	unimp
   11012:	0400                	addi	s0,sp,512
   11014:	0000                	unimp
   11016:	5800                	lw	s0,48(s0)
   11018:	0000                	unimp
   1101a:	4000                	lw	s0,0(s0)
   1101c:	0000                	unimp
   1101e:	0300                	addi	s0,sp,384
   11020:	0000                	unimp
   11022:	0400                	addi	s0,sp,512
   11024:	0000                	unimp
   11026:	6b00                	ld	s0,16(a4)
   11028:	0000                	unimp
   1102a:	8000                	.insn	2, 0x8000
   1102c:	0000                	unimp
   1102e:	0300                	addi	s0,sp,384
   11030:	0000                	unimp
   11032:	0400                	addi	s0,sp,512
   11034:	0000                	unimp
   11036:	7800                	ld	s0,48(s0)
   11038:	0000                	unimp
   1103a:	0040                	addi	s0,sp,4
   1103c:	0000                	unimp
   1103e:	0300                	addi	s0,sp,384
   11040:	0000                	unimp
   11042:	0800                	addi	s0,sp,16
   11044:	0000                	unimp
   11046:	8500                	.insn	2, 0x8500
   11048:	0000                	unimp
   1104a:	0100                	addi	s0,sp,128
   1104c:	0000                	unimp
   1104e:	0200                	addi	s0,sp,256
   11050:	0000                	unimp
   11052:	0300                	addi	s0,sp,384
   11054:	0000                	unimp
   11056:	0400                	addi	s0,sp,512
   11058:	0000                	unimp
   1105a:	9600                	.insn	2, 0x9600
   1105c:	0000                	unimp
   1105e:	0000                	unimp
   11060:	0000                	unimp
   11062:	0300                	addi	s0,sp,384
   11064:	0000                	unimp
   11066:	0900                	addi	s0,sp,144
   11068:	0000                	unimp
   1106a:	9a00                	.insn	2, 0x9a00
   1106c:	7672                	ld	a2,312(sp)
   1106e:	3436                	fld	fs0,360(sp)
   11070:	6d69                	lui	s10,0x1a
   11072:	6361                	lui	t1,0x18
   11074:	0000                	unimp
   11076:	0000                	unimp
   11078:	0000                	unimp
   1107a:	0300                	addi	s0,sp,384
   1107c:	0000                	unimp
   1107e:	0400                	addi	s0,sp,512
   11080:	0000                	unimp
   11082:	a400                	fsd	fs0,8(s0)
   11084:	0000                	unimp
   11086:	0300                	addi	s0,sp,384
   11088:	0000                	unimp
   1108a:	0300                	addi	s0,sp,384
   1108c:	0000                	unimp
   1108e:	0500                	addi	s0,sp,640
   11090:	0000                	unimp
   11092:	b000                	fsd	fs0,32(s0)
   11094:	79616b6f          	jal	s6,0x2782a
   11098:	0000                	unimp
   1109a:	0000                	unimp
   1109c:	0000                	unimp
   1109e:	0300                	addi	s0,sp,384
   110a0:	0000                	unimp
   110a2:	0400                	addi	s0,sp,512
   110a4:	0000                	unimp
   110a6:	b700                	fsd	fs0,40(a4)
   110a8:	0f00                	addi	s0,sp,912
   110aa:	4042                	.insn	2, 0x4042
   110ac:	0000                	unimp
   110ae:	0100                	addi	s0,sp,128
   110b0:	6e69                	lui	t3,0x1a
   110b2:	6574                	ld	a3,200(a0)
   110b4:	7272                	ld	tp,312(sp)
   110b6:	7075                	c.lui	zero,0xffffd
   110b8:	2d74                	fld	fa3,216(a0)
   110ba:	746e6f63          	bltu	t3,t1,0x11818
   110be:	6f72                	ld	t5,280(sp)
   110c0:	6c6c                	ld	a1,216(s0)
   110c2:	7265                	lui	tp,0xffff9
   110c4:	0000                	unimp
   110c6:	0000                	unimp
   110c8:	0000                	unimp
   110ca:	0300                	addi	s0,sp,384
   110cc:	0000                	unimp
   110ce:	0400                	addi	s0,sp,512
   110d0:	0000                	unimp
   110d2:	ca00                	sw	s0,16(a2)
   110d4:	0000                	unimp
   110d6:	0100                	addi	s0,sp,128
   110d8:	0000                	unimp
   110da:	0300                	addi	s0,sp,384
   110dc:	0000                	unimp
   110de:	0f00                	addi	s0,sp,912
   110e0:	0000                	unimp
   110e2:	1b00                	addi	s0,sp,432
   110e4:	6972                	ld	s2,280(sp)
   110e6:	2c766373          	csrrsi	t1,0x2c7,12
   110ea:	2d757063          	bgeu	a0,s7,0x113aa
   110ee:	6e69                	lui	t3,0x1a
   110f0:	6374                	ld	a3,192(a4)
   110f2:	0000                	unimp
   110f4:	0000                	unimp
   110f6:	0300                	addi	s0,sp,384
   110f8:	0000                	unimp
   110fa:	0000                	unimp
   110fc:	0000                	unimp
   110fe:	db00                	sw	s0,48(a4)
   11100:	0000                	unimp
   11102:	0300                	addi	s0,sp,384
   11104:	0000                	unimp
   11106:	0400                	addi	s0,sp,512
   11108:	0000                	unimp
   1110a:	f000                	sd	s0,32(s0)
   1110c:	0000                	unimp
   1110e:	0900                	addi	s0,sp,144
   11110:	0000                	unimp
   11112:	0300                	addi	s0,sp,384
   11114:	0000                	unimp
   11116:	0400                	addi	s0,sp,512
   11118:	0000                	unimp
   1111a:	f600                	sd	s0,40(a2)
   1111c:	0000                	unimp
   1111e:	0900                	addi	s0,sp,144
   11120:	0000                	unimp
   11122:	0200                	addi	s0,sp,256
   11124:	0000                	unimp
   11126:	0200                	addi	s0,sp,256
   11128:	0000                	unimp
   1112a:	0100                	addi	s0,sp,128
   1112c:	40757063          	bgeu	a0,t2,0x1152c
   11130:	0031                	c.nop	12
   11132:	0000                	unimp
   11134:	0000                	unimp
   11136:	0300                	addi	s0,sp,384
   11138:	0000                	unimp
   1113a:	0400                	addi	s0,sp,512
   1113c:	0000                	unimp
   1113e:	3c00                	fld	fs0,56(s0)
   11140:	0000                	unimp
   11142:	0000                	unimp
   11144:	0000                	unimp
   11146:	0300                	addi	s0,sp,384
   11148:	0000                	unimp
   1114a:	1500                	addi	s0,sp,672
   1114c:	0000                	unimp
   1114e:	1b00                	addi	s0,sp,432
   11150:	69666973          	csrrsi	s2,0x696,12
   11154:	6576                	ld	a0,344(sp)
   11156:	622c                	ld	a1,64(a2)
   11158:	6c75                	lui	s8,0x1d
   1115a:	656c                	ld	a1,200(a0)
   1115c:	3074                	fld	fa3,224(s0)
   1115e:	7200                	ld	s0,32(a2)
   11160:	7369                	lui	t1,0xffffa
   11162:	00007663          	bgeu	zero,zero,0x1116e
   11166:	0000                	unimp
   11168:	0000                	unimp
   1116a:	0300                	addi	s0,sp,384
   1116c:	0000                	unimp
   1116e:	0400                	addi	s0,sp,512
   11170:	0000                	unimp
   11172:	fe00                	sd	s0,56(a2)
   11174:	0000                	unimp
   11176:	4000                	lw	s0,0(s0)
   11178:	0000                	unimp
   1117a:	0300                	addi	s0,sp,384
   1117c:	0000                	unimp
   1117e:	0400                	addi	s0,sp,512
   11180:	0000                	unimp
   11182:	1101                	addi	sp,sp,-32
   11184:	0000                	unimp
   11186:	4000                	lw	s0,0(s0)
   11188:	0000                	unimp
   1118a:	0300                	addi	s0,sp,384
   1118c:	0000                	unimp
   1118e:	0400                	addi	s0,sp,512
   11190:	0000                	unimp
   11192:	1e01                	addi	t3,t3,-32 # 0x19fe0
   11194:	0000                	unimp
   11196:	0080                	addi	s0,sp,64
   11198:	0000                	unimp
   1119a:	0300                	addi	s0,sp,384
   1119c:	0000                	unimp
   1119e:	0400                	addi	s0,sp,512
   111a0:	0000                	unimp
   111a2:	2b01                	sext.w	s6,s6
   111a4:	0000                	unimp
   111a6:	0100                	addi	s0,sp,128
   111a8:	0000                	unimp
   111aa:	0300                	addi	s0,sp,384
   111ac:	0000                	unimp
   111ae:	0400                	addi	s0,sp,512
   111b0:	0000                	unimp
   111b2:	3601                	addiw	a2,a2,-32 # 0xffffffffffff8fe0
   111b4:	0000                	unimp
   111b6:	2800                	fld	fs0,16(s0)
   111b8:	0000                	unimp
   111ba:	0300                	addi	s0,sp,384
   111bc:	0000                	unimp
   111be:	0400                	addi	s0,sp,512
   111c0:	0000                	unimp
   111c2:	4c00                	lw	s0,24(s0)
   111c4:	00757063          	bgeu	a0,t2,0x111c4
   111c8:	0000                	unimp
   111ca:	0300                	addi	s0,sp,384
   111cc:	0000                	unimp
   111ce:	0400                	addi	s0,sp,512
   111d0:	0000                	unimp
   111d2:	5800                	lw	s0,48(s0)
   111d4:	0000                	unimp
   111d6:	4000                	lw	s0,0(s0)
   111d8:	0000                	unimp
   111da:	0300                	addi	s0,sp,384
   111dc:	0000                	unimp
   111de:	0400                	addi	s0,sp,512
   111e0:	0000                	unimp
   111e2:	6b00                	ld	s0,16(a4)
   111e4:	0000                	unimp
   111e6:	8000                	.insn	2, 0x8000
   111e8:	0000                	unimp
   111ea:	0300                	addi	s0,sp,384
   111ec:	0000                	unimp
   111ee:	0400                	addi	s0,sp,512
   111f0:	0000                	unimp
   111f2:	7800                	ld	s0,48(s0)
   111f4:	0000                	unimp
   111f6:	0080                	addi	s0,sp,64
   111f8:	0000                	unimp
   111fa:	0300                	addi	s0,sp,384
   111fc:	0000                	unimp
   111fe:	0400                	addi	s0,sp,512
   11200:	0000                	unimp
   11202:	4101                	li	sp,0
   11204:	0000                	unimp
   11206:	0100                	addi	s0,sp,128
   11208:	0000                	unimp
   1120a:	0300                	addi	s0,sp,384
   1120c:	0000                	unimp
   1120e:	0400                	addi	s0,sp,512
   11210:	0000                	unimp
   11212:	4c01                	li	s8,0
   11214:	0000                	unimp
   11216:	2800                	fld	fs0,16(s0)
   11218:	0000                	unimp
   1121a:	0300                	addi	s0,sp,384
   1121c:	0000                	unimp
   1121e:	0b00                	addi	s0,sp,400
   11220:	0000                	unimp
   11222:	5701                	li	a4,-32
   11224:	6972                	ld	s2,280(sp)
   11226:	2c766373          	csrrsi	t1,0x2c7,12
   1122a:	39337673          	csrrci	a2,0x393,6
   1122e:	0000                	unimp
   11230:	0000                	unimp
   11232:	0300                	addi	s0,sp,384
   11234:	0000                	unimp
   11236:	0800                	addi	s0,sp,16
   11238:	0000                	unimp
   1123a:	8500                	.insn	2, 0x8500
   1123c:	0000                	unimp
   1123e:	0100                	addi	s0,sp,128
   11240:	0000                	unimp
   11242:	0200                	addi	s0,sp,256
   11244:	0000                	unimp
   11246:	0300                	addi	s0,sp,384
   11248:	0000                	unimp
   1124a:	0400                	addi	s0,sp,512
   1124c:	0000                	unimp
   1124e:	9600                	.insn	2, 0x9600
   11250:	0000                	unimp
   11252:	0100                	addi	s0,sp,128
   11254:	0000                	unimp
   11256:	0300                	addi	s0,sp,384
   11258:	0000                	unimp
   1125a:	0b00                	addi	s0,sp,400
   1125c:	0000                	unimp
   1125e:	9a00                	.insn	2, 0x9a00
   11260:	7672                	ld	a2,312(sp)
   11262:	3436                	fld	fs0,360(sp)
   11264:	6d69                	lui	s10,0x1a
   11266:	6661                	lui	a2,0x18
   11268:	6364                	ld	s1,192(a4)
   1126a:	0000                	unimp
   1126c:	0000                	unimp
   1126e:	0300                	addi	s0,sp,384
   11270:	0000                	unimp
   11272:	0500                	addi	s0,sp,640
   11274:	0000                	unimp
   11276:	b000                	fsd	fs0,32(s0)
   11278:	79616b6f          	jal	s6,0x27a0e
   1127c:	0000                	unimp
   1127e:	0000                	unimp
   11280:	0000                	unimp
   11282:	0300                	addi	s0,sp,384
   11284:	0000                	unimp
   11286:	0400                	addi	s0,sp,512
   11288:	0000                	unimp
   1128a:	b700                	fsd	fs0,40(a4)
   1128c:	0f00                	addi	s0,sp,912
   1128e:	4042                	.insn	2, 0x4042
   11290:	0000                	unimp
   11292:	0300                	addi	s0,sp,384
   11294:	0000                	unimp
   11296:	0000                	unimp
   11298:	0000                	unimp
   1129a:	6001                	.insn	2, 0x6001
   1129c:	0000                	unimp
   1129e:	0100                	addi	s0,sp,128
   112a0:	6e69                	lui	t3,0x1a
   112a2:	6574                	ld	a3,200(a0)
   112a4:	7272                	ld	tp,312(sp)
   112a6:	7075                	c.lui	zero,0xffffd
   112a8:	2d74                	fld	fa3,216(a0)
   112aa:	746e6f63          	bltu	t3,t1,0x11a08
   112ae:	6f72                	ld	t5,280(sp)
   112b0:	6c6c                	ld	a1,216(s0)
   112b2:	7265                	lui	tp,0xffff9
   112b4:	0000                	unimp
   112b6:	0000                	unimp
   112b8:	0000                	unimp
   112ba:	0300                	addi	s0,sp,384
   112bc:	0000                	unimp
   112be:	0400                	addi	s0,sp,512
   112c0:	0000                	unimp
   112c2:	ca00                	sw	s0,16(a2)
   112c4:	0000                	unimp
   112c6:	0100                	addi	s0,sp,128
   112c8:	0000                	unimp
   112ca:	0300                	addi	s0,sp,384
   112cc:	0000                	unimp
   112ce:	0f00                	addi	s0,sp,912
   112d0:	0000                	unimp
   112d2:	1b00                	addi	s0,sp,432
   112d4:	6972                	ld	s2,280(sp)
   112d6:	2c766373          	csrrsi	t1,0x2c7,12
   112da:	2d757063          	bgeu	a0,s7,0x1159a
   112de:	6e69                	lui	t3,0x1a
   112e0:	6374                	ld	a3,192(a4)
   112e2:	0000                	unimp
   112e4:	0000                	unimp
   112e6:	0300                	addi	s0,sp,384
   112e8:	0000                	unimp
   112ea:	0000                	unimp
   112ec:	0000                	unimp
   112ee:	db00                	sw	s0,48(a4)
   112f0:	0000                	unimp
   112f2:	0300                	addi	s0,sp,384
   112f4:	0000                	unimp
   112f6:	0400                	addi	s0,sp,512
   112f8:	0000                	unimp
   112fa:	f000                	sd	s0,32(s0)
   112fc:	0000                	unimp
   112fe:	0a00                	addi	s0,sp,272
   11300:	0000                	unimp
   11302:	0300                	addi	s0,sp,384
   11304:	0000                	unimp
   11306:	0400                	addi	s0,sp,512
   11308:	0000                	unimp
   1130a:	f600                	sd	s0,40(a2)
   1130c:	0000                	unimp
   1130e:	0a00                	addi	s0,sp,272
   11310:	0000                	unimp
   11312:	0200                	addi	s0,sp,256
   11314:	0000                	unimp
   11316:	0200                	addi	s0,sp,256
   11318:	0000                	unimp
   1131a:	0100                	addi	s0,sp,128
   1131c:	40757063          	bgeu	a0,t2,0x1171c
   11320:	0032                	c.slli	zero,0xc
   11322:	0000                	unimp
   11324:	0000                	unimp
   11326:	0300                	addi	s0,sp,384
   11328:	0000                	unimp
   1132a:	0400                	addi	s0,sp,512
   1132c:	0000                	unimp
   1132e:	3c00                	fld	fs0,56(s0)
   11330:	0000                	unimp
   11332:	0000                	unimp
   11334:	0000                	unimp
   11336:	0300                	addi	s0,sp,384
   11338:	0000                	unimp
   1133a:	1500                	addi	s0,sp,672
   1133c:	0000                	unimp
   1133e:	1b00                	addi	s0,sp,432
   11340:	69666973          	csrrsi	s2,0x696,12
   11344:	6576                	ld	a0,344(sp)
   11346:	622c                	ld	a1,64(a2)
   11348:	6c75                	lui	s8,0x1d
   1134a:	656c                	ld	a1,200(a0)
   1134c:	3074                	fld	fa3,224(s0)
   1134e:	7200                	ld	s0,32(a2)
   11350:	7369                	lui	t1,0xffffa
   11352:	00007663          	bgeu	zero,zero,0x1135e
   11356:	0000                	unimp
   11358:	0000                	unimp
   1135a:	0300                	addi	s0,sp,384
   1135c:	0000                	unimp
   1135e:	0400                	addi	s0,sp,512
   11360:	0000                	unimp
   11362:	fe00                	sd	s0,56(a2)
   11364:	0000                	unimp
   11366:	4000                	lw	s0,0(s0)
   11368:	0000                	unimp
   1136a:	0300                	addi	s0,sp,384
   1136c:	0000                	unimp
   1136e:	0400                	addi	s0,sp,512
   11370:	0000                	unimp
   11372:	1101                	addi	sp,sp,-32
   11374:	0000                	unimp
   11376:	4000                	lw	s0,0(s0)
   11378:	0000                	unimp
   1137a:	0300                	addi	s0,sp,384
   1137c:	0000                	unimp
   1137e:	0400                	addi	s0,sp,512
   11380:	0000                	unimp
   11382:	1e01                	addi	t3,t3,-32 # 0x19fe0
   11384:	0000                	unimp
   11386:	0080                	addi	s0,sp,64
   11388:	0000                	unimp
   1138a:	0300                	addi	s0,sp,384
   1138c:	0000                	unimp
   1138e:	0400                	addi	s0,sp,512
   11390:	0000                	unimp
   11392:	2b01                	sext.w	s6,s6
   11394:	0000                	unimp
   11396:	0100                	addi	s0,sp,128
   11398:	0000                	unimp
   1139a:	0300                	addi	s0,sp,384
   1139c:	0000                	unimp
   1139e:	0400                	addi	s0,sp,512
   113a0:	0000                	unimp
   113a2:	3601                	addiw	a2,a2,-32 # 0x17fe0
   113a4:	0000                	unimp
   113a6:	2800                	fld	fs0,16(s0)
   113a8:	0000                	unimp
   113aa:	0300                	addi	s0,sp,384
   113ac:	0000                	unimp
   113ae:	0400                	addi	s0,sp,512
   113b0:	0000                	unimp
   113b2:	4c00                	lw	s0,24(s0)
   113b4:	00757063          	bgeu	a0,t2,0x113b4
   113b8:	0000                	unimp
   113ba:	0300                	addi	s0,sp,384
   113bc:	0000                	unimp
   113be:	0400                	addi	s0,sp,512
   113c0:	0000                	unimp
   113c2:	5800                	lw	s0,48(s0)
   113c4:	0000                	unimp
   113c6:	4000                	lw	s0,0(s0)
   113c8:	0000                	unimp
   113ca:	0300                	addi	s0,sp,384
   113cc:	0000                	unimp
   113ce:	0400                	addi	s0,sp,512
   113d0:	0000                	unimp
   113d2:	6b00                	ld	s0,16(a4)
   113d4:	0000                	unimp
   113d6:	8000                	.insn	2, 0x8000
   113d8:	0000                	unimp
   113da:	0300                	addi	s0,sp,384
   113dc:	0000                	unimp
   113de:	0400                	addi	s0,sp,512
   113e0:	0000                	unimp
   113e2:	7800                	ld	s0,48(s0)
   113e4:	0000                	unimp
   113e6:	0080                	addi	s0,sp,64
   113e8:	0000                	unimp
   113ea:	0300                	addi	s0,sp,384
   113ec:	0000                	unimp
   113ee:	0400                	addi	s0,sp,512
   113f0:	0000                	unimp
   113f2:	4101                	li	sp,0
   113f4:	0000                	unimp
   113f6:	0100                	addi	s0,sp,128
   113f8:	0000                	unimp
   113fa:	0300                	addi	s0,sp,384
   113fc:	0000                	unimp
   113fe:	0400                	addi	s0,sp,512
   11400:	0000                	unimp
   11402:	4c01                	li	s8,0
   11404:	0000                	unimp
   11406:	2800                	fld	fs0,16(s0)
   11408:	0000                	unimp
   1140a:	0300                	addi	s0,sp,384
   1140c:	0000                	unimp
   1140e:	0b00                	addi	s0,sp,400
   11410:	0000                	unimp
   11412:	5701                	li	a4,-32
   11414:	6972                	ld	s2,280(sp)
   11416:	2c766373          	csrrsi	t1,0x2c7,12
   1141a:	39337673          	csrrci	a2,0x393,6
   1141e:	0000                	unimp
   11420:	0000                	unimp
   11422:	0300                	addi	s0,sp,384
   11424:	0000                	unimp
   11426:	0800                	addi	s0,sp,16
   11428:	0000                	unimp
   1142a:	8500                	.insn	2, 0x8500
   1142c:	0000                	unimp
   1142e:	0100                	addi	s0,sp,128
   11430:	0000                	unimp
   11432:	0200                	addi	s0,sp,256
   11434:	0000                	unimp
   11436:	0300                	addi	s0,sp,384
   11438:	0000                	unimp
   1143a:	0400                	addi	s0,sp,512
   1143c:	0000                	unimp
   1143e:	9600                	.insn	2, 0x9600
   11440:	0000                	unimp
   11442:	0200                	addi	s0,sp,256
   11444:	0000                	unimp
   11446:	0300                	addi	s0,sp,384
   11448:	0000                	unimp
   1144a:	0b00                	addi	s0,sp,400
   1144c:	0000                	unimp
   1144e:	9a00                	.insn	2, 0x9a00
   11450:	7672                	ld	a2,312(sp)
   11452:	3436                	fld	fs0,360(sp)
   11454:	6d69                	lui	s10,0x1a
   11456:	6661                	lui	a2,0x18
   11458:	6364                	ld	s1,192(a4)
   1145a:	0000                	unimp
   1145c:	0000                	unimp
   1145e:	0300                	addi	s0,sp,384
   11460:	0000                	unimp
   11462:	0500                	addi	s0,sp,640
   11464:	0000                	unimp
   11466:	b000                	fsd	fs0,32(s0)
   11468:	79616b6f          	jal	s6,0x27bfe
   1146c:	0000                	unimp
   1146e:	0000                	unimp
   11470:	0000                	unimp
   11472:	0300                	addi	s0,sp,384
   11474:	0000                	unimp
   11476:	0400                	addi	s0,sp,512
   11478:	0000                	unimp
   1147a:	b700                	fsd	fs0,40(a4)
   1147c:	0f00                	addi	s0,sp,912
   1147e:	4042                	.insn	2, 0x4042
   11480:	0000                	unimp
   11482:	0300                	addi	s0,sp,384
   11484:	0000                	unimp
   11486:	0000                	unimp
   11488:	0000                	unimp
   1148a:	6001                	.insn	2, 0x6001
   1148c:	0000                	unimp
   1148e:	0100                	addi	s0,sp,128
   11490:	6e69                	lui	t3,0x1a
   11492:	6574                	ld	a3,200(a0)
   11494:	7272                	ld	tp,312(sp)
   11496:	7075                	c.lui	zero,0xffffd
   11498:	2d74                	fld	fa3,216(a0)
   1149a:	746e6f63          	bltu	t3,t1,0x11bf8
   1149e:	6f72                	ld	t5,280(sp)
   114a0:	6c6c                	ld	a1,216(s0)
   114a2:	7265                	lui	tp,0xffff9
   114a4:	0000                	unimp
   114a6:	0000                	unimp
   114a8:	0000                	unimp
   114aa:	0300                	addi	s0,sp,384
   114ac:	0000                	unimp
   114ae:	0400                	addi	s0,sp,512
   114b0:	0000                	unimp
   114b2:	ca00                	sw	s0,16(a2)
   114b4:	0000                	unimp
   114b6:	0100                	addi	s0,sp,128
   114b8:	0000                	unimp
   114ba:	0300                	addi	s0,sp,384
   114bc:	0000                	unimp
   114be:	0f00                	addi	s0,sp,912
   114c0:	0000                	unimp
   114c2:	1b00                	addi	s0,sp,432
   114c4:	6972                	ld	s2,280(sp)
   114c6:	2c766373          	csrrsi	t1,0x2c7,12
   114ca:	2d757063          	bgeu	a0,s7,0x1178a
   114ce:	6e69                	lui	t3,0x1a
   114d0:	6374                	ld	a3,192(a4)
   114d2:	0000                	unimp
   114d4:	0000                	unimp
   114d6:	0300                	addi	s0,sp,384
   114d8:	0000                	unimp
   114da:	0000                	unimp
   114dc:	0000                	unimp
   114de:	db00                	sw	s0,48(a4)
   114e0:	0000                	unimp
   114e2:	0300                	addi	s0,sp,384
   114e4:	0000                	unimp
   114e6:	0400                	addi	s0,sp,512
   114e8:	0000                	unimp
   114ea:	f000                	sd	s0,32(s0)
   114ec:	0000                	unimp
   114ee:	0b00                	addi	s0,sp,400
   114f0:	0000                	unimp
   114f2:	0300                	addi	s0,sp,384
   114f4:	0000                	unimp
   114f6:	0400                	addi	s0,sp,512
   114f8:	0000                	unimp
   114fa:	f600                	sd	s0,40(a2)
   114fc:	0000                	unimp
   114fe:	0b00                	addi	s0,sp,400
   11500:	0000                	unimp
   11502:	0200                	addi	s0,sp,256
   11504:	0000                	unimp
   11506:	0200                	addi	s0,sp,256
   11508:	0000                	unimp
   1150a:	0100                	addi	s0,sp,128
   1150c:	40757063          	bgeu	a0,t2,0x1190c
   11510:	00000033          	add	zero,zero,zero
   11514:	0000                	unimp
   11516:	0300                	addi	s0,sp,384
   11518:	0000                	unimp
   1151a:	0400                	addi	s0,sp,512
   1151c:	0000                	unimp
   1151e:	3c00                	fld	fs0,56(s0)
   11520:	0000                	unimp
   11522:	0000                	unimp
   11524:	0000                	unimp
   11526:	0300                	addi	s0,sp,384
   11528:	0000                	unimp
   1152a:	1500                	addi	s0,sp,672
   1152c:	0000                	unimp
   1152e:	1b00                	addi	s0,sp,432
   11530:	69666973          	csrrsi	s2,0x696,12
   11534:	6576                	ld	a0,344(sp)
   11536:	622c                	ld	a1,64(a2)
   11538:	6c75                	lui	s8,0x1d
   1153a:	656c                	ld	a1,200(a0)
   1153c:	3074                	fld	fa3,224(s0)
   1153e:	7200                	ld	s0,32(a2)
   11540:	7369                	lui	t1,0xffffa
   11542:	00007663          	bgeu	zero,zero,0x1154e
   11546:	0000                	unimp
   11548:	0000                	unimp
   1154a:	0300                	addi	s0,sp,384
   1154c:	0000                	unimp
   1154e:	0400                	addi	s0,sp,512
   11550:	0000                	unimp
   11552:	fe00                	sd	s0,56(a2)
   11554:	0000                	unimp
   11556:	4000                	lw	s0,0(s0)
   11558:	0000                	unimp
   1155a:	0300                	addi	s0,sp,384
   1155c:	0000                	unimp
   1155e:	0400                	addi	s0,sp,512
   11560:	0000                	unimp
   11562:	1101                	addi	sp,sp,-32
   11564:	0000                	unimp
   11566:	4000                	lw	s0,0(s0)
   11568:	0000                	unimp
   1156a:	0300                	addi	s0,sp,384
   1156c:	0000                	unimp
   1156e:	0400                	addi	s0,sp,512
   11570:	0000                	unimp
   11572:	1e01                	addi	t3,t3,-32 # 0x19fe0
   11574:	0000                	unimp
   11576:	0080                	addi	s0,sp,64
   11578:	0000                	unimp
   1157a:	0300                	addi	s0,sp,384
   1157c:	0000                	unimp
   1157e:	0400                	addi	s0,sp,512
   11580:	0000                	unimp
   11582:	2b01                	sext.w	s6,s6
   11584:	0000                	unimp
   11586:	0100                	addi	s0,sp,128
   11588:	0000                	unimp
   1158a:	0300                	addi	s0,sp,384
   1158c:	0000                	unimp
   1158e:	0400                	addi	s0,sp,512
   11590:	0000                	unimp
   11592:	3601                	addiw	a2,a2,-32 # 0x17fe0
   11594:	0000                	unimp
   11596:	2800                	fld	fs0,16(s0)
   11598:	0000                	unimp
   1159a:	0300                	addi	s0,sp,384
   1159c:	0000                	unimp
   1159e:	0400                	addi	s0,sp,512
   115a0:	0000                	unimp
   115a2:	4c00                	lw	s0,24(s0)
   115a4:	00757063          	bgeu	a0,t2,0x115a4
   115a8:	0000                	unimp
   115aa:	0300                	addi	s0,sp,384
   115ac:	0000                	unimp
   115ae:	0400                	addi	s0,sp,512
   115b0:	0000                	unimp
   115b2:	5800                	lw	s0,48(s0)
   115b4:	0000                	unimp
   115b6:	4000                	lw	s0,0(s0)
   115b8:	0000                	unimp
   115ba:	0300                	addi	s0,sp,384
   115bc:	0000                	unimp
   115be:	0400                	addi	s0,sp,512
   115c0:	0000                	unimp
   115c2:	6b00                	ld	s0,16(a4)
   115c4:	0000                	unimp
   115c6:	8000                	.insn	2, 0x8000
   115c8:	0000                	unimp
   115ca:	0300                	addi	s0,sp,384
   115cc:	0000                	unimp
   115ce:	0400                	addi	s0,sp,512
   115d0:	0000                	unimp
   115d2:	7800                	ld	s0,48(s0)
   115d4:	0000                	unimp
   115d6:	0080                	addi	s0,sp,64
   115d8:	0000                	unimp
   115da:	0300                	addi	s0,sp,384
   115dc:	0000                	unimp
   115de:	0400                	addi	s0,sp,512
   115e0:	0000                	unimp
   115e2:	4101                	li	sp,0
   115e4:	0000                	unimp
   115e6:	0100                	addi	s0,sp,128
   115e8:	0000                	unimp
   115ea:	0300                	addi	s0,sp,384
   115ec:	0000                	unimp
   115ee:	0400                	addi	s0,sp,512
   115f0:	0000                	unimp
   115f2:	4c01                	li	s8,0
   115f4:	0000                	unimp
   115f6:	2800                	fld	fs0,16(s0)
   115f8:	0000                	unimp
   115fa:	0300                	addi	s0,sp,384
   115fc:	0000                	unimp
   115fe:	0b00                	addi	s0,sp,400
   11600:	0000                	unimp
   11602:	5701                	li	a4,-32
   11604:	6972                	ld	s2,280(sp)
   11606:	2c766373          	csrrsi	t1,0x2c7,12
   1160a:	39337673          	csrrci	a2,0x393,6
   1160e:	0000                	unimp
   11610:	0000                	unimp
   11612:	0300                	addi	s0,sp,384
   11614:	0000                	unimp
   11616:	0800                	addi	s0,sp,16
   11618:	0000                	unimp
   1161a:	8500                	.insn	2, 0x8500
   1161c:	0000                	unimp
   1161e:	0100                	addi	s0,sp,128
   11620:	0000                	unimp
   11622:	0200                	addi	s0,sp,256
   11624:	0000                	unimp
   11626:	0300                	addi	s0,sp,384
   11628:	0000                	unimp
   1162a:	0400                	addi	s0,sp,512
   1162c:	0000                	unimp
   1162e:	9600                	.insn	2, 0x9600
   11630:	0000                	unimp
   11632:	0300                	addi	s0,sp,384
   11634:	0000                	unimp
   11636:	0300                	addi	s0,sp,384
   11638:	0000                	unimp
   1163a:	0b00                	addi	s0,sp,400
   1163c:	0000                	unimp
   1163e:	9a00                	.insn	2, 0x9a00
   11640:	7672                	ld	a2,312(sp)
   11642:	3436                	fld	fs0,360(sp)
   11644:	6d69                	lui	s10,0x1a
   11646:	6661                	lui	a2,0x18
   11648:	6364                	ld	s1,192(a4)
   1164a:	0000                	unimp
   1164c:	0000                	unimp
   1164e:	0300                	addi	s0,sp,384
   11650:	0000                	unimp
   11652:	0500                	addi	s0,sp,640
   11654:	0000                	unimp
   11656:	b000                	fsd	fs0,32(s0)
   11658:	79616b6f          	jal	s6,0x27dee
   1165c:	0000                	unimp
   1165e:	0000                	unimp
   11660:	0000                	unimp
   11662:	0300                	addi	s0,sp,384
   11664:	0000                	unimp
   11666:	0400                	addi	s0,sp,512
   11668:	0000                	unimp
   1166a:	b700                	fsd	fs0,40(a4)
   1166c:	0f00                	addi	s0,sp,912
   1166e:	4042                	.insn	2, 0x4042
   11670:	0000                	unimp
   11672:	0300                	addi	s0,sp,384
   11674:	0000                	unimp
   11676:	0000                	unimp
   11678:	0000                	unimp
   1167a:	6001                	.insn	2, 0x6001
   1167c:	0000                	unimp
   1167e:	0100                	addi	s0,sp,128
   11680:	6e69                	lui	t3,0x1a
   11682:	6574                	ld	a3,200(a0)
   11684:	7272                	ld	tp,312(sp)
   11686:	7075                	c.lui	zero,0xffffd
   11688:	2d74                	fld	fa3,216(a0)
   1168a:	746e6f63          	bltu	t3,t1,0x11de8
   1168e:	6f72                	ld	t5,280(sp)
   11690:	6c6c                	ld	a1,216(s0)
   11692:	7265                	lui	tp,0xffff9
   11694:	0000                	unimp
   11696:	0000                	unimp
   11698:	0000                	unimp
   1169a:	0300                	addi	s0,sp,384
   1169c:	0000                	unimp
   1169e:	0400                	addi	s0,sp,512
   116a0:	0000                	unimp
   116a2:	ca00                	sw	s0,16(a2)
   116a4:	0000                	unimp
   116a6:	0100                	addi	s0,sp,128
   116a8:	0000                	unimp
   116aa:	0300                	addi	s0,sp,384
   116ac:	0000                	unimp
   116ae:	0f00                	addi	s0,sp,912
   116b0:	0000                	unimp
   116b2:	1b00                	addi	s0,sp,432
   116b4:	6972                	ld	s2,280(sp)
   116b6:	2c766373          	csrrsi	t1,0x2c7,12
   116ba:	2d757063          	bgeu	a0,s7,0x1197a
   116be:	6e69                	lui	t3,0x1a
   116c0:	6374                	ld	a3,192(a4)
   116c2:	0000                	unimp
   116c4:	0000                	unimp
   116c6:	0300                	addi	s0,sp,384
   116c8:	0000                	unimp
   116ca:	0000                	unimp
   116cc:	0000                	unimp
   116ce:	db00                	sw	s0,48(a4)
   116d0:	0000                	unimp
   116d2:	0300                	addi	s0,sp,384
   116d4:	0000                	unimp
   116d6:	0400                	addi	s0,sp,512
   116d8:	0000                	unimp
   116da:	f000                	sd	s0,32(s0)
   116dc:	0000                	unimp
   116de:	0c00                	addi	s0,sp,528
   116e0:	0000                	unimp
   116e2:	0300                	addi	s0,sp,384
   116e4:	0000                	unimp
   116e6:	0400                	addi	s0,sp,512
   116e8:	0000                	unimp
   116ea:	f600                	sd	s0,40(a2)
   116ec:	0000                	unimp
   116ee:	0c00                	addi	s0,sp,528
   116f0:	0000                	unimp
   116f2:	0200                	addi	s0,sp,256
   116f4:	0000                	unimp
   116f6:	0200                	addi	s0,sp,256
   116f8:	0000                	unimp
   116fa:	0100                	addi	s0,sp,128
   116fc:	40757063          	bgeu	a0,t2,0x11afc
   11700:	0034                	addi	a3,sp,8
   11702:	0000                	unimp
   11704:	0000                	unimp
   11706:	0300                	addi	s0,sp,384
   11708:	0000                	unimp
   1170a:	0400                	addi	s0,sp,512
   1170c:	0000                	unimp
   1170e:	3c00                	fld	fs0,56(s0)
   11710:	0000                	unimp
   11712:	0000                	unimp
   11714:	0000                	unimp
   11716:	0300                	addi	s0,sp,384
   11718:	0000                	unimp
   1171a:	1500                	addi	s0,sp,672
   1171c:	0000                	unimp
   1171e:	1b00                	addi	s0,sp,432
   11720:	69666973          	csrrsi	s2,0x696,12
   11724:	6576                	ld	a0,344(sp)
   11726:	622c                	ld	a1,64(a2)
   11728:	6c75                	lui	s8,0x1d
   1172a:	656c                	ld	a1,200(a0)
   1172c:	3074                	fld	fa3,224(s0)
   1172e:	7200                	ld	s0,32(a2)
   11730:	7369                	lui	t1,0xffffa
   11732:	00007663          	bgeu	zero,zero,0x1173e
   11736:	0000                	unimp
   11738:	0000                	unimp
   1173a:	0300                	addi	s0,sp,384
   1173c:	0000                	unimp
   1173e:	0400                	addi	s0,sp,512
   11740:	0000                	unimp
   11742:	fe00                	sd	s0,56(a2)
   11744:	0000                	unimp
   11746:	4000                	lw	s0,0(s0)
   11748:	0000                	unimp
   1174a:	0300                	addi	s0,sp,384
   1174c:	0000                	unimp
   1174e:	0400                	addi	s0,sp,512
   11750:	0000                	unimp
   11752:	1101                	addi	sp,sp,-32
   11754:	0000                	unimp
   11756:	4000                	lw	s0,0(s0)
   11758:	0000                	unimp
   1175a:	0300                	addi	s0,sp,384
   1175c:	0000                	unimp
   1175e:	0400                	addi	s0,sp,512
   11760:	0000                	unimp
   11762:	1e01                	addi	t3,t3,-32 # 0x19fe0
   11764:	0000                	unimp
   11766:	0080                	addi	s0,sp,64
   11768:	0000                	unimp
   1176a:	0300                	addi	s0,sp,384
   1176c:	0000                	unimp
   1176e:	0400                	addi	s0,sp,512
   11770:	0000                	unimp
   11772:	2b01                	sext.w	s6,s6
   11774:	0000                	unimp
   11776:	0100                	addi	s0,sp,128
   11778:	0000                	unimp
   1177a:	0300                	addi	s0,sp,384
   1177c:	0000                	unimp
   1177e:	0400                	addi	s0,sp,512
   11780:	0000                	unimp
   11782:	3601                	addiw	a2,a2,-32 # 0x17fe0
   11784:	0000                	unimp
   11786:	2800                	fld	fs0,16(s0)
   11788:	0000                	unimp
   1178a:	0300                	addi	s0,sp,384
   1178c:	0000                	unimp
   1178e:	0400                	addi	s0,sp,512
   11790:	0000                	unimp
   11792:	4c00                	lw	s0,24(s0)
   11794:	00757063          	bgeu	a0,t2,0x11794
   11798:	0000                	unimp
   1179a:	0300                	addi	s0,sp,384
   1179c:	0000                	unimp
   1179e:	0400                	addi	s0,sp,512
   117a0:	0000                	unimp
   117a2:	5800                	lw	s0,48(s0)
   117a4:	0000                	unimp
   117a6:	4000                	lw	s0,0(s0)
   117a8:	0000                	unimp
   117aa:	0300                	addi	s0,sp,384
   117ac:	0000                	unimp
   117ae:	0400                	addi	s0,sp,512
   117b0:	0000                	unimp
   117b2:	6b00                	ld	s0,16(a4)
   117b4:	0000                	unimp
   117b6:	8000                	.insn	2, 0x8000
   117b8:	0000                	unimp
   117ba:	0300                	addi	s0,sp,384
   117bc:	0000                	unimp
   117be:	0400                	addi	s0,sp,512
   117c0:	0000                	unimp
   117c2:	7800                	ld	s0,48(s0)
   117c4:	0000                	unimp
   117c6:	0080                	addi	s0,sp,64
   117c8:	0000                	unimp
   117ca:	0300                	addi	s0,sp,384
   117cc:	0000                	unimp
   117ce:	0400                	addi	s0,sp,512
   117d0:	0000                	unimp
   117d2:	4101                	li	sp,0
   117d4:	0000                	unimp
   117d6:	0100                	addi	s0,sp,128
   117d8:	0000                	unimp
   117da:	0300                	addi	s0,sp,384
   117dc:	0000                	unimp
   117de:	0400                	addi	s0,sp,512
   117e0:	0000                	unimp
   117e2:	4c01                	li	s8,0
   117e4:	0000                	unimp
   117e6:	2800                	fld	fs0,16(s0)
   117e8:	0000                	unimp
   117ea:	0300                	addi	s0,sp,384
   117ec:	0000                	unimp
   117ee:	0b00                	addi	s0,sp,400
   117f0:	0000                	unimp
   117f2:	5701                	li	a4,-32
   117f4:	6972                	ld	s2,280(sp)
   117f6:	2c766373          	csrrsi	t1,0x2c7,12
   117fa:	39337673          	csrrci	a2,0x393,6
   117fe:	0000                	unimp
   11800:	0000                	unimp
   11802:	0300                	addi	s0,sp,384
   11804:	0000                	unimp
   11806:	0800                	addi	s0,sp,16
   11808:	0000                	unimp
   1180a:	8500                	.insn	2, 0x8500
   1180c:	0000                	unimp
   1180e:	0100                	addi	s0,sp,128
   11810:	0000                	unimp
   11812:	0200                	addi	s0,sp,256
   11814:	0000                	unimp
   11816:	0300                	addi	s0,sp,384
   11818:	0000                	unimp
   1181a:	0400                	addi	s0,sp,512
   1181c:	0000                	unimp
   1181e:	9600                	.insn	2, 0x9600
   11820:	0000                	unimp
   11822:	0400                	addi	s0,sp,512
   11824:	0000                	unimp
   11826:	0300                	addi	s0,sp,384
   11828:	0000                	unimp
   1182a:	0b00                	addi	s0,sp,400
   1182c:	0000                	unimp
   1182e:	9a00                	.insn	2, 0x9a00
   11830:	7672                	ld	a2,312(sp)
   11832:	3436                	fld	fs0,360(sp)
   11834:	6d69                	lui	s10,0x1a
   11836:	6661                	lui	a2,0x18
   11838:	6364                	ld	s1,192(a4)
   1183a:	0000                	unimp
   1183c:	0000                	unimp
   1183e:	0300                	addi	s0,sp,384
   11840:	0000                	unimp
   11842:	0500                	addi	s0,sp,640
   11844:	0000                	unimp
   11846:	b000                	fsd	fs0,32(s0)
   11848:	79616b6f          	jal	s6,0x27fde
   1184c:	0000                	unimp
   1184e:	0000                	unimp
   11850:	0000                	unimp
   11852:	0300                	addi	s0,sp,384
   11854:	0000                	unimp
   11856:	0400                	addi	s0,sp,512
   11858:	0000                	unimp
   1185a:	b700                	fsd	fs0,40(a4)
   1185c:	0f00                	addi	s0,sp,912
   1185e:	4042                	.insn	2, 0x4042
   11860:	0000                	unimp
   11862:	0300                	addi	s0,sp,384
   11864:	0000                	unimp
   11866:	0000                	unimp
   11868:	0000                	unimp
   1186a:	6001                	.insn	2, 0x6001
   1186c:	0000                	unimp
   1186e:	0100                	addi	s0,sp,128
   11870:	6e69                	lui	t3,0x1a
   11872:	6574                	ld	a3,200(a0)
   11874:	7272                	ld	tp,312(sp)
   11876:	7075                	c.lui	zero,0xffffd
   11878:	2d74                	fld	fa3,216(a0)
   1187a:	746e6f63          	bltu	t3,t1,0x11fd8
   1187e:	6f72                	ld	t5,280(sp)
   11880:	6c6c                	ld	a1,216(s0)
   11882:	7265                	lui	tp,0xffff9
   11884:	0000                	unimp
   11886:	0000                	unimp
   11888:	0000                	unimp
   1188a:	0300                	addi	s0,sp,384
   1188c:	0000                	unimp
   1188e:	0400                	addi	s0,sp,512
   11890:	0000                	unimp
   11892:	ca00                	sw	s0,16(a2)
   11894:	0000                	unimp
   11896:	0100                	addi	s0,sp,128
   11898:	0000                	unimp
   1189a:	0300                	addi	s0,sp,384
   1189c:	0000                	unimp
   1189e:	0f00                	addi	s0,sp,912
   118a0:	0000                	unimp
   118a2:	1b00                	addi	s0,sp,432
   118a4:	6972                	ld	s2,280(sp)
   118a6:	2c766373          	csrrsi	t1,0x2c7,12
   118aa:	2d757063          	bgeu	a0,s7,0x11b6a
   118ae:	6e69                	lui	t3,0x1a
   118b0:	6374                	ld	a3,192(a4)
   118b2:	0000                	unimp
   118b4:	0000                	unimp
   118b6:	0300                	addi	s0,sp,384
   118b8:	0000                	unimp
   118ba:	0000                	unimp
   118bc:	0000                	unimp
   118be:	db00                	sw	s0,48(a4)
   118c0:	0000                	unimp
   118c2:	0300                	addi	s0,sp,384
   118c4:	0000                	unimp
   118c6:	0400                	addi	s0,sp,512
   118c8:	0000                	unimp
   118ca:	f000                	sd	s0,32(s0)
   118cc:	0000                	unimp
   118ce:	0d00                	addi	s0,sp,656
   118d0:	0000                	unimp
   118d2:	0300                	addi	s0,sp,384
   118d4:	0000                	unimp
   118d6:	0400                	addi	s0,sp,512
   118d8:	0000                	unimp
   118da:	f600                	sd	s0,40(a2)
   118dc:	0000                	unimp
   118de:	0d00                	addi	s0,sp,656
   118e0:	0000                	unimp
   118e2:	0200                	addi	s0,sp,256
   118e4:	0000                	unimp
   118e6:	0200                	addi	s0,sp,256
   118e8:	0000                	unimp
   118ea:	0200                	addi	s0,sp,256
   118ec:	0000                	unimp
   118ee:	0100                	addi	s0,sp,128
   118f0:	656d                	lui	a0,0x1b
   118f2:	6f6d                	lui	t5,0x1b
   118f4:	7972                	ld	s2,312(sp)
   118f6:	3840                	fld	fs0,176(s0)
   118f8:	3030                	fld	fa2,96(s0)
   118fa:	3030                	fld	fa2,96(s0)
   118fc:	3030                	fld	fa2,96(s0)
   118fe:	0030                	addi	a2,sp,8
   11900:	0000                	unimp
   11902:	0300                	addi	s0,sp,384
   11904:	0000                	unimp
   11906:	0700                	addi	s0,sp,896
   11908:	0000                	unimp
   1190a:	4c00                	lw	s0,24(s0)
   1190c:	656d                	lui	a0,0x1b
   1190e:	6f6d                	lui	t5,0x1b
   11910:	7972                	ld	s2,312(sp)
   11912:	0000                	unimp
   11914:	0000                	unimp
   11916:	0300                	addi	s0,sp,384
   11918:	0000                	unimp
   1191a:	1000                	addi	s0,sp,32
   1191c:	0000                	unimp
   1191e:	9600                	.insn	2, 0x9600
   11920:	0000                	unimp
   11922:	0000                	unimp
   11924:	0080                	addi	s0,sp,64
   11926:	0000                	unimp
   11928:	0000                	unimp
   1192a:	0800                	addi	s0,sp,16
   1192c:	0000                	unimp
   1192e:	0000                	unimp
   11930:	0000                	unimp
   11932:	0300                	addi	s0,sp,384
   11934:	0000                	unimp
   11936:	0400                	addi	s0,sp,512
   11938:	0000                	unimp
   1193a:	f000                	sd	s0,32(s0)
   1193c:	0000                	unimp
   1193e:	0800                	addi	s0,sp,16
   11940:	0000                	unimp
   11942:	0300                	addi	s0,sp,384
   11944:	0000                	unimp
   11946:	0400                	addi	s0,sp,512
   11948:	0000                	unimp
   1194a:	f600                	sd	s0,40(a2)
   1194c:	0000                	unimp
   1194e:	0800                	addi	s0,sp,16
   11950:	0000                	unimp
   11952:	0200                	addi	s0,sp,256
   11954:	0000                	unimp
   11956:	0100                	addi	s0,sp,128
   11958:	00636f73          	csrrsi	t5,0x6,6
   1195c:	0000                	unimp
   1195e:	0300                	addi	s0,sp,384
   11960:	0000                	unimp
   11962:	0400                	addi	s0,sp,512
   11964:	0000                	unimp
   11966:	0000                	unimp
   11968:	0000                	unimp
   1196a:	0200                	addi	s0,sp,256
   1196c:	0000                	unimp
   1196e:	0300                	addi	s0,sp,384
   11970:	0000                	unimp
   11972:	0400                	addi	s0,sp,512
   11974:	0000                	unimp
   11976:	0f00                	addi	s0,sp,912
   11978:	0000                	unimp
   1197a:	0200                	addi	s0,sp,256
   1197c:	0000                	unimp
   1197e:	0300                	addi	s0,sp,384
   11980:	0000                	unimp
   11982:	3600                	fld	fs0,40(a2)
   11984:	0000                	unimp
   11986:	1b00                	addi	s0,sp,432
   11988:	69466953          	.insn	4, 0x69466953
   1198c:	6576                	ld	a0,344(sp)
   1198e:	462c                	lw	a1,72(a2)
   11990:	3755                	addiw	a4,a4,-11
   11992:	3034                	fld	fa3,96(s0)
   11994:	432d                	li	t1,11
   11996:	3030                	fld	fa2,96(s0)
   11998:	2d30                	fld	fa2,88(a0)
   1199a:	00636f73          	csrrsi	t5,0x6,6
   1199e:	7566                	ld	a0,120(sp)
   119a0:	2d303037          	lui	zero,0x2d303
   119a4:	00636f73          	csrrsi	t5,0x6,6
   119a8:	69666973          	csrrsi	s2,0x696,12
   119ac:	6576                	ld	a0,344(sp)
   119ae:	732d                	lui	t1,0xfffeb
   119b0:	7300636f          	jal	t1,0x180e0
   119b4:	6d69                	lui	s10,0x1a
   119b6:	6c70                	ld	a2,216(s0)
   119b8:	2d65                	addiw	s10,s10,25 # 0x1a019
   119ba:	7562                	ld	a0,56(sp)
   119bc:	00000073          	ecall
   119c0:	0000                	unimp
   119c2:	0300                	addi	s0,sp,384
   119c4:	0000                	unimp
   119c6:	0000                	unimp
   119c8:	0000                	unimp
   119ca:	6a01                	.insn	2, 0x6a01
   119cc:	0000                	unimp
   119ce:	0100                	addi	s0,sp,128
   119d0:	7562                	ld	a0,56(sp)
   119d2:	72652d73          	csrrs	s10,mhpmevent6h,a0
   119d6:	6f72                	ld	t5,280(sp)
   119d8:	2d72                	fld	fs10,280(sp)
   119da:	6e75                	lui	t3,0x1d
   119dc:	7469                	lui	s0,0xffffa
   119de:	3140                	fld	fs0,160(a0)
   119e0:	30303037          	lui	zero,0x30303
   119e4:	3030                	fld	fa2,96(s0)
   119e6:	0000                	unimp
   119e8:	0000                	unimp
   119ea:	0300                	addi	s0,sp,384
   119ec:	0000                	unimp
   119ee:	1100                	addi	s0,sp,160
   119f0:	0000                	unimp
   119f2:	1b00                	addi	s0,sp,432
   119f4:	69666973          	csrrsi	s2,0x696,12
   119f8:	6576                	ld	a0,344(sp)
   119fa:	622c                	ld	a1,64(a2)
   119fc:	7375                	lui	t1,0xffffd
   119fe:	7265                	lui	tp,0xffff9
   11a00:	6f72                	ld	t5,280(sp)
   11a02:	3072                	fld	ft0,312(sp)
   11a04:	0000                	unimp
   11a06:	0000                	unimp
   11a08:	0000                	unimp
   11a0a:	0300                	addi	s0,sp,384
   11a0c:	0000                	unimp
   11a0e:	0400                	addi	s0,sp,512
   11a10:	0000                	unimp
   11a12:	7101                	addi	sp,sp,-512
   11a14:	0000                	unimp
   11a16:	0400                	addi	s0,sp,512
   11a18:	0000                	unimp
   11a1a:	0300                	addi	s0,sp,384
   11a1c:	0000                	unimp
   11a1e:	0400                	addi	s0,sp,512
   11a20:	0000                	unimp
   11a22:	8201                	c.srli64	a2
   11a24:	0000                	unimp
   11a26:	4100                	lw	s0,0(a0)
   11a28:	0000                	unimp
   11a2a:	0300                	addi	s0,sp,384
   11a2c:	0000                	unimp
   11a2e:	1000                	addi	s0,sp,32
   11a30:	0000                	unimp
   11a32:	9600                	.insn	2, 0x9600
   11a34:	0000                	unimp
   11a36:	0000                	unimp
   11a38:	7001                	c.lui	zero,0xfffe0
	...
   11a42:	0010                	.insn	2, 0x0010
   11a44:	0000                	unimp
   11a46:	0300                	addi	s0,sp,384
   11a48:	0000                	unimp
   11a4a:	0800                	addi	s0,sp,16
   11a4c:	0000                	unimp
   11a4e:	8d01                	sub	a0,a0,s0
   11a50:	746e6f63          	bltu	t3,t1,0x121ae
   11a54:	6f72                	ld	t5,280(sp)
   11a56:	006c                	addi	a1,sp,12
   11a58:	0000                	unimp
   11a5a:	0200                	addi	s0,sp,256
   11a5c:	0000                	unimp
   11a5e:	0100                	addi	s0,sp,128
   11a60:	7562                	ld	a0,56(sp)
   11a62:	72652d73          	csrrs	s10,mhpmevent6h,a0
   11a66:	6f72                	ld	t5,280(sp)
   11a68:	2d72                	fld	fs10,280(sp)
   11a6a:	6e75                	lui	t3,0x1d
   11a6c:	7469                	lui	s0,0xffffa
   11a6e:	3140                	fld	fs0,160(a0)
   11a70:	30313037          	lui	zero,0x30313
   11a74:	3030                	fld	fa2,96(s0)
   11a76:	0000                	unimp
   11a78:	0000                	unimp
   11a7a:	0300                	addi	s0,sp,384
   11a7c:	0000                	unimp
   11a7e:	1100                	addi	s0,sp,160
   11a80:	0000                	unimp
   11a82:	1b00                	addi	s0,sp,432
   11a84:	69666973          	csrrsi	s2,0x696,12
   11a88:	6576                	ld	a0,344(sp)
   11a8a:	622c                	ld	a1,64(a2)
   11a8c:	7375                	lui	t1,0xffffd
   11a8e:	7265                	lui	tp,0xffff9
   11a90:	6f72                	ld	t5,280(sp)
   11a92:	3072                	fld	ft0,312(sp)
   11a94:	0000                	unimp
   11a96:	0000                	unimp
   11a98:	0000                	unimp
   11a9a:	0300                	addi	s0,sp,384
   11a9c:	0000                	unimp
   11a9e:	0400                	addi	s0,sp,512
   11aa0:	0000                	unimp
   11aa2:	7101                	addi	sp,sp,-512
   11aa4:	0000                	unimp
   11aa6:	0400                	addi	s0,sp,512
   11aa8:	0000                	unimp
   11aaa:	0300                	addi	s0,sp,384
   11aac:	0000                	unimp
   11aae:	0400                	addi	s0,sp,512
   11ab0:	0000                	unimp
   11ab2:	8201                	c.srli64	a2
   11ab4:	0000                	unimp
   11ab6:	4200                	lw	s0,0(a2)
   11ab8:	0000                	unimp
   11aba:	0300                	addi	s0,sp,384
   11abc:	0000                	unimp
   11abe:	1000                	addi	s0,sp,32
   11ac0:	0000                	unimp
   11ac2:	9600                	.insn	2, 0x9600
   11ac4:	0000                	unimp
   11ac6:	0000                	unimp
   11ac8:	7001                	c.lui	zero,0xfffe0
   11aca:	0010                	.insn	2, 0x0010
   11acc:	0000                	unimp
   11ace:	0000                	unimp
   11ad0:	0000                	unimp
   11ad2:	0010                	.insn	2, 0x0010
   11ad4:	0000                	unimp
   11ad6:	0300                	addi	s0,sp,384
   11ad8:	0000                	unimp
   11ada:	0800                	addi	s0,sp,16
   11adc:	0000                	unimp
   11ade:	8d01                	sub	a0,a0,s0
   11ae0:	746e6f63          	bltu	t3,t1,0x1223e
   11ae4:	6f72                	ld	t5,280(sp)
   11ae6:	006c                	addi	a1,sp,12
   11ae8:	0000                	unimp
   11aea:	0200                	addi	s0,sp,256
   11aec:	0000                	unimp
   11aee:	0100                	addi	s0,sp,128
   11af0:	7562                	ld	a0,56(sp)
   11af2:	72652d73          	csrrs	s10,mhpmevent6h,a0
   11af6:	6f72                	ld	t5,280(sp)
   11af8:	2d72                	fld	fs10,280(sp)
   11afa:	6e75                	lui	t3,0x1d
   11afc:	7469                	lui	s0,0xffffa
   11afe:	3140                	fld	fs0,160(a0)
   11b00:	30323037          	lui	zero,0x30323
   11b04:	3030                	fld	fa2,96(s0)
   11b06:	0000                	unimp
   11b08:	0000                	unimp
   11b0a:	0300                	addi	s0,sp,384
   11b0c:	0000                	unimp
   11b0e:	1100                	addi	s0,sp,160
   11b10:	0000                	unimp
   11b12:	1b00                	addi	s0,sp,432
   11b14:	69666973          	csrrsi	s2,0x696,12
   11b18:	6576                	ld	a0,344(sp)
   11b1a:	622c                	ld	a1,64(a2)
   11b1c:	7375                	lui	t1,0xffffd
   11b1e:	7265                	lui	tp,0xffff9
   11b20:	6f72                	ld	t5,280(sp)
   11b22:	3072                	fld	ft0,312(sp)
   11b24:	0000                	unimp
   11b26:	0000                	unimp
   11b28:	0000                	unimp
   11b2a:	0300                	addi	s0,sp,384
   11b2c:	0000                	unimp
   11b2e:	0400                	addi	s0,sp,512
   11b30:	0000                	unimp
   11b32:	7101                	addi	sp,sp,-512
   11b34:	0000                	unimp
   11b36:	0400                	addi	s0,sp,512
   11b38:	0000                	unimp
   11b3a:	0300                	addi	s0,sp,384
   11b3c:	0000                	unimp
   11b3e:	0400                	addi	s0,sp,512
   11b40:	0000                	unimp
   11b42:	8201                	c.srli64	a2
   11b44:	0000                	unimp
   11b46:	4300                	lw	s0,0(a4)
   11b48:	0000                	unimp
   11b4a:	0300                	addi	s0,sp,384
   11b4c:	0000                	unimp
   11b4e:	1000                	addi	s0,sp,32
   11b50:	0000                	unimp
   11b52:	9600                	.insn	2, 0x9600
   11b54:	0000                	unimp
   11b56:	0000                	unimp
   11b58:	7001                	c.lui	zero,0xfffe0
   11b5a:	0020                	addi	s0,sp,8
   11b5c:	0000                	unimp
   11b5e:	0000                	unimp
   11b60:	0000                	unimp
   11b62:	0010                	.insn	2, 0x0010
   11b64:	0000                	unimp
   11b66:	0300                	addi	s0,sp,384
   11b68:	0000                	unimp
   11b6a:	0800                	addi	s0,sp,16
   11b6c:	0000                	unimp
   11b6e:	8d01                	sub	a0,a0,s0
   11b70:	746e6f63          	bltu	t3,t1,0x122ce
   11b74:	6f72                	ld	t5,280(sp)
   11b76:	006c                	addi	a1,sp,12
   11b78:	0000                	unimp
   11b7a:	0200                	addi	s0,sp,256
   11b7c:	0000                	unimp
   11b7e:	0100                	addi	s0,sp,128
   11b80:	7562                	ld	a0,56(sp)
   11b82:	72652d73          	csrrs	s10,mhpmevent6h,a0
   11b86:	6f72                	ld	t5,280(sp)
   11b88:	2d72                	fld	fs10,280(sp)
   11b8a:	6e75                	lui	t3,0x1d
   11b8c:	7469                	lui	s0,0xffffa
   11b8e:	3140                	fld	fs0,160(a0)
   11b90:	30333037          	lui	zero,0x30333
   11b94:	3030                	fld	fa2,96(s0)
   11b96:	0000                	unimp
   11b98:	0000                	unimp
   11b9a:	0300                	addi	s0,sp,384
   11b9c:	0000                	unimp
   11b9e:	1100                	addi	s0,sp,160
   11ba0:	0000                	unimp
   11ba2:	1b00                	addi	s0,sp,432
   11ba4:	69666973          	csrrsi	s2,0x696,12
   11ba8:	6576                	ld	a0,344(sp)
   11baa:	622c                	ld	a1,64(a2)
   11bac:	7375                	lui	t1,0xffffd
   11bae:	7265                	lui	tp,0xffff9
   11bb0:	6f72                	ld	t5,280(sp)
   11bb2:	3072                	fld	ft0,312(sp)
   11bb4:	0000                	unimp
   11bb6:	0000                	unimp
   11bb8:	0000                	unimp
   11bba:	0300                	addi	s0,sp,384
   11bbc:	0000                	unimp
   11bbe:	0400                	addi	s0,sp,512
   11bc0:	0000                	unimp
   11bc2:	7101                	addi	sp,sp,-512
   11bc4:	0000                	unimp
   11bc6:	0400                	addi	s0,sp,512
   11bc8:	0000                	unimp
   11bca:	0300                	addi	s0,sp,384
   11bcc:	0000                	unimp
   11bce:	0400                	addi	s0,sp,512
   11bd0:	0000                	unimp
   11bd2:	8201                	c.srli64	a2
   11bd4:	0000                	unimp
   11bd6:	4400                	lw	s0,8(s0)
   11bd8:	0000                	unimp
   11bda:	0300                	addi	s0,sp,384
   11bdc:	0000                	unimp
   11bde:	1000                	addi	s0,sp,32
   11be0:	0000                	unimp
   11be2:	9600                	.insn	2, 0x9600
   11be4:	0000                	unimp
   11be6:	0000                	unimp
   11be8:	7001                	c.lui	zero,0xfffe0
   11bea:	0030                	addi	a2,sp,8
   11bec:	0000                	unimp
   11bee:	0000                	unimp
   11bf0:	0000                	unimp
   11bf2:	0010                	.insn	2, 0x0010
   11bf4:	0000                	unimp
   11bf6:	0300                	addi	s0,sp,384
   11bf8:	0000                	unimp
   11bfa:	0800                	addi	s0,sp,16
   11bfc:	0000                	unimp
   11bfe:	8d01                	sub	a0,a0,s0
   11c00:	746e6f63          	bltu	t3,t1,0x1235e
   11c04:	6f72                	ld	t5,280(sp)
   11c06:	006c                	addi	a1,sp,12
   11c08:	0000                	unimp
   11c0a:	0200                	addi	s0,sp,256
   11c0c:	0000                	unimp
   11c0e:	0100                	addi	s0,sp,128
   11c10:	7562                	ld	a0,56(sp)
   11c12:	72652d73          	csrrs	s10,mhpmevent6h,a0
   11c16:	6f72                	ld	t5,280(sp)
   11c18:	2d72                	fld	fs10,280(sp)
   11c1a:	6e75                	lui	t3,0x1d
   11c1c:	7469                	lui	s0,0xffffa
   11c1e:	3140                	fld	fs0,160(a0)
   11c20:	30343037          	lui	zero,0x30343
   11c24:	3030                	fld	fa2,96(s0)
   11c26:	0000                	unimp
   11c28:	0000                	unimp
   11c2a:	0300                	addi	s0,sp,384
   11c2c:	0000                	unimp
   11c2e:	1100                	addi	s0,sp,160
   11c30:	0000                	unimp
   11c32:	1b00                	addi	s0,sp,432
   11c34:	69666973          	csrrsi	s2,0x696,12
   11c38:	6576                	ld	a0,344(sp)
   11c3a:	622c                	ld	a1,64(a2)
   11c3c:	7375                	lui	t1,0xffffd
   11c3e:	7265                	lui	tp,0xffff9
   11c40:	6f72                	ld	t5,280(sp)
   11c42:	3072                	fld	ft0,312(sp)
   11c44:	0000                	unimp
   11c46:	0000                	unimp
   11c48:	0000                	unimp
   11c4a:	0300                	addi	s0,sp,384
   11c4c:	0000                	unimp
   11c4e:	0400                	addi	s0,sp,512
   11c50:	0000                	unimp
   11c52:	7101                	addi	sp,sp,-512
   11c54:	0000                	unimp
   11c56:	0400                	addi	s0,sp,512
   11c58:	0000                	unimp
   11c5a:	0300                	addi	s0,sp,384
   11c5c:	0000                	unimp
   11c5e:	0400                	addi	s0,sp,512
   11c60:	0000                	unimp
   11c62:	8201                	c.srli64	a2
   11c64:	0000                	unimp
   11c66:	4500                	lw	s0,8(a0)
   11c68:	0000                	unimp
   11c6a:	0300                	addi	s0,sp,384
   11c6c:	0000                	unimp
   11c6e:	1000                	addi	s0,sp,32
   11c70:	0000                	unimp
   11c72:	9600                	.insn	2, 0x9600
   11c74:	0000                	unimp
   11c76:	0000                	unimp
   11c78:	7001                	c.lui	zero,0xfffe0
   11c7a:	0040                	addi	s0,sp,4
   11c7c:	0000                	unimp
   11c7e:	0000                	unimp
   11c80:	0000                	unimp
   11c82:	0010                	.insn	2, 0x0010
   11c84:	0000                	unimp
   11c86:	0300                	addi	s0,sp,384
   11c88:	0000                	unimp
   11c8a:	0800                	addi	s0,sp,16
   11c8c:	0000                	unimp
   11c8e:	8d01                	sub	a0,a0,s0
   11c90:	746e6f63          	bltu	t3,t1,0x123ee
   11c94:	6f72                	ld	t5,280(sp)
   11c96:	006c                	addi	a1,sp,12
   11c98:	0000                	unimp
   11c9a:	0200                	addi	s0,sp,256
   11c9c:	0000                	unimp
   11c9e:	0100                	addi	s0,sp,128
   11ca0:	68636163          	bltu	t1,t1,0x12322
   11ca4:	2d65                	addiw	s10,s10,25
   11ca6:	746e6f63          	bltu	t3,t1,0x12404
   11caa:	6f72                	ld	t5,280(sp)
   11cac:	6c6c                	ld	a1,216(s0)
   11cae:	7265                	lui	tp,0xffff9
   11cb0:	3240                	fld	fs0,160(a2)
   11cb2:	3130                	fld	fa2,96(a0)
   11cb4:	3030                	fld	fa2,96(s0)
   11cb6:	3030                	fld	fa2,96(s0)
   11cb8:	0000                	unimp
   11cba:	0000                	unimp
   11cbc:	0000                	unimp
   11cbe:	0300                	addi	s0,sp,384
   11cc0:	0000                	unimp
   11cc2:	0400                	addi	s0,sp,512
   11cc4:	0000                	unimp
   11cc6:	5a00                	lw	s0,48(a2)
   11cc8:	0000                	unimp
   11cca:	4000                	lw	s0,0(s0)
   11ccc:	0000                	unimp
   11cce:	0300                	addi	s0,sp,384
   11cd0:	0000                	unimp
   11cd2:	0400                	addi	s0,sp,512
   11cd4:	0000                	unimp
   11cd6:	9701                	srai	a4,a4,0x20
   11cd8:	0000                	unimp
   11cda:	0200                	addi	s0,sp,256
   11cdc:	0000                	unimp
   11cde:	0300                	addi	s0,sp,384
   11ce0:	0000                	unimp
   11ce2:	0400                	addi	s0,sp,512
   11ce4:	0000                	unimp
   11ce6:	6d00                	ld	s0,24(a0)
   11ce8:	0000                	unimp
   11cea:	0008                	.insn	2, 0x0008
   11cec:	0000                	unimp
   11cee:	0300                	addi	s0,sp,384
   11cf0:	0000                	unimp
   11cf2:	0400                	addi	s0,sp,512
   11cf4:	0000                	unimp
   11cf6:	7a00                	ld	s0,48(a2)
   11cf8:	2000                	fld	fs0,0(s0)
   11cfa:	0000                	unimp
   11cfc:	0000                	unimp
   11cfe:	0300                	addi	s0,sp,384
   11d00:	0000                	unimp
   11d02:	0000                	unimp
   11d04:	0000                	unimp
   11d06:	a301                	j	0x12206
   11d08:	0000                	unimp
   11d0a:	0300                	addi	s0,sp,384
   11d0c:	0000                	unimp
   11d0e:	1500                	addi	s0,sp,672
   11d10:	0000                	unimp
   11d12:	1b00                	addi	s0,sp,432
   11d14:	69666973          	csrrsi	s2,0x696,12
   11d18:	6576                	ld	a0,344(sp)
   11d1a:	632c                	ld	a1,64(a4)
   11d1c:	68636163          	bltu	t1,t1,0x1239e
   11d20:	3065                	.insn	2, 0x3065
   11d22:	6300                	ld	s0,0(a4)
   11d24:	6361                	lui	t1,0x18
   11d26:	6568                	ld	a0,200(a0)
   11d28:	0000                	unimp
   11d2a:	0000                	unimp
   11d2c:	0000                	unimp
   11d2e:	0300                	addi	s0,sp,384
   11d30:	0000                	unimp
   11d32:	0400                	addi	s0,sp,512
   11d34:	0000                	unimp
   11d36:	7101                	addi	sp,sp,-512
   11d38:	0000                	unimp
   11d3a:	0400                	addi	s0,sp,512
   11d3c:	0000                	unimp
   11d3e:	0300                	addi	s0,sp,384
   11d40:	0000                	unimp
   11d42:	1000                	addi	s0,sp,32
   11d44:	0000                	unimp
   11d46:	8201                	c.srli64	a2
   11d48:	0000                	unimp
   11d4a:	1300                	addi	s0,sp,416
   11d4c:	0000                	unimp
   11d4e:	1400                	addi	s0,sp,544
   11d50:	0000                	unimp
   11d52:	1500                	addi	s0,sp,672
   11d54:	0000                	unimp
   11d56:	1600                	addi	s0,sp,800
   11d58:	0000                	unimp
   11d5a:	0300                	addi	s0,sp,384
   11d5c:	0000                	unimp
   11d5e:	1000                	addi	s0,sp,32
   11d60:	0000                	unimp
   11d62:	8500                	.insn	2, 0x8500
   11d64:	0000                	unimp
   11d66:	0500                	addi	s0,sp,640
   11d68:	0000                	unimp
   11d6a:	0600                	addi	s0,sp,768
   11d6c:	0000                	unimp
   11d6e:	0700                	addi	s0,sp,896
   11d70:	0000                	unimp
   11d72:	0800                	addi	s0,sp,16
   11d74:	0000                	unimp
   11d76:	0300                	addi	s0,sp,384
   11d78:	0000                	unimp
   11d7a:	2000                	fld	fs0,0(s0)
   11d7c:	0000                	unimp
   11d7e:	9600                	.insn	2, 0x9600
   11d80:	0000                	unimp
   11d82:	0000                	unimp
   11d84:	0102                	c.slli64	sp
	...
   11d8e:	0010                	.insn	2, 0x0010
   11d90:	0000                	unimp
   11d92:	0000                	unimp
   11d94:	0008                	.insn	2, 0x0008
   11d96:	0000                	unimp
   11d98:	0000                	unimp
   11d9a:	0000                	unimp
   11d9c:	2000                	fld	fs0,0(s0)
   11d9e:	0000                	unimp
   11da0:	0000                	unimp
   11da2:	0300                	addi	s0,sp,384
   11da4:	0000                	unimp
   11da6:	1100                	addi	s0,sp,160
   11da8:	0000                	unimp
   11daa:	8d01                	sub	a0,a0,s0
   11dac:	746e6f63          	bltu	t3,t1,0x1250a
   11db0:	6f72                	ld	t5,280(sp)
   11db2:	006c                	addi	a1,sp,12
   11db4:	65646973          	csrrsi	s2,hviprio1h,8
   11db8:	6162                	ld	sp,24(sp)
   11dba:	646e                	ld	s0,216(sp)
   11dbc:	0000                	unimp
   11dbe:	0000                	unimp
   11dc0:	0000                	unimp
   11dc2:	0300                	addi	s0,sp,384
   11dc4:	0000                	unimp
   11dc6:	0400                	addi	s0,sp,512
   11dc8:	0000                	unimp
   11dca:	b101                	j	0x119ca
   11dcc:	0000                	unimp
   11dce:	0800                	addi	s0,sp,16
   11dd0:	0000                	unimp
   11dd2:	0300                	addi	s0,sp,384
   11dd4:	0000                	unimp
   11dd6:	0400                	addi	s0,sp,512
   11dd8:	0000                	unimp
   11dda:	c801                	beqz	s0,0x11dea
   11ddc:	0000                	unimp
   11dde:	0a00                	addi	s0,sp,272
   11de0:	0000                	unimp
   11de2:	0300                	addi	s0,sp,384
   11de4:	0000                	unimp
   11de6:	0400                	addi	s0,sp,512
   11de8:	0000                	unimp
   11dea:	f000                	sd	s0,32(s0)
   11dec:	0000                	unimp
   11dee:	0200                	addi	s0,sp,256
   11df0:	0000                	unimp
   11df2:	0300                	addi	s0,sp,384
   11df4:	0000                	unimp
   11df6:	0400                	addi	s0,sp,512
   11df8:	0000                	unimp
   11dfa:	f600                	sd	s0,40(a2)
   11dfc:	0000                	unimp
   11dfe:	0200                	addi	s0,sp,256
   11e00:	0000                	unimp
   11e02:	0200                	addi	s0,sp,256
   11e04:	0000                	unimp
   11e06:	0100                	addi	s0,sp,128
   11e08:	65646163          	bltu	s0,s6,0x1244a
   11e0c:	636e                	ld	t1,216(sp)
   11e0e:	2d65                	addiw	s10,s10,25
   11e10:	6464                	ld	s1,200(s0)
   11e12:	2d72                	fld	fs10,280(sp)
   11e14:	676d                	lui	a4,0x1b
   11e16:	746d                	lui	s0,0xffffb
   11e18:	3140                	fld	fs0,160(a0)
   11e1a:	3030                	fld	fa2,96(s0)
   11e1c:	30303063          	.insn	4, 0x30303063
   11e20:	0030                	addi	a2,sp,8
   11e22:	0000                	unimp
   11e24:	0000                	unimp
   11e26:	0300                	addi	s0,sp,384
   11e28:	0000                	unimp
   11e2a:	1700                	addi	s0,sp,928
   11e2c:	0000                	unimp
   11e2e:	1b00                	addi	s0,sp,432
   11e30:	69666973          	csrrsi	s2,0x696,12
   11e34:	6576                	ld	a0,344(sp)
   11e36:	632c                	ld	a1,64(a4)
   11e38:	6461                	lui	s0,0x18
   11e3a:	6e65                	lui	t3,0x19
   11e3c:	64646563          	bltu	s0,t1,0x12486
   11e40:	6d72                	ld	s10,280(sp)
   11e42:	30746d67          	.insn	4, 0x30746d67
   11e46:	0000                	unimp
   11e48:	0000                	unimp
   11e4a:	0300                	addi	s0,sp,384
   11e4c:	0000                	unimp
   11e4e:	1000                	addi	s0,sp,32
   11e50:	0000                	unimp
   11e52:	9600                	.insn	2, 0x9600
   11e54:	0000                	unimp
   11e56:	0000                	unimp
   11e58:	0c10                	addi	a2,sp,528
	...
   11e62:	0010                	.insn	2, 0x0010
   11e64:	0000                	unimp
   11e66:	0300                	addi	s0,sp,384
   11e68:	0000                	unimp
   11e6a:	0800                	addi	s0,sp,16
   11e6c:	0000                	unimp
   11e6e:	8d01                	sub	a0,a0,s0
   11e70:	746e6f63          	bltu	t3,t1,0x125ce
   11e74:	6f72                	ld	t5,280(sp)
   11e76:	006c                	addi	a1,sp,12
   11e78:	0000                	unimp
   11e7a:	0200                	addi	s0,sp,256
   11e7c:	0000                	unimp
   11e7e:	0100                	addi	s0,sp,128
   11e80:	65646163          	bltu	s0,s6,0x124c2
   11e84:	636e                	ld	t1,216(sp)
   11e86:	2d65                	addiw	s10,s10,25
   11e88:	676d6567          	.insn	4, 0x676d6567
   11e8c:	6c78                	ld	a4,216(s0)
   11e8e:	6d2d                	lui	s10,0xb
   11e90:	40746d67          	.insn	4, 0x40746d67
   11e94:	3031                	.insn	2, 0x3031
   11e96:	6130                	ld	a2,64(a0)
   11e98:	3030                	fld	fa2,96(s0)
   11e9a:	3030                	fld	fa2,96(s0)
   11e9c:	0000                	unimp
   11e9e:	0000                	unimp
   11ea0:	0000                	unimp
   11ea2:	0300                	addi	s0,sp,384
   11ea4:	0000                	unimp
   11ea6:	1a00                	addi	s0,sp,304
   11ea8:	0000                	unimp
   11eaa:	1b00                	addi	s0,sp,432
   11eac:	69666973          	csrrsi	s2,0x696,12
   11eb0:	6576                	ld	a0,344(sp)
   11eb2:	632c                	ld	a1,64(a4)
   11eb4:	6461                	lui	s0,0x18
   11eb6:	6e65                	lui	t3,0x19
   11eb8:	65676563          	bltu	a4,s6,0x12502
   11ebc:	676d                	lui	a4,0x1b
   11ebe:	6c78                	ld	a4,216(s0)
   11ec0:	676d                	lui	a4,0x1b
   11ec2:	746d                	lui	s0,0xffffb
   11ec4:	0030                	addi	a2,sp,8
   11ec6:	0000                	unimp
   11ec8:	0000                	unimp
   11eca:	0300                	addi	s0,sp,384
   11ecc:	0000                	unimp
   11ece:	1000                	addi	s0,sp,32
   11ed0:	0000                	unimp
   11ed2:	9600                	.insn	2, 0x9600
   11ed4:	0000                	unimp
   11ed6:	0000                	unimp
   11ed8:	0a10                	addi	a2,sp,272
	...
   11ee2:	0010                	.insn	2, 0x0010
   11ee4:	0000                	unimp
   11ee6:	0300                	addi	s0,sp,384
   11ee8:	0000                	unimp
   11eea:	0800                	addi	s0,sp,16
   11eec:	0000                	unimp
   11eee:	8d01                	sub	a0,a0,s0
   11ef0:	746e6f63          	bltu	t3,t1,0x1264e
   11ef4:	6f72                	ld	t5,280(sp)
   11ef6:	006c                	addi	a1,sp,12
   11ef8:	0000                	unimp
   11efa:	0200                	addi	s0,sp,256
   11efc:	0000                	unimp
   11efe:	0100                	addi	s0,sp,128
   11f00:	70696863          	bltu	s2,t1,0x12610
   11f04:	696c                	ld	a1,208(a0)
   11f06:	6b6e                	ld	s6,216(sp)
   11f08:	3440                	fld	fs0,168(s0)
   11f0a:	3030                	fld	fa2,96(s0)
   11f0c:	3030                	fld	fa2,96(s0)
   11f0e:	3030                	fld	fa2,96(s0)
   11f10:	0030                	addi	a2,sp,8
   11f12:	0000                	unimp
   11f14:	0000                	unimp
   11f16:	0300                	addi	s0,sp,384
   11f18:	0000                	unimp
   11f1a:	0400                	addi	s0,sp,512
   11f1c:	0000                	unimp
   11f1e:	0000                	unimp
   11f20:	0000                	unimp
   11f22:	0200                	addi	s0,sp,256
   11f24:	0000                	unimp
   11f26:	0300                	addi	s0,sp,384
   11f28:	0000                	unimp
   11f2a:	0400                	addi	s0,sp,512
   11f2c:	0000                	unimp
   11f2e:	0f00                	addi	s0,sp,912
   11f30:	0000                	unimp
   11f32:	0200                	addi	s0,sp,256
   11f34:	0000                	unimp
   11f36:	0300                	addi	s0,sp,384
   11f38:	0000                	unimp
   11f3a:	1b00                	addi	s0,sp,432
   11f3c:	0000                	unimp
   11f3e:	1b00                	addi	s0,sp,432
   11f40:	69666973          	csrrsi	s2,0x696,12
   11f44:	6576                	ld	a0,344(sp)
   11f46:	632c                	ld	a1,64(a4)
   11f48:	6968                	ld	a0,208(a0)
   11f4a:	6c70                	ld	a2,216(s0)
   11f4c:	6e69                	lui	t3,0x1a
   11f4e:	6973006b          	.insn	4, 0x6973006b
   11f52:	706d                	c.lui	zero,0xffffb
   11f54:	656c                	ld	a1,200(a0)
   11f56:	622d                	lui	tp,0xb
   11f58:	7375                	lui	t1,0xffffd
   11f5a:	0000                	unimp
   11f5c:	0000                	unimp
   11f5e:	0300                	addi	s0,sp,384
   11f60:	0000                	unimp
   11f62:	4800                	lw	s0,16(s0)
   11f64:	0000                	unimp
   11f66:	6a01                	.insn	2, 0x6a01
   11f68:	0000                	unimp
   11f6a:	1800                	addi	s0,sp,48
   11f6c:	0000                	unimp
   11f6e:	0000                	unimp
   11f70:	0000                	unimp
   11f72:	1800                	addi	s0,sp,48
   11f74:	0000                	unimp
   11f76:	0000                	unimp
   11f78:	0000                	unimp
   11f7a:	0800                	addi	s0,sp,16
	...
   11f84:	0040                	addi	s0,sp,4
   11f86:	0000                	unimp
   11f88:	0000                	unimp
   11f8a:	0000                	unimp
   11f8c:	0040                	addi	s0,sp,4
   11f8e:	0000                	unimp
   11f90:	0000                	unimp
   11f92:	0000                	unimp
   11f94:	0020                	addi	s0,sp,8
   11f96:	0000                	unimp
   11f98:	0000                	unimp
   11f9a:	1000                	addi	s0,sp,32
   11f9c:	0000                	unimp
   11f9e:	0000                	unimp
   11fa0:	0000                	unimp
   11fa2:	1000                	addi	s0,sp,32
   11fa4:	0000                	unimp
   11fa6:	0000                	unimp
   11fa8:	0000                	unimp
   11faa:	0800                	addi	s0,sp,16
   11fac:	0000                	unimp
   11fae:	0000                	unimp
   11fb0:	0000                	unimp
   11fb2:	0300                	addi	s0,sp,384
   11fb4:	0000                	unimp
   11fb6:	0400                	addi	s0,sp,512
   11fb8:	0000                	unimp
   11fba:	f000                	sd	s0,32(s0)
   11fbc:	0000                	unimp
   11fbe:	0500                	addi	s0,sp,640
   11fc0:	0000                	unimp
   11fc2:	0300                	addi	s0,sp,384
   11fc4:	0000                	unimp
   11fc6:	0400                	addi	s0,sp,512
   11fc8:	0000                	unimp
   11fca:	f600                	sd	s0,40(a2)
   11fcc:	0000                	unimp
   11fce:	0500                	addi	s0,sp,640
   11fd0:	0000                	unimp
   11fd2:	0200                	addi	s0,sp,256
   11fd4:	0000                	unimp
   11fd6:	0100                	addi	s0,sp,128
   11fd8:	70696863          	bltu	s2,t1,0x126e8
   11fdc:	656c6573          	csrrsi	a0,hviprio1h,24
   11fe0:	36407463          	bgeu	zero,tp,0x12348
   11fe4:	3030                	fld	fa2,96(s0)
   11fe6:	0030                	addi	a2,sp,8
   11fe8:	0000                	unimp
   11fea:	0300                	addi	s0,sp,384
   11fec:	0000                	unimp
   11fee:	1300                	addi	s0,sp,416
   11ff0:	0000                	unimp
   11ff2:	1b00                	addi	s0,sp,432
   11ff4:	69666973          	csrrsi	s2,0x696,12
   11ff8:	6576                	ld	a0,344(sp)
   11ffa:	632c                	ld	a1,64(a4)
   11ffc:	6968                	ld	a0,208(a0)
   11ffe:	7370                	ld	a2,224(a4)
   12000:	6c65                	lui	s8,0x19
   12002:	6365                	lui	t1,0x19
   12004:	3074                	fld	fa3,224(s0)
   12006:	0000                	unimp
   12008:	0000                	unimp
   1200a:	0300                	addi	s0,sp,384
   1200c:	0000                	unimp
   1200e:	1000                	addi	s0,sp,32
   12010:	0000                	unimp
   12012:	9600                	.insn	2, 0x9600
   12014:	0000                	unimp
   12016:	0000                	unimp
   12018:	0000                	unimp
   1201a:	0060                	addi	s0,sp,12
   1201c:	0000                	unimp
   1201e:	0000                	unimp
   12020:	0000                	unimp
   12022:	0010                	.insn	2, 0x0010
   12024:	0000                	unimp
   12026:	0300                	addi	s0,sp,384
   12028:	0000                	unimp
   1202a:	0800                	addi	s0,sp,16
   1202c:	0000                	unimp
   1202e:	8d01                	sub	a0,a0,s0
   12030:	746e6f63          	bltu	t3,t1,0x1278e
   12034:	6f72                	ld	t5,280(sp)
   12036:	006c                	addi	a1,sp,12
   12038:	0000                	unimp
   1203a:	0200                	addi	s0,sp,256
   1203c:	0000                	unimp
   1203e:	0100                	addi	s0,sp,128
   12040:	6e696c63          	bltu	s2,t1,0x12738
   12044:	4074                	lw	a3,68(s0)
   12046:	3032                	fld	ft0,296(sp)
   12048:	3030                	fld	fa2,96(s0)
   1204a:	3030                	fld	fa2,96(s0)
   1204c:	0030                	addi	a2,sp,8
   1204e:	0000                	unimp
   12050:	0000                	unimp
   12052:	0300                	addi	s0,sp,384
   12054:	0000                	unimp
   12056:	0d00                	addi	s0,sp,656
   12058:	0000                	unimp
   1205a:	1b00                	addi	s0,sp,432
   1205c:	6972                	ld	s2,280(sp)
   1205e:	2c766373          	csrrsi	t1,0x2c7,12
   12062:	6e696c63          	bltu	s2,t1,0x1275a
   12066:	3074                	fld	fa3,224(s0)
   12068:	0000                	unimp
   1206a:	0000                	unimp
   1206c:	0000                	unimp
   1206e:	0300                	addi	s0,sp,384
   12070:	0000                	unimp
   12072:	5000                	lw	s0,32(s0)
   12074:	0000                	unimp
   12076:	da01                	beqz	a2,0x11f86
   12078:	0000                	unimp
   1207a:	0900                	addi	s0,sp,144
   1207c:	0000                	unimp
   1207e:	0300                	addi	s0,sp,384
   12080:	0000                	unimp
   12082:	0900                	addi	s0,sp,144
   12084:	0000                	unimp
   12086:	0700                	addi	s0,sp,896
   12088:	0000                	unimp
   1208a:	0a00                	addi	s0,sp,272
   1208c:	0000                	unimp
   1208e:	0300                	addi	s0,sp,384
   12090:	0000                	unimp
   12092:	0a00                	addi	s0,sp,272
   12094:	0000                	unimp
   12096:	0700                	addi	s0,sp,896
   12098:	0000                	unimp
   1209a:	0b00                	addi	s0,sp,400
   1209c:	0000                	unimp
   1209e:	0300                	addi	s0,sp,384
   120a0:	0000                	unimp
   120a2:	0b00                	addi	s0,sp,400
   120a4:	0000                	unimp
   120a6:	0700                	addi	s0,sp,896
   120a8:	0000                	unimp
   120aa:	0c00                	addi	s0,sp,528
   120ac:	0000                	unimp
   120ae:	0300                	addi	s0,sp,384
   120b0:	0000                	unimp
   120b2:	0c00                	addi	s0,sp,528
   120b4:	0000                	unimp
   120b6:	0700                	addi	s0,sp,896
   120b8:	0000                	unimp
   120ba:	0d00                	addi	s0,sp,656
   120bc:	0000                	unimp
   120be:	0300                	addi	s0,sp,384
   120c0:	0000                	unimp
   120c2:	0d00                	addi	s0,sp,656
   120c4:	0000                	unimp
   120c6:	0700                	addi	s0,sp,896
   120c8:	0000                	unimp
   120ca:	0300                	addi	s0,sp,384
   120cc:	0000                	unimp
   120ce:	1000                	addi	s0,sp,32
   120d0:	0000                	unimp
   120d2:	9600                	.insn	2, 0x9600
   120d4:	0000                	unimp
   120d6:	0000                	unimp
   120d8:	0002                	c.slli64	zero
   120da:	0000                	unimp
   120dc:	0000                	unimp
   120de:	0000                	unimp
   120e0:	0100                	addi	s0,sp,128
   120e2:	0000                	unimp
   120e4:	0000                	unimp
   120e6:	0300                	addi	s0,sp,384
   120e8:	0000                	unimp
   120ea:	0800                	addi	s0,sp,16
   120ec:	0000                	unimp
   120ee:	8d01                	sub	a0,a0,s0
   120f0:	746e6f63          	bltu	t3,t1,0x1284e
   120f4:	6f72                	ld	t5,280(sp)
   120f6:	006c                	addi	a1,sp,12
   120f8:	0000                	unimp
   120fa:	0200                	addi	s0,sp,256
   120fc:	0000                	unimp
   120fe:	0100                	addi	s0,sp,128
   12100:	6564                	ld	s1,200(a0)
   12102:	7562                	ld	a0,56(sp)
   12104:	6f632d67          	.insn	4, 0x6f632d67
   12108:	746e                	ld	s0,248(sp)
   1210a:	6f72                	ld	t5,280(sp)
   1210c:	6c6c                	ld	a1,216(s0)
   1210e:	7265                	lui	tp,0xffff9
   12110:	3040                	fld	fs0,160(s0)
   12112:	0000                	unimp
   12114:	0000                	unimp
   12116:	0300                	addi	s0,sp,384
   12118:	0000                	unimp
   1211a:	2100                	fld	fs0,0(a0)
   1211c:	0000                	unimp
   1211e:	1b00                	addi	s0,sp,432
   12120:	69666973          	csrrsi	s2,0x696,12
   12124:	6576                	ld	a0,344(sp)
   12126:	642c                	ld	a1,72(s0)
   12128:	6265                	lui	tp,0x19
   1212a:	6775                	lui	a4,0x1d
   1212c:	302d                	.insn	2, 0x302d
   1212e:	3331                	addiw	t1,t1,-20 # 0x18fec
   12130:	7200                	ld	s0,32(a2)
   12132:	7369                	lui	t1,0xffffa
   12134:	642c7663          	bgeu	s8,sp,0x12780
   12138:	6265                	lui	tp,0x19
   1213a:	6775                	lui	a4,0x1d
   1213c:	302d                	.insn	2, 0x302d
   1213e:	3331                	addiw	t1,t1,-20 # 0xffffffffffff9fec
   12140:	0000                	unimp
   12142:	0000                	unimp
   12144:	0000                	unimp
   12146:	0300                	addi	s0,sp,384
   12148:	0000                	unimp
   1214a:	2800                	fld	fs0,16(s0)
   1214c:	0000                	unimp
   1214e:	da01                	beqz	a2,0x1205e
   12150:	0000                	unimp
   12152:	0900                	addi	s0,sp,144
   12154:	0000                	unimp
   12156:	ffff                	.insn	2, 0xffff
   12158:	0000                	unimp
   1215a:	0a00                	addi	s0,sp,272
   1215c:	0000                	unimp
   1215e:	ffff                	.insn	2, 0xffff
   12160:	0000                	unimp
   12162:	0b00                	addi	s0,sp,400
   12164:	0000                	unimp
   12166:	ffff                	.insn	2, 0xffff
   12168:	0000                	unimp
   1216a:	0c00                	addi	s0,sp,528
   1216c:	0000                	unimp
   1216e:	ffff                	.insn	2, 0xffff
   12170:	0000                	unimp
   12172:	0d00                	addi	s0,sp,656
   12174:	0000                	unimp
   12176:	ffff                	.insn	2, 0xffff
   12178:	0000                	unimp
   1217a:	0300                	addi	s0,sp,384
   1217c:	0000                	unimp
   1217e:	1000                	addi	s0,sp,32
   12180:	0000                	unimp
   12182:	9600                	.insn	2, 0x9600
	...
   12190:	0000                	unimp
   12192:	0010                	.insn	2, 0x0010
   12194:	0000                	unimp
   12196:	0300                	addi	s0,sp,384
   12198:	0000                	unimp
   1219a:	0800                	addi	s0,sp,16
   1219c:	0000                	unimp
   1219e:	8d01                	sub	a0,a0,s0
   121a0:	746e6f63          	bltu	t3,t1,0x128fe
   121a4:	6f72                	ld	t5,280(sp)
   121a6:	006c                	addi	a1,sp,12
   121a8:	0000                	unimp
   121aa:	0200                	addi	s0,sp,256
   121ac:	0000                	unimp
   121ae:	0100                	addi	s0,sp,128
   121b0:	6d64                	ld	s1,216(a0)
   121b2:	4061                	c.li	zero,24
   121b4:	30303033          	.insn	4, 0x30303033
   121b8:	3030                	fld	fa2,96(s0)
   121ba:	0030                	addi	a2,sp,8
   121bc:	0000                	unimp
   121be:	0300                	addi	s0,sp,384
   121c0:	0000                	unimp
   121c2:	0400                	addi	s0,sp,512
   121c4:	0000                	unimp
   121c6:	ee01                	bnez	a2,0x121de
   121c8:	0000                	unimp
   121ca:	0100                	addi	s0,sp,128
   121cc:	0000                	unimp
   121ce:	0300                	addi	s0,sp,384
   121d0:	0000                	unimp
   121d2:	0b00                	addi	s0,sp,400
   121d4:	0000                	unimp
   121d6:	1b00                	addi	s0,sp,432
   121d8:	6972                	ld	s2,280(sp)
   121da:	2c766373          	csrrsi	t1,0x2c7,12
   121de:	6d64                	ld	s1,216(a0)
   121e0:	3061                	.insn	2, 0x3061
   121e2:	0000                	unimp
   121e4:	0000                	unimp
   121e6:	0300                	addi	s0,sp,384
   121e8:	0000                	unimp
   121ea:	0400                	addi	s0,sp,512
   121ec:	0000                	unimp
   121ee:	f901                	bnez	a0,0x120fe
   121f0:	0000                	unimp
   121f2:	0400                	addi	s0,sp,512
   121f4:	0000                	unimp
   121f6:	0300                	addi	s0,sp,384
   121f8:	0000                	unimp
   121fa:	0400                	addi	s0,sp,512
   121fc:	0000                	unimp
   121fe:	0602                	c.slli64	a2
   12200:	0000                	unimp
   12202:	0000                	unimp
   12204:	0000                	unimp
   12206:	0300                	addi	s0,sp,384
   12208:	0000                	unimp
   1220a:	0400                	addi	s0,sp,512
   1220c:	0000                	unimp
   1220e:	7101                	addi	sp,sp,-512
   12210:	0000                	unimp
   12212:	0400                	addi	s0,sp,512
   12214:	0000                	unimp
   12216:	0300                	addi	s0,sp,384
   12218:	0000                	unimp
   1221a:	2000                	fld	fs0,0(s0)
   1221c:	0000                	unimp
   1221e:	8201                	c.srli64	a2
   12220:	0000                	unimp
   12222:	0b00                	addi	s0,sp,400
   12224:	0000                	unimp
   12226:	0c00                	addi	s0,sp,528
   12228:	0000                	unimp
   1222a:	0d00                	addi	s0,sp,656
   1222c:	0000                	unimp
   1222e:	0e00                	addi	s0,sp,784
   12230:	0000                	unimp
   12232:	0f00                	addi	s0,sp,912
   12234:	0000                	unimp
   12236:	1000                	addi	s0,sp,32
   12238:	0000                	unimp
   1223a:	1100                	addi	s0,sp,160
   1223c:	0000                	unimp
   1223e:	1200                	addi	s0,sp,288
   12240:	0000                	unimp
   12242:	0300                	addi	s0,sp,384
   12244:	0000                	unimp
   12246:	1000                	addi	s0,sp,32
   12248:	0000                	unimp
   1224a:	9600                	.insn	2, 0x9600
   1224c:	0000                	unimp
   1224e:	0000                	unimp
   12250:	00000003          	lb	zero,0(zero) # 0x0
   12254:	0000                	unimp
   12256:	0000                	unimp
   12258:	1000                	addi	s0,sp,32
   1225a:	0000                	unimp
   1225c:	0000                	unimp
   1225e:	0300                	addi	s0,sp,384
   12260:	0000                	unimp
   12262:	0800                	addi	s0,sp,16
   12264:	0000                	unimp
   12266:	8d01                	sub	a0,a0,s0
   12268:	746e6f63          	bltu	t3,t1,0x129c6
   1226c:	6f72                	ld	t5,280(sp)
   1226e:	006c                	addi	a1,sp,12
   12270:	0000                	unimp
   12272:	0300                	addi	s0,sp,384
   12274:	0000                	unimp
   12276:	0400                	addi	s0,sp,512
   12278:	0000                	unimp
   1227a:	1302                	slli	t1,t1,0x20
   1227c:	0000                	unimp
   1227e:	0100                	addi	s0,sp,128
   12280:	0000                	unimp
   12282:	0200                	addi	s0,sp,256
   12284:	0000                	unimp
   12286:	0100                	addi	s0,sp,128
   12288:	6d64                	ld	s1,216(a0)
   1228a:	6370                	ld	a2,192(a4)
   1228c:	6569                	lui	a0,0x1a
   1228e:	3240                	fld	fs0,160(a2)
   12290:	3030                	fld	fa2,96(s0)
   12292:	3030                	fld	fa2,96(s0)
   12294:	3030                	fld	fa2,96(s0)
   12296:	3030                	fld	fa2,96(s0)
   12298:	0030                	addi	a2,sp,8
   1229a:	0000                	unimp
   1229c:	0000                	unimp
   1229e:	0300                	addi	s0,sp,384
   122a0:	0000                	unimp
   122a2:	0400                	addi	s0,sp,512
   122a4:	0000                	unimp
   122a6:	0000                	unimp
   122a8:	0000                	unimp
   122aa:	0300                	addi	s0,sp,384
   122ac:	0000                	unimp
   122ae:	0300                	addi	s0,sp,384
   122b0:	0000                	unimp
   122b2:	0400                	addi	s0,sp,512
   122b4:	0000                	unimp
   122b6:	ca00                	sw	s0,16(a2)
   122b8:	0000                	unimp
   122ba:	0100                	addi	s0,sp,128
   122bc:	0000                	unimp
   122be:	0300                	addi	s0,sp,384
   122c0:	0000                	unimp
   122c2:	0400                	addi	s0,sp,512
   122c4:	0000                	unimp
   122c6:	2302                	fld	ft6,0(sp)
   122c8:	0000                	unimp
   122ca:	0800                	addi	s0,sp,16
   122cc:	0000                	unimp
   122ce:	0300                	addi	s0,sp,384
   122d0:	0000                	unimp
   122d2:	0400                	addi	s0,sp,512
   122d4:	0000                	unimp
   122d6:	0f00                	addi	s0,sp,912
   122d8:	0000                	unimp
   122da:	0200                	addi	s0,sp,256
   122dc:	0000                	unimp
   122de:	0300                	addi	s0,sp,384
   122e0:	0000                	unimp
   122e2:	1d00                	addi	s0,sp,688
   122e4:	0000                	unimp
   122e6:	1b00                	addi	s0,sp,432
   122e8:	69666973          	csrrsi	s2,0x696,12
   122ec:	6576                	ld	a0,344(sp)
   122ee:	642c                	ld	a1,72(s0)
   122f0:	2d6d                	addiw	s10,s10,27 # 0xb01b
   122f2:	6370                	ld	a2,192(a4)
   122f4:	6569                	lui	a0,0x1a
   122f6:	0030                	addi	a2,sp,8
   122f8:	73706e73          	csrrsi	t3,mhpmevent23h,0
   122fc:	642c                	ld	a1,72(s0)
   122fe:	63702d77          	.insn	4, 0x63702d77
   12302:	6569                	lui	a0,0x1a
   12304:	0000                	unimp
   12306:	0000                	unimp
   12308:	0000                	unimp
   1230a:	0300                	addi	s0,sp,384
   1230c:	0000                	unimp
   1230e:	0400                	addi	s0,sp,512
   12310:	0000                	unimp
   12312:	4c00                	lw	s0,24(s0)
   12314:	6370                	ld	a2,192(a4)
   12316:	0069                	c.nop	26
   12318:	0000                	unimp
   1231a:	0300                	addi	s0,sp,384
   1231c:	0000                	unimp
   1231e:	0000                	unimp
   12320:	0000                	unimp
   12322:	2e02                	fld	ft8,0(sp)
   12324:	0000                	unimp
   12326:	0300                	addi	s0,sp,384
   12328:	0000                	unimp
   1232a:	6000                	ld	s0,0(s0)
   1232c:	0000                	unimp
   1232e:	3b02                	fld	fs6,32(sp)
	...
   1233c:	0000                	unimp
   1233e:	0100                	addi	s0,sp,128
   12340:	0000                	unimp
   12342:	0e00                	addi	s0,sp,784
   12344:	0000                	unimp
   12346:	0100                	addi	s0,sp,128
	...
   12354:	0000                	unimp
   12356:	0200                	addi	s0,sp,256
   12358:	0000                	unimp
   1235a:	0e00                	addi	s0,sp,784
   1235c:	0000                	unimp
   1235e:	0200                	addi	s0,sp,256
	...
   1236c:	0000                	unimp
   1236e:	0300                	addi	s0,sp,384
   12370:	0000                	unimp
   12372:	0e00                	addi	s0,sp,784
   12374:	0000                	unimp
   12376:	0300                	addi	s0,sp,384
	...
   12384:	0000                	unimp
   12386:	0400                	addi	s0,sp,512
   12388:	0000                	unimp
   1238a:	0e00                	addi	s0,sp,784
   1238c:	0000                	unimp
   1238e:	0400                	addi	s0,sp,512
   12390:	0000                	unimp
   12392:	0300                	addi	s0,sp,384
   12394:	0000                	unimp
   12396:	1000                	addi	s0,sp,32
   12398:	0000                	unimp
   1239a:	4902                	lw	s2,0(sp)
	...
   123a8:	0000                	unimp
   123aa:	0700                	addi	s0,sp,896
   123ac:	0000                	unimp
   123ae:	0300                	addi	s0,sp,384
   123b0:	0000                	unimp
   123b2:	1800                	addi	s0,sp,48
   123b4:	0000                	unimp
   123b6:	5c02                	lw	s8,32(sp)
   123b8:	736d                	lui	t1,0xffffb
   123ba:	0069                	c.nop	26
   123bc:	6e69                	lui	t3,0x1a
   123be:	6174                	ld	a3,192(a0)
   123c0:	6900                	ld	s0,16(a0)
   123c2:	746e                	ld	s0,248(sp)
   123c4:	0062                	c.slli	zero,0x18
   123c6:	6e69                	lui	t3,0x1a
   123c8:	6374                	ld	a3,192(a4)
   123ca:	6900                	ld	s0,16(a0)
   123cc:	746e                	ld	s0,248(sp)
   123ce:	0064                	addi	s1,sp,12
   123d0:	0000                	unimp
   123d2:	0300                	addi	s0,sp,384
   123d4:	0000                	unimp
   123d6:	0400                	addi	s0,sp,512
   123d8:	0000                	unimp
   123da:	7101                	addi	sp,sp,-512
   123dc:	0000                	unimp
   123de:	0400                	addi	s0,sp,512
   123e0:	0000                	unimp
   123e2:	0300                	addi	s0,sp,384
   123e4:	0000                	unimp
   123e6:	2400                	fld	fs0,8(s0)
   123e8:	0000                	unimp
   123ea:	8201                	c.srli64	a2
   123ec:	0000                	unimp
   123ee:	3800                	fld	fs0,48(s0)
   123f0:	0000                	unimp
   123f2:	3900                	fld	fs0,48(a0)
   123f4:	0000                	unimp
   123f6:	3a00                	fld	fs0,48(a2)
   123f8:	0000                	unimp
   123fa:	3b00                	fld	fs0,48(a4)
   123fc:	0000                	unimp
   123fe:	3c00                	fld	fs0,56(s0)
   12400:	0000                	unimp
   12402:	3d00                	fld	fs0,56(a0)
   12404:	0000                	unimp
   12406:	3e00                	fld	fs0,56(a2)
   12408:	0000                	unimp
   1240a:	3f00                	fld	fs0,56(a4)
   1240c:	0000                	unimp
   1240e:	4000                	lw	s0,0(s0)
   12410:	0000                	unimp
   12412:	0300                	addi	s0,sp,384
   12414:	0000                	unimp
   12416:	4000                	lw	s0,0(s0)
   12418:	0000                	unimp
   1241a:	9600                	.insn	2, 0x9600
   1241c:	0000                	unimp
   1241e:	2000                	fld	fs0,0(s0)
   12420:	0000                	unimp
   12422:	0000                	unimp
   12424:	0000                	unimp
   12426:	2000                	fld	fs0,0(s0)
   12428:	0000                	unimp
   1242a:	0000                	unimp
   1242c:	0000                	unimp
   1242e:	0e00                	addi	s0,sp,784
   12430:	0000                	unimp
   12432:	0000                	unimp
   12434:	0000                	unimp
   12436:	0100                	addi	s0,sp,128
   12438:	0000                	unimp
   1243a:	0000                	unimp
   1243c:	0000                	unimp
   1243e:	0d00                	addi	s0,sp,656
   12440:	00f0                	addi	a2,sp,76
   12442:	0000                	unimp
   12444:	0000                	unimp
   12446:	0000                	unimp
   12448:	0010                	.insn	2, 0x0010
   1244a:	0000                	unimp
   1244c:	0000                	unimp
   1244e:	0000                	unimp
   12450:	0060                	addi	s0,sp,12
   12452:	0000                	unimp
   12454:	0000                	unimp
   12456:	0000                	unimp
   12458:	0020                	addi	s0,sp,8
   1245a:	0000                	unimp
   1245c:	0000                	unimp
   1245e:	0300                	addi	s0,sp,384
   12460:	0000                	unimp
   12462:	1f00                	addi	s0,sp,944
   12464:	0000                	unimp
   12466:	8d01                	sub	a0,a0,s0
   12468:	6370                	ld	a2,192(a4)
   1246a:	6569                	lui	a0,0x1a
   1246c:	7075                	c.lui	zero,0xffffd
   1246e:	6570                	ld	a2,200(a0)
   12470:	0072                	c.slli	zero,0x1c
   12472:	6264                	ld	s1,192(a2)
   12474:	0069                	c.nop	26
   12476:	666e6f63          	bltu	t3,t1,0x12af4
   1247a:	6769                	lui	a4,0x1a
   1247c:	7000                	ld	s0,32(s0)
   1247e:	6c656963          	bltu	a0,t1,0x12b50
   12482:	7265776f          	jal	a4,0x69ba8
   12486:	0000                	unimp
   12488:	0000                	unimp
   1248a:	0100                	addi	s0,sp,128
   1248c:	6e69                	lui	t3,0x1a
   1248e:	6574                	ld	a3,200(a0)
   12490:	7272                	ld	tp,312(sp)
   12492:	7075                	c.lui	zero,0xffffd
   12494:	2d74                	fld	fa3,216(a0)
   12496:	746e6f63          	bltu	t3,t1,0x12bf4
   1249a:	6f72                	ld	t5,280(sp)
   1249c:	6c6c                	ld	a1,216(s0)
   1249e:	7265                	lui	tp,0xffff9
   124a0:	0000                	unimp
   124a2:	0000                	unimp
   124a4:	0000                	unimp
   124a6:	0300                	addi	s0,sp,384
   124a8:	0000                	unimp
   124aa:	0400                	addi	s0,sp,512
	...
   124b4:	0000                	unimp
   124b6:	0300                	addi	s0,sp,384
   124b8:	0000                	unimp
   124ba:	0400                	addi	s0,sp,512
   124bc:	0000                	unimp
   124be:	ca00                	sw	s0,16(a2)
   124c0:	0000                	unimp
   124c2:	0100                	addi	s0,sp,128
   124c4:	0000                	unimp
   124c6:	0300                	addi	s0,sp,384
   124c8:	0000                	unimp
   124ca:	0000                	unimp
   124cc:	0000                	unimp
   124ce:	db00                	sw	s0,48(a4)
   124d0:	0000                	unimp
   124d2:	0300                	addi	s0,sp,384
   124d4:	0000                	unimp
   124d6:	0400                	addi	s0,sp,512
   124d8:	0000                	unimp
   124da:	f000                	sd	s0,32(s0)
   124dc:	0000                	unimp
   124de:	0e00                	addi	s0,sp,784
   124e0:	0000                	unimp
   124e2:	0300                	addi	s0,sp,384
   124e4:	0000                	unimp
   124e6:	0400                	addi	s0,sp,512
   124e8:	0000                	unimp
   124ea:	f600                	sd	s0,40(a2)
   124ec:	0000                	unimp
   124ee:	0e00                	addi	s0,sp,784
   124f0:	0000                	unimp
   124f2:	0200                	addi	s0,sp,256
   124f4:	0000                	unimp
   124f6:	0200                	addi	s0,sp,256
   124f8:	0000                	unimp
   124fa:	0100                	addi	s0,sp,128
   124fc:	7464                	ld	s1,232(s0)
   124fe:	6d69                	lui	s10,0x1a
   12500:	3140                	fld	fs0,160(a0)
   12502:	3030                	fld	fa2,96(s0)
   12504:	3030                	fld	fa2,96(s0)
   12506:	3030                	fld	fa2,96(s0)
   12508:	0000                	unimp
   1250a:	0000                	unimp
   1250c:	0000                	unimp
   1250e:	0300                	addi	s0,sp,384
   12510:	0000                	unimp
   12512:	0d00                	addi	s0,sp,656
   12514:	0000                	unimp
   12516:	1b00                	addi	s0,sp,432
   12518:	69666973          	csrrsi	s2,0x696,12
   1251c:	6576                	ld	a0,344(sp)
   1251e:	642c                	ld	a1,72(s0)
   12520:	6974                	ld	a3,208(a0)
   12522:	306d                	.insn	2, 0x306d
   12524:	0000                	unimp
   12526:	0000                	unimp
   12528:	0000                	unimp
   1252a:	0300                	addi	s0,sp,384
   1252c:	0000                	unimp
   1252e:	1000                	addi	s0,sp,32
   12530:	0000                	unimp
   12532:	9600                	.insn	2, 0x9600
   12534:	0000                	unimp
   12536:	0000                	unimp
   12538:	0001                	nop
	...
   12542:	0020                	addi	s0,sp,8
   12544:	0000                	unimp
   12546:	0300                	addi	s0,sp,384
   12548:	0000                	unimp
   1254a:	0400                	addi	s0,sp,512
   1254c:	0000                	unimp
   1254e:	8d01                	sub	a0,a0,s0
   12550:	656d                	lui	a0,0x1b
   12552:	006d                	c.nop	27
   12554:	0000                	unimp
   12556:	0300                	addi	s0,sp,384
   12558:	0000                	unimp
   1255a:	0400                	addi	s0,sp,512
   1255c:	0000                	unimp
   1255e:	f000                	sd	s0,32(s0)
   12560:	0000                	unimp
   12562:	0300                	addi	s0,sp,384
   12564:	0000                	unimp
   12566:	0300                	addi	s0,sp,384
   12568:	0000                	unimp
   1256a:	0400                	addi	s0,sp,512
   1256c:	0000                	unimp
   1256e:	f600                	sd	s0,40(a2)
   12570:	0000                	unimp
   12572:	0300                	addi	s0,sp,384
   12574:	0000                	unimp
   12576:	0200                	addi	s0,sp,256
   12578:	0000                	unimp
   1257a:	0100                	addi	s0,sp,128
   1257c:	6d65                	lui	s10,0x19
   1257e:	6d65                	lui	s10,0x19
   12580:	6f79726f          	jal	tp,0xaa476
   12584:	7074                	ld	a3,224(s0)
   12586:	3140                	fld	fs0,160(a0)
   12588:	3030                	fld	fa2,96(s0)
   1258a:	30303037          	lui	zero,0x30303
   1258e:	0030                	addi	a2,sp,8
   12590:	0000                	unimp
   12592:	0300                	addi	s0,sp,384
   12594:	0000                	unimp
   12596:	1300                	addi	s0,sp,416
   12598:	0000                	unimp
   1259a:	1b00                	addi	s0,sp,432
   1259c:	69666973          	csrrsi	s2,0x696,12
   125a0:	6576                	ld	a0,344(sp)
   125a2:	652c                	ld	a1,72(a0)
   125a4:	656d                	lui	a0,0x1b
   125a6:	6f6d                	lui	t5,0x1b
   125a8:	7972                	ld	s2,312(sp)
   125aa:	3070746f          	jal	s0,0x1a0b0
   125ae:	0000                	unimp
   125b0:	0000                	unimp
   125b2:	0300                	addi	s0,sp,384
   125b4:	0000                	unimp
   125b6:	1000                	addi	s0,sp,32
   125b8:	0000                	unimp
   125ba:	9600                	.insn	2, 0x9600
   125bc:	0000                	unimp
   125be:	0000                	unimp
   125c0:	0710                	addi	a2,sp,896
	...
   125ca:	0010                	.insn	2, 0x0010
   125cc:	0000                	unimp
   125ce:	0300                	addi	s0,sp,384
   125d0:	0000                	unimp
   125d2:	0800                	addi	s0,sp,16
   125d4:	0000                	unimp
   125d6:	8d01                	sub	a0,a0,s0
   125d8:	746e6f63          	bltu	t3,t1,0x12d36
   125dc:	6f72                	ld	t5,280(sp)
   125de:	006c                	addi	a1,sp,12
   125e0:	0000                	unimp
   125e2:	0200                	addi	s0,sp,256
   125e4:	0000                	unimp
   125e6:	0100                	addi	s0,sp,128
   125e8:	7265                	lui	tp,0xffff9
   125ea:	6f72                	ld	t5,280(sp)
   125ec:	2d72                	fld	fs10,280(sp)
   125ee:	6564                	ld	s1,200(a0)
   125f0:	6976                	ld	s2,344(sp)
   125f2:	31406563          	bltu	zero,s4,0x128fc
   125f6:	3034                	fld	fa3,96(s0)
   125f8:	3030                	fld	fa2,96(s0)
   125fa:	3030                	fld	fa2,96(s0)
   125fc:	0030                	addi	a2,sp,8
   125fe:	0000                	unimp
   12600:	0000                	unimp
   12602:	0300                	addi	s0,sp,384
   12604:	0000                	unimp
   12606:	0e00                	addi	s0,sp,784
   12608:	0000                	unimp
   1260a:	1b00                	addi	s0,sp,432
   1260c:	69666973          	csrrsi	s2,0x696,12
   12610:	6576                	ld	a0,344(sp)
   12612:	652c                	ld	a1,72(a0)
   12614:	7272                	ld	tp,312(sp)
   12616:	0030726f          	jal	tp,0x19e18
   1261a:	0000                	unimp
   1261c:	0000                	unimp
   1261e:	0300                	addi	s0,sp,384
   12620:	0000                	unimp
   12622:	1000                	addi	s0,sp,32
   12624:	0000                	unimp
   12626:	9600                	.insn	2, 0x9600
   12628:	0000                	unimp
   1262a:	0000                	unimp
   1262c:	0014                	.insn	2, 0x0014
   1262e:	0000                	unimp
   12630:	0000                	unimp
   12632:	0000                	unimp
   12634:	0004                	.insn	2, 0x0004
   12636:	0000                	unimp
   12638:	0000                	unimp
   1263a:	0300                	addi	s0,sp,384
   1263c:	0000                	unimp
   1263e:	0400                	addi	s0,sp,512
   12640:	0000                	unimp
   12642:	f000                	sd	s0,32(s0)
   12644:	0000                	unimp
   12646:	0600                	addi	s0,sp,768
   12648:	0000                	unimp
   1264a:	0300                	addi	s0,sp,384
   1264c:	0000                	unimp
   1264e:	0400                	addi	s0,sp,512
   12650:	0000                	unimp
   12652:	f600                	sd	s0,40(a2)
   12654:	0000                	unimp
   12656:	0600                	addi	s0,sp,768
   12658:	0000                	unimp
   1265a:	0200                	addi	s0,sp,256
   1265c:	0000                	unimp
   1265e:	0100                	addi	s0,sp,128
   12660:	7265                	lui	tp,0xffff9
   12662:	6f72                	ld	t5,280(sp)
   12664:	2d72                	fld	fs10,280(sp)
   12666:	6564                	ld	s1,200(a0)
   12668:	6976                	ld	s2,344(sp)
   1266a:	31406563          	bltu	zero,s4,0x12974
   1266e:	3038                	fld	fa4,96(s0)
   12670:	3030                	fld	fa2,96(s0)
   12672:	3030                	fld	fa2,96(s0)
   12674:	0030                	addi	a2,sp,8
   12676:	0000                	unimp
   12678:	0000                	unimp
   1267a:	0300                	addi	s0,sp,384
   1267c:	0000                	unimp
   1267e:	0e00                	addi	s0,sp,784
   12680:	0000                	unimp
   12682:	1b00                	addi	s0,sp,432
   12684:	69666973          	csrrsi	s2,0x696,12
   12688:	6576                	ld	a0,344(sp)
   1268a:	652c                	ld	a1,72(a0)
   1268c:	7272                	ld	tp,312(sp)
   1268e:	0030726f          	jal	tp,0x19e90
   12692:	0000                	unimp
   12694:	0000                	unimp
   12696:	0300                	addi	s0,sp,384
   12698:	0000                	unimp
   1269a:	1000                	addi	s0,sp,32
   1269c:	0000                	unimp
   1269e:	9600                	.insn	2, 0x9600
   126a0:	0000                	unimp
   126a2:	0000                	unimp
   126a4:	0018                	.insn	2, 0x0018
   126a6:	0000                	unimp
   126a8:	0000                	unimp
   126aa:	0000                	unimp
   126ac:	0008                	.insn	2, 0x0008
   126ae:	0000                	unimp
   126b0:	0000                	unimp
   126b2:	0300                	addi	s0,sp,384
   126b4:	0000                	unimp
   126b6:	0400                	addi	s0,sp,512
   126b8:	0000                	unimp
   126ba:	f000                	sd	s0,32(s0)
   126bc:	0000                	unimp
   126be:	0100                	addi	s0,sp,128
   126c0:	0000                	unimp
   126c2:	0300                	addi	s0,sp,384
   126c4:	0000                	unimp
   126c6:	0400                	addi	s0,sp,512
   126c8:	0000                	unimp
   126ca:	f600                	sd	s0,40(a2)
   126cc:	0000                	unimp
   126ce:	0100                	addi	s0,sp,128
   126d0:	0000                	unimp
   126d2:	0200                	addi	s0,sp,256
   126d4:	0000                	unimp
   126d6:	0100                	addi	s0,sp,128
   126d8:	7465                	lui	s0,0xffff9
   126da:	6568                	ld	a0,200(a0)
   126dc:	6e72                	ld	t3,280(sp)
   126de:	7465                	lui	s0,0xffff9
   126e0:	3140                	fld	fs0,160(a0)
   126e2:	3030                	fld	fa2,96(s0)
   126e4:	3039                	.insn	2, 0x3039
   126e6:	3030                	fld	fa2,96(s0)
   126e8:	0030                	addi	a2,sp,8
   126ea:	0000                	unimp
   126ec:	0000                	unimp
   126ee:	0300                	addi	s0,sp,384
   126f0:	0000                	unimp
   126f2:	0900                	addi	s0,sp,144
   126f4:	0000                	unimp
   126f6:	1b00                	addi	s0,sp,432
   126f8:	736e6463          	bltu	t3,s6,0x12e20
   126fc:	6d2c                	ld	a1,88(a0)
   126fe:	6361                	lui	t1,0x18
   12700:	0000                	unimp
   12702:	0000                	unimp
   12704:	0000                	unimp
   12706:	0300                	addi	s0,sp,384
   12708:	0000                	unimp
   1270a:	0400                	addi	s0,sp,512
   1270c:	0000                	unimp
   1270e:	7101                	addi	sp,sp,-512
   12710:	0000                	unimp
   12712:	0400                	addi	s0,sp,512
   12714:	0000                	unimp
   12716:	0300                	addi	s0,sp,384
   12718:	0000                	unimp
   1271a:	0400                	addi	s0,sp,512
   1271c:	0000                	unimp
   1271e:	8201                	c.srli64	a2
   12720:	0000                	unimp
   12722:	3700                	fld	fs0,40(a4)
   12724:	0000                	unimp
   12726:	0300                	addi	s0,sp,384
   12728:	0000                	unimp
   1272a:	0600                	addi	s0,sp,768
   1272c:	0000                	unimp
   1272e:	6c02                	ld	s8,0(sp)
   12730:	4241                	li	tp,16
   12732:	00454443          	fmadd.s	fs0,fa0,ft4,ft0,rmm
   12736:	0000                	unimp
   12738:	0000                	unimp
   1273a:	0300                	addi	s0,sp,384
   1273c:	0000                	unimp
   1273e:	1000                	addi	s0,sp,32
   12740:	0000                	unimp
   12742:	9600                	.insn	2, 0x9600
   12744:	0000                	unimp
   12746:	0000                	unimp
   12748:	0910                	addi	a2,sp,144
	...
   12752:	0020                	addi	s0,sp,8
   12754:	0000                	unimp
   12756:	0300                	addi	s0,sp,384
   12758:	0000                	unimp
   1275a:	0800                	addi	s0,sp,16
   1275c:	0000                	unimp
   1275e:	8d01                	sub	a0,a0,s0
   12760:	746e6f63          	bltu	t3,t1,0x12ebe
   12764:	6f72                	ld	t5,280(sp)
   12766:	006c                	addi	a1,sp,12
   12768:	0000                	unimp
   1276a:	0200                	addi	s0,sp,256
   1276c:	0000                	unimp
   1276e:	0100                	addi	s0,sp,128
   12770:	6f697067          	.insn	4, 0x6f697067
   12774:	3140                	fld	fs0,160(a0)
   12776:	3030                	fld	fa2,96(s0)
   12778:	3036                	fld	ft0,360(sp)
   1277a:	3030                	fld	fa2,96(s0)
   1277c:	0030                	addi	a2,sp,8
   1277e:	0000                	unimp
   12780:	0000                	unimp
   12782:	0300                	addi	s0,sp,384
   12784:	0000                	unimp
   12786:	0400                	addi	s0,sp,512
   12788:	0000                	unimp
   1278a:	7802                	ld	a6,32(sp)
   1278c:	0000                	unimp
   1278e:	0200                	addi	s0,sp,256
   12790:	0000                	unimp
   12792:	0300                	addi	s0,sp,384
   12794:	0000                	unimp
   12796:	0400                	addi	s0,sp,512
   12798:	0000                	unimp
   1279a:	ca00                	sw	s0,16(a2)
   1279c:	0000                	unimp
   1279e:	0200                	addi	s0,sp,256
   127a0:	0000                	unimp
   127a2:	0300                	addi	s0,sp,384
   127a4:	0000                	unimp
   127a6:	1a00                	addi	s0,sp,304
   127a8:	0000                	unimp
   127aa:	1b00                	addi	s0,sp,432
   127ac:	69666973          	csrrsi	s2,0x696,12
   127b0:	6576                	ld	a0,344(sp)
   127b2:	672c                	ld	a1,72(a4)
   127b4:	6970                	ld	a2,208(a0)
   127b6:	7300306f          	j	0x15ee6
   127ba:	6669                	lui	a2,0x1a
   127bc:	7669                	lui	a2,0xffffa
   127be:	2c65                	addiw	s8,s8,25 # 0x19019
   127c0:	6f697067          	.insn	4, 0x6f697067
   127c4:	0031                	c.nop	12
   127c6:	0000                	unimp
   127c8:	0000                	unimp
   127ca:	0300                	addi	s0,sp,384
   127cc:	0000                	unimp
   127ce:	0000                	unimp
   127d0:	0000                	unimp
   127d2:	8402                	jr	s0
   127d4:	0000                	unimp
   127d6:	0300                	addi	s0,sp,384
   127d8:	0000                	unimp
   127da:	0000                	unimp
   127dc:	0000                	unimp
   127de:	db00                	sw	s0,48(a4)
   127e0:	0000                	unimp
   127e2:	0300                	addi	s0,sp,384
   127e4:	0000                	unimp
   127e6:	0400                	addi	s0,sp,512
   127e8:	0000                	unimp
   127ea:	7101                	addi	sp,sp,-512
   127ec:	0000                	unimp
   127ee:	0400                	addi	s0,sp,512
   127f0:	0000                	unimp
   127f2:	0300                	addi	s0,sp,384
   127f4:	0000                	unimp
   127f6:	4000                	lw	s0,0(s0)
   127f8:	0000                	unimp
   127fa:	8201                	c.srli64	a2
   127fc:	0000                	unimp
   127fe:	1700                	addi	s0,sp,928
   12800:	0000                	unimp
   12802:	1800                	addi	s0,sp,48
   12804:	0000                	unimp
   12806:	1900                	addi	s0,sp,176
   12808:	0000                	unimp
   1280a:	1a00                	addi	s0,sp,304
   1280c:	0000                	unimp
   1280e:	1b00                	addi	s0,sp,432
   12810:	0000                	unimp
   12812:	1c00                	addi	s0,sp,560
   12814:	0000                	unimp
   12816:	1d00                	addi	s0,sp,688
   12818:	0000                	unimp
   1281a:	1e00                	addi	s0,sp,816
   1281c:	0000                	unimp
   1281e:	1f00                	addi	s0,sp,944
   12820:	0000                	unimp
   12822:	2000                	fld	fs0,0(s0)
   12824:	0000                	unimp
   12826:	2100                	fld	fs0,0(a0)
   12828:	0000                	unimp
   1282a:	2200                	fld	fs0,0(a2)
   1282c:	0000                	unimp
   1282e:	2300                	fld	fs0,0(a4)
   12830:	0000                	unimp
   12832:	2400                	fld	fs0,8(s0)
   12834:	0000                	unimp
   12836:	2500                	fld	fs0,8(a0)
   12838:	0000                	unimp
   1283a:	2600                	fld	fs0,8(a2)
   1283c:	0000                	unimp
   1283e:	0300                	addi	s0,sp,384
   12840:	0000                	unimp
   12842:	1000                	addi	s0,sp,32
   12844:	0000                	unimp
   12846:	9600                	.insn	2, 0x9600
   12848:	0000                	unimp
   1284a:	0000                	unimp
   1284c:	0610                	addi	a2,sp,768
	...
   12856:	0010                	.insn	2, 0x0010
   12858:	0000                	unimp
   1285a:	0300                	addi	s0,sp,384
   1285c:	0000                	unimp
   1285e:	0800                	addi	s0,sp,16
   12860:	0000                	unimp
   12862:	8d01                	sub	a0,a0,s0
   12864:	746e6f63          	bltu	t3,t1,0x12fc2
   12868:	6f72                	ld	t5,280(sp)
   1286a:	006c                	addi	a1,sp,12
   1286c:	0000                	unimp
   1286e:	0200                	addi	s0,sp,256
   12870:	0000                	unimp
   12872:	0100                	addi	s0,sp,128
   12874:	3269                	addiw	tp,tp,-6 # 0xffffffffffff8ffa
   12876:	30314063          	blt	sp,gp,0x12b76
   1287a:	3330                	fld	fa2,96(a4)
   1287c:	3030                	fld	fa2,96(s0)
   1287e:	3030                	fld	fa2,96(s0)
   12880:	0000                	unimp
   12882:	0000                	unimp
   12884:	0000                	unimp
   12886:	0300                	addi	s0,sp,384
   12888:	0000                	unimp
   1288a:	0c00                	addi	s0,sp,528
   1288c:	0000                	unimp
   1288e:	1b00                	addi	s0,sp,432
   12890:	69666973          	csrrsi	s2,0x696,12
   12894:	6576                	ld	a0,344(sp)
   12896:	692c                	ld	a1,80(a0)
   12898:	6332                	ld	t1,264(sp)
   1289a:	0030                	addi	a2,sp,8
   1289c:	0000                	unimp
   1289e:	0300                	addi	s0,sp,384
   128a0:	0000                	unimp
   128a2:	0400                	addi	s0,sp,512
   128a4:	0000                	unimp
   128a6:	7101                	addi	sp,sp,-512
   128a8:	0000                	unimp
   128aa:	0400                	addi	s0,sp,512
   128ac:	0000                	unimp
   128ae:	0300                	addi	s0,sp,384
   128b0:	0000                	unimp
   128b2:	0400                	addi	s0,sp,512
   128b4:	0000                	unimp
   128b6:	8201                	c.srli64	a2
   128b8:	0000                	unimp
   128ba:	3400                	fld	fs0,40(s0)
   128bc:	0000                	unimp
   128be:	0300                	addi	s0,sp,384
   128c0:	0000                	unimp
   128c2:	1000                	addi	s0,sp,32
   128c4:	0000                	unimp
   128c6:	9600                	.insn	2, 0x9600
   128c8:	0000                	unimp
   128ca:	0000                	unimp
   128cc:	0310                	addi	a2,sp,384
	...
   128d6:	0010                	.insn	2, 0x0010
   128d8:	0000                	unimp
   128da:	0300                	addi	s0,sp,384
   128dc:	0000                	unimp
   128de:	0800                	addi	s0,sp,16
   128e0:	0000                	unimp
   128e2:	8d01                	sub	a0,a0,s0
   128e4:	746e6f63          	bltu	t3,t1,0x13042
   128e8:	6f72                	ld	t5,280(sp)
   128ea:	006c                	addi	a1,sp,12
   128ec:	0000                	unimp
   128ee:	0200                	addi	s0,sp,256
   128f0:	0000                	unimp
   128f2:	0100                	addi	s0,sp,128
   128f4:	3269                	addiw	tp,tp,-6 # 0xfffffffffffffffa
   128f6:	30314063          	blt	sp,gp,0x12bf6
   128fa:	3330                	fld	fa2,96(a4)
   128fc:	3031                	.insn	2, 0x3031
   128fe:	3030                	fld	fa2,96(s0)
   12900:	0000                	unimp
   12902:	0000                	unimp
   12904:	0000                	unimp
   12906:	0300                	addi	s0,sp,384
   12908:	0000                	unimp
   1290a:	0c00                	addi	s0,sp,528
   1290c:	0000                	unimp
   1290e:	1b00                	addi	s0,sp,432
   12910:	69666973          	csrrsi	s2,0x696,12
   12914:	6576                	ld	a0,344(sp)
   12916:	692c                	ld	a1,80(a0)
   12918:	6332                	ld	t1,264(sp)
   1291a:	0030                	addi	a2,sp,8
   1291c:	0000                	unimp
   1291e:	0300                	addi	s0,sp,384
   12920:	0000                	unimp
   12922:	0400                	addi	s0,sp,512
   12924:	0000                	unimp
   12926:	7101                	addi	sp,sp,-512
   12928:	0000                	unimp
   1292a:	0400                	addi	s0,sp,512
   1292c:	0000                	unimp
   1292e:	0300                	addi	s0,sp,384
   12930:	0000                	unimp
   12932:	0400                	addi	s0,sp,512
   12934:	0000                	unimp
   12936:	8201                	c.srli64	a2
   12938:	0000                	unimp
   1293a:	3500                	fld	fs0,40(a0)
   1293c:	0000                	unimp
   1293e:	0300                	addi	s0,sp,384
   12940:	0000                	unimp
   12942:	1000                	addi	s0,sp,32
   12944:	0000                	unimp
   12946:	9600                	.insn	2, 0x9600
   12948:	0000                	unimp
   1294a:	0000                	unimp
   1294c:	0310                	addi	a2,sp,384
   1294e:	0010                	.insn	2, 0x0010
   12950:	0000                	unimp
   12952:	0000                	unimp
   12954:	0000                	unimp
   12956:	0010                	.insn	2, 0x0010
   12958:	0000                	unimp
   1295a:	0300                	addi	s0,sp,384
   1295c:	0000                	unimp
   1295e:	0800                	addi	s0,sp,16
   12960:	0000                	unimp
   12962:	8d01                	sub	a0,a0,s0
   12964:	746e6f63          	bltu	t3,t1,0x130c2
   12968:	6f72                	ld	t5,280(sp)
   1296a:	006c                	addi	a1,sp,12
   1296c:	0000                	unimp
   1296e:	0200                	addi	s0,sp,256
   12970:	0000                	unimp
   12972:	0100                	addi	s0,sp,128
   12974:	6e69                	lui	t3,0x1a
   12976:	6574                	ld	a3,200(a0)
   12978:	7272                	ld	tp,312(sp)
   1297a:	7075                	c.lui	zero,0xffffd
   1297c:	2d74                	fld	fa3,216(a0)
   1297e:	746e6f63          	bltu	t3,t1,0x130dc
   12982:	6f72                	ld	t5,280(sp)
   12984:	6c6c                	ld	a1,216(s0)
   12986:	7265                	lui	tp,0xffff9
   12988:	6340                	ld	s0,128(a4)
   1298a:	3030                	fld	fa2,96(s0)
   1298c:	3030                	fld	fa2,96(s0)
   1298e:	3030                	fld	fa2,96(s0)
   12990:	0000                	unimp
   12992:	0000                	unimp
   12994:	0000                	unimp
   12996:	0300                	addi	s0,sp,384
   12998:	0000                	unimp
   1299a:	0400                	addi	s0,sp,512
   1299c:	0000                	unimp
   1299e:	ca00                	sw	s0,16(a2)
   129a0:	0000                	unimp
   129a2:	0100                	addi	s0,sp,128
   129a4:	0000                	unimp
   129a6:	0300                	addi	s0,sp,384
   129a8:	0000                	unimp
   129aa:	0c00                	addi	s0,sp,528
   129ac:	0000                	unimp
   129ae:	1b00                	addi	s0,sp,432
   129b0:	6972                	ld	s2,280(sp)
   129b2:	2c766373          	csrrsi	t1,0x2c7,12
   129b6:	6c70                	ld	a2,216(s0)
   129b8:	6369                	lui	t1,0x1a
   129ba:	0030                	addi	a2,sp,8
   129bc:	0000                	unimp
   129be:	0300                	addi	s0,sp,384
   129c0:	0000                	unimp
   129c2:	0000                	unimp
   129c4:	0000                	unimp
   129c6:	db00                	sw	s0,48(a4)
   129c8:	0000                	unimp
   129ca:	0300                	addi	s0,sp,384
   129cc:	0000                	unimp
   129ce:	4800                	lw	s0,16(s0)
   129d0:	0000                	unimp
   129d2:	da01                	beqz	a2,0x128e2
   129d4:	0000                	unimp
   129d6:	0900                	addi	s0,sp,144
   129d8:	0000                	unimp
   129da:	0b00                	addi	s0,sp,400
   129dc:	0000                	unimp
   129de:	0a00                	addi	s0,sp,272
   129e0:	0000                	unimp
   129e2:	0b00                	addi	s0,sp,400
   129e4:	0000                	unimp
   129e6:	0a00                	addi	s0,sp,272
   129e8:	0000                	unimp
   129ea:	0900                	addi	s0,sp,144
   129ec:	0000                	unimp
   129ee:	0b00                	addi	s0,sp,400
   129f0:	0000                	unimp
   129f2:	0b00                	addi	s0,sp,400
   129f4:	0000                	unimp
   129f6:	0b00                	addi	s0,sp,400
   129f8:	0000                	unimp
   129fa:	0900                	addi	s0,sp,144
   129fc:	0000                	unimp
   129fe:	0c00                	addi	s0,sp,528
   12a00:	0000                	unimp
   12a02:	0b00                	addi	s0,sp,400
   12a04:	0000                	unimp
   12a06:	0c00                	addi	s0,sp,528
   12a08:	0000                	unimp
   12a0a:	0900                	addi	s0,sp,144
   12a0c:	0000                	unimp
   12a0e:	0d00                	addi	s0,sp,656
   12a10:	0000                	unimp
   12a12:	0b00                	addi	s0,sp,400
   12a14:	0000                	unimp
   12a16:	0d00                	addi	s0,sp,656
   12a18:	0000                	unimp
   12a1a:	0900                	addi	s0,sp,144
   12a1c:	0000                	unimp
   12a1e:	0300                	addi	s0,sp,384
   12a20:	0000                	unimp
   12a22:	1000                	addi	s0,sp,32
   12a24:	0000                	unimp
   12a26:	9600                	.insn	2, 0x9600
   12a28:	0000                	unimp
   12a2a:	0000                	unimp
   12a2c:	000c                	.insn	2, 0x000c
   12a2e:	0000                	unimp
   12a30:	0000                	unimp
   12a32:	0000                	unimp
   12a34:	0004                	.insn	2, 0x0004
   12a36:	0000                	unimp
   12a38:	0000                	unimp
   12a3a:	0300                	addi	s0,sp,384
   12a3c:	0000                	unimp
   12a3e:	0800                	addi	s0,sp,16
   12a40:	0000                	unimp
   12a42:	8d01                	sub	a0,a0,s0
   12a44:	746e6f63          	bltu	t3,t1,0x131a2
   12a48:	6f72                	ld	t5,280(sp)
   12a4a:	006c                	addi	a1,sp,12
   12a4c:	0000                	unimp
   12a4e:	0300                	addi	s0,sp,384
   12a50:	0000                	unimp
   12a52:	0400                	addi	s0,sp,512
   12a54:	0000                	unimp
   12a56:	9402                	jalr	s0
   12a58:	0000                	unimp
   12a5a:	0700                	addi	s0,sp,896
   12a5c:	0000                	unimp
   12a5e:	0300                	addi	s0,sp,384
   12a60:	0000                	unimp
   12a62:	0400                	addi	s0,sp,512
   12a64:	0000                	unimp
   12a66:	a702                	fsd	ft0,392(sp)
   12a68:	0000                	unimp
   12a6a:	4500                	lw	s0,8(a0)
   12a6c:	0000                	unimp
   12a6e:	0300                	addi	s0,sp,384
   12a70:	0000                	unimp
   12a72:	0400                	addi	s0,sp,512
   12a74:	0000                	unimp
   12a76:	f000                	sd	s0,32(s0)
   12a78:	0000                	unimp
   12a7a:	0400                	addi	s0,sp,512
   12a7c:	0000                	unimp
   12a7e:	0300                	addi	s0,sp,384
   12a80:	0000                	unimp
   12a82:	0400                	addi	s0,sp,512
   12a84:	0000                	unimp
   12a86:	f600                	sd	s0,40(a2)
   12a88:	0000                	unimp
   12a8a:	0400                	addi	s0,sp,512
   12a8c:	0000                	unimp
   12a8e:	0200                	addi	s0,sp,256
   12a90:	0000                	unimp
   12a92:	0100                	addi	s0,sp,128
   12a94:	656d                	lui	a0,0x1b
   12a96:	6f6d                	lui	t5,0x1b
   12a98:	7972                	ld	s2,312(sp)
   12a9a:	632d                	lui	t1,0xb
   12a9c:	72746e6f          	jal	t3,0x599c2
   12aa0:	656c6c6f          	jal	s8,0xd90f6
   12aa4:	4072                	.insn	2, 0x4072
   12aa6:	3031                	.insn	2, 0x3031
   12aa8:	6230                	ld	a2,64(a2)
   12aaa:	3030                	fld	fa2,96(s0)
   12aac:	3030                	fld	fa2,96(s0)
   12aae:	0000                	unimp
   12ab0:	0000                	unimp
   12ab2:	0300                	addi	s0,sp,384
   12ab4:	0000                	unimp
   12ab6:	1000                	addi	s0,sp,32
   12ab8:	0000                	unimp
   12aba:	1b00                	addi	s0,sp,432
   12abc:	69666973          	csrrsi	s2,0x696,12
   12ac0:	6576                	ld	a0,344(sp)
   12ac2:	752c                	ld	a1,104(a0)
   12ac4:	3078                	fld	fa4,224(s0)
   12ac6:	6430                	ld	a2,72(s0)
   12ac8:	7264                	ld	s1,224(a2)
   12aca:	0030                	addi	a2,sp,8
   12acc:	0000                	unimp
   12ace:	0300                	addi	s0,sp,384
   12ad0:	0000                	unimp
   12ad2:	0400                	addi	s0,sp,512
   12ad4:	0000                	unimp
   12ad6:	7101                	addi	sp,sp,-512
   12ad8:	0000                	unimp
   12ada:	0400                	addi	s0,sp,512
   12adc:	0000                	unimp
   12ade:	0300                	addi	s0,sp,384
   12ae0:	0000                	unimp
   12ae2:	0400                	addi	s0,sp,512
   12ae4:	0000                	unimp
   12ae6:	8201                	c.srli64	a2
   12ae8:	0000                	unimp
   12aea:	3600                	fld	fs0,40(a2)
   12aec:	0000                	unimp
   12aee:	0300                	addi	s0,sp,384
   12af0:	0000                	unimp
   12af2:	1000                	addi	s0,sp,32
   12af4:	0000                	unimp
   12af6:	9600                	.insn	2, 0x9600
   12af8:	0000                	unimp
   12afa:	0000                	unimp
   12afc:	0b10                	addi	a2,sp,400
	...
   12b06:	0040                	addi	s0,sp,4
   12b08:	0000                	unimp
   12b0a:	0300                	addi	s0,sp,384
   12b0c:	0000                	unimp
   12b0e:	0800                	addi	s0,sp,16
   12b10:	0000                	unimp
   12b12:	8d01                	sub	a0,a0,s0
   12b14:	746e6f63          	bltu	t3,t1,0x13272
   12b18:	6f72                	ld	t5,280(sp)
   12b1a:	006c                	addi	a1,sp,12
   12b1c:	0000                	unimp
   12b1e:	0200                	addi	s0,sp,256
   12b20:	0000                	unimp
   12b22:	0100                	addi	s0,sp,128
   12b24:	736d                	lui	t1,0xffffb
   12b26:	4069                	c.li	zero,26
   12b28:	3032                	fld	ft0,296(sp)
   12b2a:	3032                	fld	ft0,296(sp)
   12b2c:	3030                	fld	fa2,96(s0)
   12b2e:	0030                	addi	a2,sp,8
   12b30:	0000                	unimp
   12b32:	0300                	addi	s0,sp,384
   12b34:	0000                	unimp
   12b36:	0c00                	addi	s0,sp,528
   12b38:	0000                	unimp
   12b3a:	1b00                	addi	s0,sp,432
   12b3c:	69666973          	csrrsi	s2,0x696,12
   12b40:	6576                	ld	a0,344(sp)
   12b42:	6d2c                	ld	a1,88(a0)
   12b44:	00306973          	csrrsi	s2,fcsr,0
   12b48:	0000                	unimp
   12b4a:	0300                	addi	s0,sp,384
   12b4c:	0000                	unimp
   12b4e:	0400                	addi	s0,sp,512
   12b50:	0000                	unimp
   12b52:	7101                	addi	sp,sp,-512
   12b54:	0000                	unimp
   12b56:	0400                	addi	s0,sp,512
   12b58:	0000                	unimp
   12b5a:	0300                	addi	s0,sp,384
   12b5c:	0000                	unimp
   12b5e:	2800                	fld	fs0,16(s0)
   12b60:	0000                	unimp
   12b62:	8201                	c.srli64	a2
   12b64:	0000                	unimp
   12b66:	0100                	addi	s0,sp,128
   12b68:	0000                	unimp
   12b6a:	0200                	addi	s0,sp,256
   12b6c:	0000                	unimp
   12b6e:	0300                	addi	s0,sp,384
   12b70:	0000                	unimp
   12b72:	0400                	addi	s0,sp,512
   12b74:	0000                	unimp
   12b76:	0500                	addi	s0,sp,640
   12b78:	0000                	unimp
   12b7a:	0600                	addi	s0,sp,768
   12b7c:	0000                	unimp
   12b7e:	0700                	addi	s0,sp,896
   12b80:	0000                	unimp
   12b82:	0800                	addi	s0,sp,16
   12b84:	0000                	unimp
   12b86:	0900                	addi	s0,sp,144
   12b88:	0000                	unimp
   12b8a:	0a00                	addi	s0,sp,272
   12b8c:	0000                	unimp
   12b8e:	0300                	addi	s0,sp,384
   12b90:	0000                	unimp
   12b92:	1000                	addi	s0,sp,32
   12b94:	0000                	unimp
   12b96:	9600                	.insn	2, 0x9600
   12b98:	0000                	unimp
   12b9a:	0000                	unimp
   12b9c:	0202                	c.slli64	tp
	...
   12ba6:	0010                	.insn	2, 0x0010
   12ba8:	0000                	unimp
   12baa:	0300                	addi	s0,sp,384
   12bac:	0000                	unimp
   12bae:	0800                	addi	s0,sp,16
   12bb0:	0000                	unimp
   12bb2:	8d01                	sub	a0,a0,s0
   12bb4:	746e6f63          	bltu	t3,t1,0x13312
   12bb8:	6f72                	ld	t5,280(sp)
   12bba:	006c                	addi	a1,sp,12
   12bbc:	0000                	unimp
   12bbe:	0200                	addi	s0,sp,256
   12bc0:	0000                	unimp
   12bc2:	0100                	addi	s0,sp,128
   12bc4:	6564726f          	jal	tp,0x5a21a
   12bc8:	2d72                	fld	fs10,280(sp)
   12bca:	656c676f          	jal	a4,0xd9220
   12bce:	4072                	.insn	2, 0x4072
   12bd0:	3031                	.insn	2, 0x3031
   12bd2:	6530                	ld	a2,72(a0)
   12bd4:	3030                	fld	fa2,96(s0)
   12bd6:	3030                	fld	fa2,96(s0)
   12bd8:	0000                	unimp
   12bda:	0000                	unimp
   12bdc:	0000                	unimp
   12bde:	0300                	addi	s0,sp,384
   12be0:	0000                	unimp
   12be2:	1400                	addi	s0,sp,544
   12be4:	0000                	unimp
   12be6:	1b00                	addi	s0,sp,432
   12be8:	69666973          	csrrsi	s2,0x696,12
   12bec:	6576                	ld	a0,344(sp)
   12bee:	6f2c                	ld	a1,88(a4)
   12bf0:	6472                	ld	s0,280(sp)
   12bf2:	7265                	lui	tp,0xffff9
   12bf4:	6f2d                	lui	t5,0xb
   12bf6:	72656c67          	.insn	4, 0x72656c67
   12bfa:	0030                	addi	a2,sp,8
   12bfc:	0000                	unimp
   12bfe:	0300                	addi	s0,sp,384
   12c00:	0000                	unimp
   12c02:	1000                	addi	s0,sp,32
   12c04:	0000                	unimp
   12c06:	9600                	.insn	2, 0x9600
   12c08:	0000                	unimp
   12c0a:	0000                	unimp
   12c0c:	0e10                	addi	a2,sp,784
	...
   12c16:	0010                	.insn	2, 0x0010
   12c18:	0000                	unimp
   12c1a:	0300                	addi	s0,sp,384
   12c1c:	0000                	unimp
   12c1e:	0800                	addi	s0,sp,16
   12c20:	0000                	unimp
   12c22:	8d01                	sub	a0,a0,s0
   12c24:	746e6f63          	bltu	t3,t1,0x13382
   12c28:	6f72                	ld	t5,280(sp)
   12c2a:	006c                	addi	a1,sp,12
   12c2c:	0000                	unimp
   12c2e:	0200                	addi	s0,sp,256
   12c30:	0000                	unimp
   12c32:	0100                	addi	s0,sp,128
   12c34:	6370                	ld	a2,192(a4)
   12c36:	6569                	lui	a0,0x1a
   12c38:	6d2d                	lui	s10,0xb
   12c3a:	40746d67          	.insn	4, 0x40746d67
   12c3e:	3031                	.insn	2, 0x3031
   12c40:	6430                	ld	a2,72(s0)
   12c42:	3030                	fld	fa2,96(s0)
   12c44:	3030                	fld	fa2,96(s0)
   12c46:	0000                	unimp
   12c48:	0000                	unimp
   12c4a:	0300                	addi	s0,sp,384
   12c4c:	0000                	unimp
   12c4e:	1100                	addi	s0,sp,160
   12c50:	0000                	unimp
   12c52:	1b00                	addi	s0,sp,432
   12c54:	69666973          	csrrsi	s2,0x696,12
   12c58:	6576                	ld	a0,344(sp)
   12c5a:	702c                	ld	a1,96(s0)
   12c5c:	6d656963          	bltu	a0,s6,0x1332e
   12c60:	30746d67          	.insn	4, 0x30746d67
   12c64:	0000                	unimp
   12c66:	0000                	unimp
   12c68:	0000                	unimp
   12c6a:	0300                	addi	s0,sp,384
   12c6c:	0000                	unimp
   12c6e:	1000                	addi	s0,sp,32
   12c70:	0000                	unimp
   12c72:	9600                	.insn	2, 0x9600
   12c74:	0000                	unimp
   12c76:	0000                	unimp
   12c78:	0d10                	addi	a2,sp,656
	...
   12c82:	0010                	.insn	2, 0x0010
   12c84:	0000                	unimp
   12c86:	0300                	addi	s0,sp,384
   12c88:	0000                	unimp
   12c8a:	0800                	addi	s0,sp,16
   12c8c:	0000                	unimp
   12c8e:	8d01                	sub	a0,a0,s0
   12c90:	746e6f63          	bltu	t3,t1,0x133ee
   12c94:	6f72                	ld	t5,280(sp)
   12c96:	006c                	addi	a1,sp,12
   12c98:	0000                	unimp
   12c9a:	0200                	addi	s0,sp,256
   12c9c:	0000                	unimp
   12c9e:	0100                	addi	s0,sp,128
   12ca0:	6870                	ld	a2,208(s0)
   12ca2:	7379                	lui	t1,0xffffe
   12ca4:	6369                	lui	t1,0x1a
   12ca6:	6c61                	lui	s8,0x18
   12ca8:	662d                	lui	a2,0xb
   12caa:	6c69                	lui	s8,0x1a
   12cac:	6574                	ld	a3,200(a0)
   12cae:	4072                	.insn	2, 0x4072
   12cb0:	3031                	.insn	2, 0x3031
   12cb2:	6230                	ld	a2,64(a2)
   12cb4:	3038                	fld	fa4,96(s0)
   12cb6:	3030                	fld	fa2,96(s0)
   12cb8:	0000                	unimp
   12cba:	0000                	unimp
   12cbc:	0000                	unimp
   12cbe:	0300                	addi	s0,sp,384
   12cc0:	0000                	unimp
   12cc2:	1a00                	addi	s0,sp,304
   12cc4:	0000                	unimp
   12cc6:	1b00                	addi	s0,sp,432
   12cc8:	69666973          	csrrsi	s2,0x696,12
   12ccc:	6576                	ld	a0,344(sp)
   12cce:	702c                	ld	a1,96(s0)
   12cd0:	7968                	ld	a0,240(a0)
   12cd2:	61636973          	csrrsi	s2,0x616,6
   12cd6:	2d6c                	fld	fa1,216(a0)
   12cd8:	6966                	ld	s2,88(sp)
   12cda:	746c                	ld	a1,232(s0)
   12cdc:	7265                	lui	tp,0xffff9
   12cde:	762d                	lui	a2,0xfffeb
   12ce0:	0030                	addi	a2,sp,8
   12ce2:	0000                	unimp
   12ce4:	0000                	unimp
   12ce6:	0300                	addi	s0,sp,384
   12ce8:	0000                	unimp
   12cea:	1000                	addi	s0,sp,32
   12cec:	0000                	unimp
   12cee:	9600                	.insn	2, 0x9600
   12cf0:	0000                	unimp
   12cf2:	0000                	unimp
   12cf4:	0b10                	addi	a2,sp,400
   12cf6:	0080                	addi	s0,sp,64
   12cf8:	0000                	unimp
   12cfa:	0000                	unimp
   12cfc:	0000                	unimp
   12cfe:	0010                	.insn	2, 0x0010
   12d00:	0000                	unimp
   12d02:	0300                	addi	s0,sp,384
   12d04:	0000                	unimp
   12d06:	0800                	addi	s0,sp,16
   12d08:	0000                	unimp
   12d0a:	8d01                	sub	a0,a0,s0
   12d0c:	746e6f63          	bltu	t3,t1,0x1346a
   12d10:	6f72                	ld	t5,280(sp)
   12d12:	006c                	addi	a1,sp,12
   12d14:	0000                	unimp
   12d16:	0200                	addi	s0,sp,256
   12d18:	0000                	unimp
   12d1a:	0100                	addi	s0,sp,128
   12d1c:	6970                	ld	a2,208(a0)
   12d1e:	636e                	ld	t1,216(sp)
   12d20:	7274                	ld	a3,224(a2)
   12d22:	406c                	lw	a1,68(s0)
   12d24:	3031                	.insn	2, 0x3031
   12d26:	3830                	fld	fa2,112(s0)
   12d28:	3030                	fld	fa2,96(s0)
   12d2a:	3030                	fld	fa2,96(s0)
   12d2c:	0000                	unimp
   12d2e:	0000                	unimp
   12d30:	0000                	unimp
   12d32:	0300                	addi	s0,sp,384
   12d34:	0000                	unimp
   12d36:	1000                	addi	s0,sp,32
   12d38:	0000                	unimp
   12d3a:	1b00                	addi	s0,sp,432
   12d3c:	69666973          	csrrsi	s2,0x696,12
   12d40:	6576                	ld	a0,344(sp)
   12d42:	702c                	ld	a1,96(s0)
   12d44:	6e69                	lui	t3,0x1a
   12d46:	6c727463          	bgeu	tp,t2,0x1340e
   12d4a:	0030                	addi	a2,sp,8
   12d4c:	0000                	unimp
   12d4e:	0300                	addi	s0,sp,384
   12d50:	0000                	unimp
   12d52:	1000                	addi	s0,sp,32
   12d54:	0000                	unimp
   12d56:	9600                	.insn	2, 0x9600
   12d58:	0000                	unimp
   12d5a:	0000                	unimp
   12d5c:	0810                	addi	a2,sp,16
	...
   12d66:	0010                	.insn	2, 0x0010
   12d68:	0000                	unimp
   12d6a:	0300                	addi	s0,sp,384
   12d6c:	0000                	unimp
   12d6e:	0800                	addi	s0,sp,16
   12d70:	0000                	unimp
   12d72:	8d01                	sub	a0,a0,s0
   12d74:	746e6f63          	bltu	t3,t1,0x134d2
   12d78:	6f72                	ld	t5,280(sp)
   12d7a:	006c                	addi	a1,sp,12
   12d7c:	0000                	unimp
   12d7e:	0200                	addi	s0,sp,256
   12d80:	0000                	unimp
   12d82:	0100                	addi	s0,sp,128
   12d84:	7270                	ld	a2,224(a2)
   12d86:	31406963          	bltu	zero,s4,0x13098
   12d8a:	3030                	fld	fa2,96(s0)
   12d8c:	3030                	fld	fa2,96(s0)
   12d8e:	3030                	fld	fa2,96(s0)
   12d90:	0030                	addi	a2,sp,8
   12d92:	0000                	unimp
   12d94:	0000                	unimp
   12d96:	0300                	addi	s0,sp,384
   12d98:	0000                	unimp
   12d9a:	1100                	addi	s0,sp,160
   12d9c:	0000                	unimp
   12d9e:	1b00                	addi	s0,sp,432
   12da0:	69666973          	csrrsi	s2,0x696,12
   12da4:	6576                	ld	a0,344(sp)
   12da6:	752c                	ld	a1,104(a0)
   12da8:	3078                	fld	fa4,224(s0)
   12daa:	7030                	ld	a2,96(s0)
   12dac:	6372                	ld	t1,280(sp)
   12dae:	3069                	.insn	2, 0x3069
   12db0:	0000                	unimp
   12db2:	0000                	unimp
   12db4:	0000                	unimp
   12db6:	0300                	addi	s0,sp,384
   12db8:	0000                	unimp
   12dba:	1000                	addi	s0,sp,32
   12dbc:	0000                	unimp
   12dbe:	9600                	.insn	2, 0x9600
   12dc0:	0000                	unimp
   12dc2:	0000                	unimp
   12dc4:	0010                	.insn	2, 0x0010
	...
   12dce:	0010                	.insn	2, 0x0010
   12dd0:	0000                	unimp
   12dd2:	0300                	addi	s0,sp,384
   12dd4:	0000                	unimp
   12dd6:	0800                	addi	s0,sp,16
   12dd8:	0000                	unimp
   12dda:	8d01                	sub	a0,a0,s0
   12ddc:	746e6f63          	bltu	t3,t1,0x1353a
   12de0:	6f72                	ld	t5,280(sp)
   12de2:	006c                	addi	a1,sp,12
   12de4:	0000                	unimp
   12de6:	0200                	addi	s0,sp,256
   12de8:	0000                	unimp
   12dea:	0100                	addi	s0,sp,128
   12dec:	7770                	ld	a2,232(a4)
   12dee:	406d                	c.li	zero,27
   12df0:	3031                	.insn	2, 0x3031
   12df2:	3230                	fld	fa2,96(a2)
   12df4:	3030                	fld	fa2,96(s0)
   12df6:	3030                	fld	fa2,96(s0)
   12df8:	0000                	unimp
   12dfa:	0000                	unimp
   12dfc:	0000                	unimp
   12dfe:	0300                	addi	s0,sp,384
   12e00:	0000                	unimp
   12e02:	0c00                	addi	s0,sp,528
   12e04:	0000                	unimp
   12e06:	1b00                	addi	s0,sp,432
   12e08:	69666973          	csrrsi	s2,0x696,12
   12e0c:	6576                	ld	a0,344(sp)
   12e0e:	702c                	ld	a1,96(s0)
   12e10:	00306d77          	.insn	4, 0x00306d77
   12e14:	0000                	unimp
   12e16:	0300                	addi	s0,sp,384
   12e18:	0000                	unimp
   12e1a:	0400                	addi	s0,sp,512
   12e1c:	0000                	unimp
   12e1e:	7101                	addi	sp,sp,-512
   12e20:	0000                	unimp
   12e22:	0400                	addi	s0,sp,512
   12e24:	0000                	unimp
   12e26:	0300                	addi	s0,sp,384
   12e28:	0000                	unimp
   12e2a:	1000                	addi	s0,sp,32
   12e2c:	0000                	unimp
   12e2e:	8201                	c.srli64	a2
   12e30:	0000                	unimp
   12e32:	2c00                	fld	fs0,24(s0)
   12e34:	0000                	unimp
   12e36:	2d00                	fld	fs0,24(a0)
   12e38:	0000                	unimp
   12e3a:	2e00                	fld	fs0,24(a2)
   12e3c:	0000                	unimp
   12e3e:	2f00                	fld	fs0,24(a4)
   12e40:	0000                	unimp
   12e42:	0300                	addi	s0,sp,384
   12e44:	0000                	unimp
   12e46:	1000                	addi	s0,sp,32
   12e48:	0000                	unimp
   12e4a:	9600                	.insn	2, 0x9600
   12e4c:	0000                	unimp
   12e4e:	0000                	unimp
   12e50:	0210                	addi	a2,sp,256
	...
   12e5a:	0010                	.insn	2, 0x0010
   12e5c:	0000                	unimp
   12e5e:	0300                	addi	s0,sp,384
   12e60:	0000                	unimp
   12e62:	0800                	addi	s0,sp,16
   12e64:	0000                	unimp
   12e66:	8d01                	sub	a0,a0,s0
   12e68:	746e6f63          	bltu	t3,t1,0x135c6
   12e6c:	6f72                	ld	t5,280(sp)
   12e6e:	006c                	addi	a1,sp,12
   12e70:	0000                	unimp
   12e72:	0200                	addi	s0,sp,256
   12e74:	0000                	unimp
   12e76:	0100                	addi	s0,sp,128
   12e78:	7770                	ld	a2,232(a4)
   12e7a:	406d                	c.li	zero,27
   12e7c:	3031                	.insn	2, 0x3031
   12e7e:	3230                	fld	fa2,96(a2)
   12e80:	3031                	.insn	2, 0x3031
   12e82:	3030                	fld	fa2,96(s0)
   12e84:	0000                	unimp
   12e86:	0000                	unimp
   12e88:	0000                	unimp
   12e8a:	0300                	addi	s0,sp,384
   12e8c:	0000                	unimp
   12e8e:	0c00                	addi	s0,sp,528
   12e90:	0000                	unimp
   12e92:	1b00                	addi	s0,sp,432
   12e94:	69666973          	csrrsi	s2,0x696,12
   12e98:	6576                	ld	a0,344(sp)
   12e9a:	702c                	ld	a1,96(s0)
   12e9c:	00306d77          	.insn	4, 0x00306d77
   12ea0:	0000                	unimp
   12ea2:	0300                	addi	s0,sp,384
   12ea4:	0000                	unimp
   12ea6:	0400                	addi	s0,sp,512
   12ea8:	0000                	unimp
   12eaa:	7101                	addi	sp,sp,-512
   12eac:	0000                	unimp
   12eae:	0400                	addi	s0,sp,512
   12eb0:	0000                	unimp
   12eb2:	0300                	addi	s0,sp,384
   12eb4:	0000                	unimp
   12eb6:	1000                	addi	s0,sp,32
   12eb8:	0000                	unimp
   12eba:	8201                	c.srli64	a2
   12ebc:	0000                	unimp
   12ebe:	3000                	fld	fs0,32(s0)
   12ec0:	0000                	unimp
   12ec2:	3100                	fld	fs0,32(a0)
   12ec4:	0000                	unimp
   12ec6:	3200                	fld	fs0,32(a2)
   12ec8:	0000                	unimp
   12eca:	3300                	fld	fs0,32(a4)
   12ecc:	0000                	unimp
   12ece:	0300                	addi	s0,sp,384
   12ed0:	0000                	unimp
   12ed2:	1000                	addi	s0,sp,32
   12ed4:	0000                	unimp
   12ed6:	9600                	.insn	2, 0x9600
   12ed8:	0000                	unimp
   12eda:	0000                	unimp
   12edc:	0210                	addi	a2,sp,256
   12ede:	0010                	.insn	2, 0x0010
   12ee0:	0000                	unimp
   12ee2:	0000                	unimp
   12ee4:	0000                	unimp
   12ee6:	0010                	.insn	2, 0x0010
   12ee8:	0000                	unimp
   12eea:	0300                	addi	s0,sp,384
   12eec:	0000                	unimp
   12eee:	0800                	addi	s0,sp,16
   12ef0:	0000                	unimp
   12ef2:	8d01                	sub	a0,a0,s0
   12ef4:	746e6f63          	bltu	t3,t1,0x13652
   12ef8:	6f72                	ld	t5,280(sp)
   12efa:	006c                	addi	a1,sp,12
   12efc:	0000                	unimp
   12efe:	0200                	addi	s0,sp,256
   12f00:	0000                	unimp
   12f02:	0100                	addi	s0,sp,128
   12f04:	6f72                	ld	t5,280(sp)
   12f06:	406d                	c.li	zero,27
   12f08:	3031                	.insn	2, 0x3031
   12f0a:	3030                	fld	fa2,96(s0)
   12f0c:	0000                	unimp
   12f0e:	0000                	unimp
   12f10:	0000                	unimp
   12f12:	0300                	addi	s0,sp,384
   12f14:	0000                	unimp
   12f16:	1300                	addi	s0,sp,416
   12f18:	0000                	unimp
   12f1a:	1b00                	addi	s0,sp,432
   12f1c:	69666973          	csrrsi	s2,0x696,12
   12f20:	6576                	ld	a0,344(sp)
   12f22:	6d2c                	ld	a1,88(a0)
   12f24:	7365646f          	jal	s0,0x6965a
   12f28:	6c65                	lui	s8,0x19
   12f2a:	6365                	lui	t1,0x19
   12f2c:	3074                	fld	fa3,224(s0)
   12f2e:	0000                	unimp
   12f30:	0000                	unimp
   12f32:	0300                	addi	s0,sp,384
   12f34:	0000                	unimp
   12f36:	1000                	addi	s0,sp,32
   12f38:	0000                	unimp
   12f3a:	9600                	.insn	2, 0x9600
   12f3c:	0000                	unimp
   12f3e:	0000                	unimp
   12f40:	0000                	unimp
   12f42:	0010                	.insn	2, 0x0010
   12f44:	0000                	unimp
   12f46:	0000                	unimp
   12f48:	0000                	unimp
   12f4a:	0010                	.insn	2, 0x0010
   12f4c:	0000                	unimp
   12f4e:	0300                	addi	s0,sp,384
   12f50:	0000                	unimp
   12f52:	0400                	addi	s0,sp,512
   12f54:	0000                	unimp
   12f56:	8d01                	sub	a0,a0,s0
   12f58:	656d                	lui	a0,0x1b
   12f5a:	006d                	c.nop	27
   12f5c:	0000                	unimp
   12f5e:	0200                	addi	s0,sp,256
   12f60:	0000                	unimp
   12f62:	0100                	addi	s0,sp,128
   12f64:	6f72                	ld	t5,280(sp)
   12f66:	406d                	c.li	zero,27
   12f68:	3031                	.insn	2, 0x3031
   12f6a:	3030                	fld	fa2,96(s0)
   12f6c:	0030                	addi	a2,sp,8
   12f6e:	0000                	unimp
   12f70:	0000                	unimp
   12f72:	0300                	addi	s0,sp,384
   12f74:	0000                	unimp
   12f76:	1000                	addi	s0,sp,32
   12f78:	0000                	unimp
   12f7a:	1b00                	addi	s0,sp,432
   12f7c:	69666973          	csrrsi	s2,0x696,12
   12f80:	6576                	ld	a0,344(sp)
   12f82:	6d2c                	ld	a1,88(a0)
   12f84:	7361                	lui	t1,0xffff8
   12f86:	6d6f726b          	.insn	4, 0x6d6f726b
   12f8a:	0030                	addi	a2,sp,8
   12f8c:	0000                	unimp
   12f8e:	0300                	addi	s0,sp,384
   12f90:	0000                	unimp
   12f92:	1000                	addi	s0,sp,32
   12f94:	0000                	unimp
   12f96:	9600                	.insn	2, 0x9600
   12f98:	0000                	unimp
   12f9a:	0000                	unimp
   12f9c:	0100                	addi	s0,sp,128
	...
   12fa6:	0080                	addi	s0,sp,64
   12fa8:	0000                	unimp
   12faa:	0300                	addi	s0,sp,384
   12fac:	0000                	unimp
   12fae:	0400                	addi	s0,sp,512
   12fb0:	0000                	unimp
   12fb2:	8d01                	sub	a0,a0,s0
   12fb4:	656d                	lui	a0,0x1b
   12fb6:	006d                	c.nop	27
   12fb8:	0000                	unimp
   12fba:	0200                	addi	s0,sp,256
   12fbc:	0000                	unimp
   12fbe:	0100                	addi	s0,sp,128
   12fc0:	6f72                	ld	t5,280(sp)
   12fc2:	406d                	c.li	zero,27
   12fc4:	3039                	.insn	2, 0x3039
   12fc6:	3030                	fld	fa2,96(s0)
   12fc8:	3030                	fld	fa2,96(s0)
   12fca:	0030                	addi	a2,sp,8
   12fcc:	0000                	unimp
   12fce:	0300                	addi	s0,sp,384
   12fd0:	0000                	unimp
   12fd2:	1700                	addi	s0,sp,928
   12fd4:	0000                	unimp
   12fd6:	1b00                	addi	s0,sp,432
   12fd8:	6375                	lui	t1,0x1d
   12fda:	6262                	ld	tp,24(sp)
   12fdc:	7261                	lui	tp,0xffff8
   12fde:	632c                	ld	a1,64(a4)
   12fe0:	6361                	lui	t1,0x18
   12fe2:	6568                	ld	a0,200(a0)
   12fe4:	6261                	lui	tp,0x18
   12fe6:	656c                	ld	a1,200(a0)
   12fe8:	7a2d                	lui	s4,0xfffeb
   12fea:	7265                	lui	tp,0xffff9
   12fec:	0000306f          	j	0x15fec
   12ff0:	0000                	unimp
   12ff2:	0300                	addi	s0,sp,384
   12ff4:	0000                	unimp
   12ff6:	1000                	addi	s0,sp,32
   12ff8:	0000                	unimp
   12ffa:	9600                	.insn	2, 0x9600
   12ffc:	0000                	unimp
   12ffe:	0000                	unimp
   13000:	0009                	c.nop	2
   13002:	0000                	unimp
   13004:	0000                	unimp
   13006:	0000                	unimp
   13008:	2000                	fld	fs0,0(s0)
   1300a:	0000                	unimp
   1300c:	0000                	unimp
   1300e:	0200                	addi	s0,sp,256
   13010:	0000                	unimp
   13012:	0100                	addi	s0,sp,128
   13014:	6f72                	ld	t5,280(sp)
   13016:	406d                	c.li	zero,27
   13018:	3061                	.insn	2, 0x3061
   1301a:	3030                	fld	fa2,96(s0)
   1301c:	3030                	fld	fa2,96(s0)
   1301e:	0030                	addi	a2,sp,8
   13020:	0000                	unimp
   13022:	0300                	addi	s0,sp,384
   13024:	0000                	unimp
   13026:	1700                	addi	s0,sp,928
   13028:	0000                	unimp
   1302a:	1b00                	addi	s0,sp,432
   1302c:	6375                	lui	t1,0x1d
   1302e:	6262                	ld	tp,24(sp)
   13030:	7261                	lui	tp,0xffff8
   13032:	632c                	ld	a1,64(a4)
   13034:	6361                	lui	t1,0x18
   13036:	6568                	ld	a0,200(a0)
   13038:	6261                	lui	tp,0x18
   1303a:	656c                	ld	a1,200(a0)
   1303c:	7a2d                	lui	s4,0xfffeb
   1303e:	7265                	lui	tp,0xffff9
   13040:	0000306f          	j	0x16040
   13044:	0000                	unimp
   13046:	0300                	addi	s0,sp,384
   13048:	0000                	unimp
   1304a:	1000                	addi	s0,sp,32
   1304c:	0000                	unimp
   1304e:	9600                	.insn	2, 0x9600
   13050:	0000                	unimp
   13052:	0000                	unimp
   13054:	000a                	c.slli	zero,0x2
   13056:	0000                	unimp
   13058:	0000                	unimp
   1305a:	0000                	unimp
   1305c:	0002                	c.slli64	zero
   1305e:	0000                	unimp
   13060:	0000                	unimp
   13062:	0300                	addi	s0,sp,384
   13064:	0000                	unimp
   13066:	0400                	addi	s0,sp,512
   13068:	0000                	unimp
   1306a:	f000                	sd	s0,32(s0)
   1306c:	0000                	unimp
   1306e:	0700                	addi	s0,sp,896
   13070:	0000                	unimp
   13072:	0300                	addi	s0,sp,384
   13074:	0000                	unimp
   13076:	0400                	addi	s0,sp,512
   13078:	0000                	unimp
   1307a:	f600                	sd	s0,40(a2)
   1307c:	0000                	unimp
   1307e:	0700                	addi	s0,sp,896
   13080:	0000                	unimp
   13082:	0200                	addi	s0,sp,256
   13084:	0000                	unimp
   13086:	0100                	addi	s0,sp,128
   13088:	69726573          	csrrsi	a0,0x697,4
   1308c:	6c61                	lui	s8,0x18
   1308e:	3140                	fld	fs0,160(a0)
   13090:	3030                	fld	fa2,96(s0)
   13092:	3031                	.insn	2, 0x3031
   13094:	3030                	fld	fa2,96(s0)
   13096:	0030                	addi	a2,sp,8
   13098:	0000                	unimp
   1309a:	0300                	addi	s0,sp,384
   1309c:	0000                	unimp
   1309e:	0d00                	addi	s0,sp,656
   130a0:	0000                	unimp
   130a2:	1b00                	addi	s0,sp,432
   130a4:	69666973          	csrrsi	s2,0x696,12
   130a8:	6576                	ld	a0,344(sp)
   130aa:	752c                	ld	a1,104(a0)
   130ac:	7261                	lui	tp,0xffff8
   130ae:	3074                	fld	fa3,224(s0)
   130b0:	0000                	unimp
   130b2:	0000                	unimp
   130b4:	0000                	unimp
   130b6:	0300                	addi	s0,sp,384
   130b8:	0000                	unimp
   130ba:	0400                	addi	s0,sp,512
   130bc:	0000                	unimp
   130be:	7101                	addi	sp,sp,-512
   130c0:	0000                	unimp
   130c2:	0400                	addi	s0,sp,512
   130c4:	0000                	unimp
   130c6:	0300                	addi	s0,sp,384
   130c8:	0000                	unimp
   130ca:	0400                	addi	s0,sp,512
   130cc:	0000                	unimp
   130ce:	8201                	c.srli64	a2
   130d0:	0000                	unimp
   130d2:	2700                	fld	fs0,8(a4)
   130d4:	0000                	unimp
   130d6:	0300                	addi	s0,sp,384
   130d8:	0000                	unimp
   130da:	1000                	addi	s0,sp,32
   130dc:	0000                	unimp
   130de:	9600                	.insn	2, 0x9600
   130e0:	0000                	unimp
   130e2:	0000                	unimp
   130e4:	0110                	addi	a2,sp,128
	...
   130ee:	0010                	.insn	2, 0x0010
   130f0:	0000                	unimp
   130f2:	0300                	addi	s0,sp,384
   130f4:	0000                	unimp
   130f6:	0800                	addi	s0,sp,16
   130f8:	0000                	unimp
   130fa:	8d01                	sub	a0,a0,s0
   130fc:	746e6f63          	bltu	t3,t1,0x1385a
   13100:	6f72                	ld	t5,280(sp)
   13102:	006c                	addi	a1,sp,12
   13104:	0000                	unimp
   13106:	0200                	addi	s0,sp,256
   13108:	0000                	unimp
   1310a:	0100                	addi	s0,sp,128
   1310c:	69726573          	csrrsi	a0,0x697,4
   13110:	6c61                	lui	s8,0x18
   13112:	3140                	fld	fs0,160(a0)
   13114:	3030                	fld	fa2,96(s0)
   13116:	3131                	addiw	sp,sp,-20
   13118:	3030                	fld	fa2,96(s0)
   1311a:	0030                	addi	a2,sp,8
   1311c:	0000                	unimp
   1311e:	0300                	addi	s0,sp,384
   13120:	0000                	unimp
   13122:	0d00                	addi	s0,sp,656
   13124:	0000                	unimp
   13126:	1b00                	addi	s0,sp,432
   13128:	69666973          	csrrsi	s2,0x696,12
   1312c:	6576                	ld	a0,344(sp)
   1312e:	752c                	ld	a1,104(a0)
   13130:	7261                	lui	tp,0xffff8
   13132:	3074                	fld	fa3,224(s0)
   13134:	0000                	unimp
   13136:	0000                	unimp
   13138:	0000                	unimp
   1313a:	0300                	addi	s0,sp,384
   1313c:	0000                	unimp
   1313e:	0400                	addi	s0,sp,512
   13140:	0000                	unimp
   13142:	7101                	addi	sp,sp,-512
   13144:	0000                	unimp
   13146:	0400                	addi	s0,sp,512
   13148:	0000                	unimp
   1314a:	0300                	addi	s0,sp,384
   1314c:	0000                	unimp
   1314e:	0400                	addi	s0,sp,512
   13150:	0000                	unimp
   13152:	8201                	c.srli64	a2
   13154:	0000                	unimp
   13156:	2800                	fld	fs0,16(s0)
   13158:	0000                	unimp
   1315a:	0300                	addi	s0,sp,384
   1315c:	0000                	unimp
   1315e:	1000                	addi	s0,sp,32
   13160:	0000                	unimp
   13162:	9600                	.insn	2, 0x9600
   13164:	0000                	unimp
   13166:	0000                	unimp
   13168:	0110                	addi	a2,sp,128
   1316a:	0010                	.insn	2, 0x0010
   1316c:	0000                	unimp
   1316e:	0000                	unimp
   13170:	0000                	unimp
   13172:	0010                	.insn	2, 0x0010
   13174:	0000                	unimp
   13176:	0300                	addi	s0,sp,384
   13178:	0000                	unimp
   1317a:	0800                	addi	s0,sp,16
   1317c:	0000                	unimp
   1317e:	8d01                	sub	a0,a0,s0
   13180:	746e6f63          	bltu	t3,t1,0x138de
   13184:	6f72                	ld	t5,280(sp)
   13186:	006c                	addi	a1,sp,12
   13188:	0000                	unimp
   1318a:	0200                	addi	s0,sp,256
   1318c:	0000                	unimp
   1318e:	0100                	addi	s0,sp,128
   13190:	40697073          	csrci	0x406,18
   13194:	3031                	.insn	2, 0x3031
   13196:	3430                	fld	fa2,104(s0)
   13198:	3030                	fld	fa2,96(s0)
   1319a:	3030                	fld	fa2,96(s0)
   1319c:	0000                	unimp
   1319e:	0000                	unimp
   131a0:	0000                	unimp
   131a2:	0300                	addi	s0,sp,384
   131a4:	0000                	unimp
   131a6:	0400                	addi	s0,sp,512
   131a8:	0000                	unimp
   131aa:	0000                	unimp
   131ac:	0000                	unimp
   131ae:	0100                	addi	s0,sp,128
   131b0:	0000                	unimp
   131b2:	0300                	addi	s0,sp,384
   131b4:	0000                	unimp
   131b6:	0400                	addi	s0,sp,512
   131b8:	0000                	unimp
   131ba:	0f00                	addi	s0,sp,912
   131bc:	0000                	unimp
   131be:	0000                	unimp
   131c0:	0000                	unimp
   131c2:	0300                	addi	s0,sp,384
   131c4:	0000                	unimp
   131c6:	0c00                	addi	s0,sp,528
   131c8:	0000                	unimp
   131ca:	1b00                	addi	s0,sp,432
   131cc:	69666973          	csrrsi	s2,0x696,12
   131d0:	6576                	ld	a0,344(sp)
   131d2:	732c                	ld	a1,96(a4)
   131d4:	6970                	ld	a2,208(a0)
   131d6:	0030                	addi	a2,sp,8
   131d8:	0000                	unimp
   131da:	0300                	addi	s0,sp,384
   131dc:	0000                	unimp
   131de:	0400                	addi	s0,sp,512
   131e0:	0000                	unimp
   131e2:	7101                	addi	sp,sp,-512
   131e4:	0000                	unimp
   131e6:	0400                	addi	s0,sp,512
   131e8:	0000                	unimp
   131ea:	0300                	addi	s0,sp,384
   131ec:	0000                	unimp
   131ee:	0400                	addi	s0,sp,512
   131f0:	0000                	unimp
   131f2:	8201                	c.srli64	a2
   131f4:	0000                	unimp
   131f6:	2900                	fld	fs0,16(a0)
   131f8:	0000                	unimp
   131fa:	0300                	addi	s0,sp,384
   131fc:	0000                	unimp
   131fe:	2000                	fld	fs0,0(s0)
   13200:	0000                	unimp
   13202:	9600                	.insn	2, 0x9600
   13204:	0000                	unimp
   13206:	0000                	unimp
   13208:	0410                	addi	a2,sp,512
	...
   13212:	0010                	.insn	2, 0x0010
   13214:	0000                	unimp
   13216:	0000                	unimp
   13218:	0020                	addi	s0,sp,8
   1321a:	0000                	unimp
   1321c:	0000                	unimp
   1321e:	0000                	unimp
   13220:	0010                	.insn	2, 0x0010
   13222:	0000                	unimp
   13224:	0000                	unimp
   13226:	0300                	addi	s0,sp,384
   13228:	0000                	unimp
   1322a:	0c00                	addi	s0,sp,528
   1322c:	0000                	unimp
   1322e:	8d01                	sub	a0,a0,s0
   13230:	746e6f63          	bltu	t3,t1,0x1398e
   13234:	6f72                	ld	t5,280(sp)
   13236:	006c                	addi	a1,sp,12
   13238:	656d                	lui	a0,0x1b
   1323a:	006d                	c.nop	27
   1323c:	0000                	unimp
   1323e:	0200                	addi	s0,sp,256
   13240:	0000                	unimp
   13242:	0100                	addi	s0,sp,128
   13244:	40697073          	csrci	0x406,18
   13248:	3031                	.insn	2, 0x3031
   1324a:	3430                	fld	fa2,104(s0)
   1324c:	3031                	.insn	2, 0x3031
   1324e:	3030                	fld	fa2,96(s0)
   13250:	0000                	unimp
   13252:	0000                	unimp
   13254:	0000                	unimp
   13256:	0300                	addi	s0,sp,384
   13258:	0000                	unimp
   1325a:	0400                	addi	s0,sp,512
   1325c:	0000                	unimp
   1325e:	0000                	unimp
   13260:	0000                	unimp
   13262:	0100                	addi	s0,sp,128
   13264:	0000                	unimp
   13266:	0300                	addi	s0,sp,384
   13268:	0000                	unimp
   1326a:	0400                	addi	s0,sp,512
   1326c:	0000                	unimp
   1326e:	0f00                	addi	s0,sp,912
   13270:	0000                	unimp
   13272:	0000                	unimp
   13274:	0000                	unimp
   13276:	0300                	addi	s0,sp,384
   13278:	0000                	unimp
   1327a:	0c00                	addi	s0,sp,528
   1327c:	0000                	unimp
   1327e:	1b00                	addi	s0,sp,432
   13280:	69666973          	csrrsi	s2,0x696,12
   13284:	6576                	ld	a0,344(sp)
   13286:	732c                	ld	a1,96(a4)
   13288:	6970                	ld	a2,208(a0)
   1328a:	0030                	addi	a2,sp,8
   1328c:	0000                	unimp
   1328e:	0300                	addi	s0,sp,384
   13290:	0000                	unimp
   13292:	0400                	addi	s0,sp,512
   13294:	0000                	unimp
   13296:	7101                	addi	sp,sp,-512
   13298:	0000                	unimp
   1329a:	0400                	addi	s0,sp,512
   1329c:	0000                	unimp
   1329e:	0300                	addi	s0,sp,384
   132a0:	0000                	unimp
   132a2:	0400                	addi	s0,sp,512
   132a4:	0000                	unimp
   132a6:	8201                	c.srli64	a2
   132a8:	0000                	unimp
   132aa:	2a00                	fld	fs0,16(a2)
   132ac:	0000                	unimp
   132ae:	0300                	addi	s0,sp,384
   132b0:	0000                	unimp
   132b2:	2000                	fld	fs0,0(s0)
   132b4:	0000                	unimp
   132b6:	9600                	.insn	2, 0x9600
   132b8:	0000                	unimp
   132ba:	0000                	unimp
   132bc:	0410                	addi	a2,sp,512
   132be:	0010                	.insn	2, 0x0010
   132c0:	0000                	unimp
   132c2:	0000                	unimp
   132c4:	0000                	unimp
   132c6:	0010                	.insn	2, 0x0010
   132c8:	0000                	unimp
   132ca:	0000                	unimp
   132cc:	0030                	addi	a2,sp,8
   132ce:	0000                	unimp
   132d0:	0000                	unimp
   132d2:	0000                	unimp
   132d4:	0010                	.insn	2, 0x0010
   132d6:	0000                	unimp
   132d8:	0000                	unimp
   132da:	0300                	addi	s0,sp,384
   132dc:	0000                	unimp
   132de:	0c00                	addi	s0,sp,528
   132e0:	0000                	unimp
   132e2:	8d01                	sub	a0,a0,s0
   132e4:	746e6f63          	bltu	t3,t1,0x13a42
   132e8:	6f72                	ld	t5,280(sp)
   132ea:	006c                	addi	a1,sp,12
   132ec:	656d                	lui	a0,0x1b
   132ee:	006d                	c.nop	27
   132f0:	0000                	unimp
   132f2:	0200                	addi	s0,sp,256
   132f4:	0000                	unimp
   132f6:	0100                	addi	s0,sp,128
   132f8:	40697073          	csrci	0x406,18
   132fc:	3031                	.insn	2, 0x3031
   132fe:	3530                	fld	fa2,104(a0)
   13300:	3030                	fld	fa2,96(s0)
   13302:	3030                	fld	fa2,96(s0)
   13304:	0000                	unimp
   13306:	0000                	unimp
   13308:	0000                	unimp
   1330a:	0300                	addi	s0,sp,384
   1330c:	0000                	unimp
   1330e:	0400                	addi	s0,sp,512
   13310:	0000                	unimp
   13312:	0000                	unimp
   13314:	0000                	unimp
   13316:	0100                	addi	s0,sp,128
   13318:	0000                	unimp
   1331a:	0300                	addi	s0,sp,384
   1331c:	0000                	unimp
   1331e:	0400                	addi	s0,sp,512
   13320:	0000                	unimp
   13322:	0f00                	addi	s0,sp,912
   13324:	0000                	unimp
   13326:	0000                	unimp
   13328:	0000                	unimp
   1332a:	0300                	addi	s0,sp,384
   1332c:	0000                	unimp
   1332e:	0c00                	addi	s0,sp,528
   13330:	0000                	unimp
   13332:	1b00                	addi	s0,sp,432
   13334:	69666973          	csrrsi	s2,0x696,12
   13338:	6576                	ld	a0,344(sp)
   1333a:	732c                	ld	a1,96(a4)
   1333c:	6970                	ld	a2,208(a0)
   1333e:	0030                	addi	a2,sp,8
   13340:	0000                	unimp
   13342:	0300                	addi	s0,sp,384
   13344:	0000                	unimp
   13346:	0400                	addi	s0,sp,512
   13348:	0000                	unimp
   1334a:	7101                	addi	sp,sp,-512
   1334c:	0000                	unimp
   1334e:	0400                	addi	s0,sp,512
   13350:	0000                	unimp
   13352:	0300                	addi	s0,sp,384
   13354:	0000                	unimp
   13356:	0400                	addi	s0,sp,512
   13358:	0000                	unimp
   1335a:	8201                	c.srli64	a2
   1335c:	0000                	unimp
   1335e:	2b00                	fld	fs0,16(a4)
   13360:	0000                	unimp
   13362:	0300                	addi	s0,sp,384
   13364:	0000                	unimp
   13366:	1000                	addi	s0,sp,32
   13368:	0000                	unimp
   1336a:	9600                	.insn	2, 0x9600
   1336c:	0000                	unimp
   1336e:	0000                	unimp
   13370:	0510                	addi	a2,sp,640
	...
   1337a:	0010                	.insn	2, 0x0010
   1337c:	0000                	unimp
   1337e:	0300                	addi	s0,sp,384
   13380:	0000                	unimp
   13382:	0800                	addi	s0,sp,16
   13384:	0000                	unimp
   13386:	8d01                	sub	a0,a0,s0
   13388:	746e6f63          	bltu	t3,t1,0x13ae6
   1338c:	6f72                	ld	t5,280(sp)
   1338e:	006c                	addi	a1,sp,12
   13390:	0000                	unimp
   13392:	0200                	addi	s0,sp,256
   13394:	0000                	unimp
   13396:	0100                	addi	s0,sp,128
   13398:	6574                	ld	a3,200(a0)
   1339a:	74737473          	csrrci	s0,mseccfg,6
   1339e:	7461                	lui	s0,0xffff8
   133a0:	7375                	lui	t1,0xffffd
   133a2:	3440                	fld	fs0,168(s0)
   133a4:	3030                	fld	fa2,96(s0)
   133a6:	0030                	addi	a2,sp,8
   133a8:	0000                	unimp
   133aa:	0300                	addi	s0,sp,384
   133ac:	0000                	unimp
   133ae:	0d00                	addi	s0,sp,656
   133b0:	0000                	unimp
   133b2:	1b00                	addi	s0,sp,432
   133b4:	69666973          	csrrsi	s2,0x696,12
   133b8:	6576                	ld	a0,344(sp)
   133ba:	742c                	ld	a1,104(s0)
   133bc:	7365                	lui	t1,0xffff9
   133be:	3074                	fld	fa3,224(s0)
   133c0:	0000                	unimp
   133c2:	0000                	unimp
   133c4:	0000                	unimp
   133c6:	0300                	addi	s0,sp,384
   133c8:	0000                	unimp
   133ca:	1000                	addi	s0,sp,32
   133cc:	0000                	unimp
   133ce:	9600                	.insn	2, 0x9600
   133d0:	0000                	unimp
   133d2:	0000                	unimp
   133d4:	0000                	unimp
   133d6:	0040                	addi	s0,sp,4
   133d8:	0000                	unimp
   133da:	0000                	unimp
   133dc:	0000                	unimp
   133de:	0010                	.insn	2, 0x0010
   133e0:	0000                	unimp
   133e2:	0300                	addi	s0,sp,384
   133e4:	0000                	unimp
   133e6:	0800                	addi	s0,sp,16
   133e8:	0000                	unimp
   133ea:	8d01                	sub	a0,a0,s0
   133ec:	746e6f63          	bltu	t3,t1,0x13b4a
   133f0:	6f72                	ld	t5,280(sp)
   133f2:	006c                	addi	a1,sp,12
   133f4:	0000                	unimp
   133f6:	0200                	addi	s0,sp,256
   133f8:	0000                	unimp
   133fa:	0200                	addi	s0,sp,256
   133fc:	0000                	unimp
   133fe:	0200                	addi	s0,sp,256
   13400:	0000                	unimp
   13402:	0900                	addi	s0,sp,144
   13404:	64646123          	.insn	4, 0x64646123
   13408:	6572                	ld	a0,280(sp)
   1340a:	632d7373          	csrrci	t1,0x632,26
   1340e:	6c65                	lui	s8,0x19
   13410:	736c                	ld	a1,224(a4)
   13412:	2300                	fld	fs0,0(a4)
   13414:	657a6973          	csrrsi	s2,hviprio2h,20
   13418:	632d                	lui	t1,0xb
   1341a:	6c65                	lui	s8,0x19
   1341c:	736c                	ld	a1,224(a4)
   1341e:	6300                	ld	s0,0(a4)
   13420:	61706d6f          	jal	s10,0x1a236
   13424:	6974                	ld	a3,208(a0)
   13426:	6c62                	ld	s8,24(sp)
   13428:	0065                	c.nop	25
   1342a:	6f6d                	lui	t5,0x1b
   1342c:	6564                	ld	s1,200(a0)
   1342e:	006c                	addi	a1,sp,12
   13430:	69726573          	csrrsi	a0,0x697,4
   13434:	6c61                	lui	s8,0x18
   13436:	0030                	addi	a2,sp,8
   13438:	69726573          	csrrsi	a0,0x697,4
   1343c:	6c61                	lui	s8,0x18
   1343e:	0031                	c.nop	12
   13440:	636f6c63          	bltu	t5,s6,0x13a78
   13444:	72662d6b          	.insn	4, 0x72662d6b
   13448:	7165                	addi	sp,sp,-400
   1344a:	6575                	lui	a0,0x1d
   1344c:	636e                	ld	t1,216(sp)
   1344e:	0079                	c.nop	30
   13450:	6564                	ld	s1,200(a0)
   13452:	6976                	ld	s2,344(sp)
   13454:	745f6563          	bltu	t5,t0,0x13b9e
   13458:	7079                	c.lui	zero,0xffffe
   1345a:	0065                	c.nop	25
   1345c:	2d69                	addiw	s10,s10,26 # 0xb01a
   1345e:	68636163          	bltu	t1,t1,0x13ae0
   13462:	2d65                	addiw	s10,s10,25
   13464:	6c62                	ld	s8,24(sp)
   13466:	2d6b636f          	jal	t1,0xc973c
   1346a:	657a6973          	csrrsi	s2,hviprio2h,20
   1346e:	6900                	ld	s0,16(a0)
   13470:	632d                	lui	t1,0xb
   13472:	6361                	lui	t1,0x18
   13474:	6568                	ld	a0,200(a0)
   13476:	732d                	lui	t1,0xfffeb
   13478:	7465                	lui	s0,0xffff9
   1347a:	2d690073          	.insn	4, 0x2d690073
   1347e:	68636163          	bltu	t1,t1,0x13b00
   13482:	2d65                	addiw	s10,s10,25
   13484:	657a6973          	csrrsi	s2,hviprio2h,20
   13488:	6e00                	ld	s0,24(a2)
   1348a:	7865                	lui	a6,0xffff9
   1348c:	2d74                	fld	fa3,216(a0)
   1348e:	656c                	ld	a1,200(a0)
   13490:	6576                	ld	a0,344(sp)
   13492:	2d6c                	fld	fa1,216(a0)
   13494:	68636163          	bltu	t1,t1,0x13b16
   13498:	0065                	c.nop	25
   1349a:	6572                	ld	a0,280(sp)
   1349c:	69720067          	jr	1687(tp) # 0x697
   134a0:	2c766373          	csrrsi	t1,0x2c7,12
   134a4:	7369                	lui	t1,0xffffa
   134a6:	0061                	c.nop	24
   134a8:	69666973          	csrrsi	s2,0x696,12
   134ac:	6576                	ld	a0,344(sp)
   134ae:	642c                	ld	a1,72(s0)
   134b0:	6974                	ld	a3,208(a0)
   134b2:	006d                	c.nop	27
   134b4:	74617473          	csrrci	s0,0x746,2
   134b8:	7375                	lui	t1,0xffffd
   134ba:	7400                	ld	s0,40(s0)
   134bc:	6d69                	lui	s10,0x1a
   134be:	6265                	lui	tp,0x19
   134c0:	7361                	lui	t1,0xffff8
   134c2:	2d65                	addiw	s10,s10,25 # 0x1a019
   134c4:	7266                	ld	tp,120(sp)
   134c6:	7165                	addi	sp,sp,-400
   134c8:	6575                	lui	a0,0x1d
   134ca:	636e                	ld	t1,216(sp)
   134cc:	0079                	c.nop	30
   134ce:	746e6923          	.insn	4, 0x746e6923
   134d2:	7265                	lui	tp,0xffff9
   134d4:	7572                	ld	a0,312(sp)
   134d6:	7470                	ld	a2,232(s0)
   134d8:	632d                	lui	t1,0xb
   134da:	6c65                	lui	s8,0x19
   134dc:	736c                	ld	a1,224(a4)
   134de:	6900                	ld	s0,16(a0)
   134e0:	746e                	ld	s0,248(sp)
   134e2:	7265                	lui	tp,0xffff9
   134e4:	7572                	ld	a0,312(sp)
   134e6:	7470                	ld	a2,232(s0)
   134e8:	632d                	lui	t1,0xb
   134ea:	72746e6f          	jal	t3,0x5a410
   134ee:	656c6c6f          	jal	s8,0xd9b44
   134f2:	0072                	c.slli	zero,0x1c
   134f4:	696c                	ld	a1,208(a0)
   134f6:	756e                	ld	a0,248(sp)
   134f8:	2c78                	fld	fa4,216(s0)
   134fa:	6870                	ld	a2,208(s0)
   134fc:	6e61                	lui	t3,0x18
   134fe:	6c64                	ld	s1,216(s0)
   13500:	0065                	c.nop	25
   13502:	2d64                	fld	fs1,216(a0)
   13504:	68636163          	bltu	t1,t1,0x13b86
   13508:	2d65                	addiw	s10,s10,25
   1350a:	6c62                	ld	s8,24(sp)
   1350c:	2d6b636f          	jal	t1,0xc97e2
   13510:	657a6973          	csrrsi	s2,hviprio2h,20
   13514:	6400                	ld	s0,8(s0)
   13516:	632d                	lui	t1,0xb
   13518:	6361                	lui	t1,0x18
   1351a:	6568                	ld	a0,200(a0)
   1351c:	732d                	lui	t1,0xfffeb
   1351e:	7465                	lui	s0,0xffff9
   13520:	2d640073          	.insn	4, 0x2d640073
   13524:	68636163          	bltu	t1,t1,0x13ba6
   13528:	2d65                	addiw	s10,s10,25
   1352a:	657a6973          	csrrsi	s2,hviprio2h,20
   1352e:	6400                	ld	s0,8(s0)
   13530:	742d                	lui	s0,0xfffeb
   13532:	626c                	ld	a1,192(a2)
   13534:	732d                	lui	t1,0xfffeb
   13536:	7465                	lui	s0,0xffff9
   13538:	2d640073          	.insn	4, 0x2d640073
   1353c:	6c74                	ld	a3,216(s0)
   1353e:	2d62                	fld	fs10,24(sp)
   13540:	657a6973          	csrrsi	s2,hviprio2h,20
   13544:	6900                	ld	s0,16(a0)
   13546:	742d                	lui	s0,0xfffeb
   13548:	626c                	ld	a1,192(a2)
   1354a:	732d                	lui	t1,0xfffeb
   1354c:	7465                	lui	s0,0xffff9
   1354e:	2d690073          	.insn	4, 0x2d690073
   13552:	6c74                	ld	a3,216(s0)
   13554:	2d62                	fld	fs10,24(sp)
   13556:	657a6973          	csrrsi	s2,hviprio2h,20
   1355a:	6d00                	ld	s0,24(a0)
   1355c:	756d                	lui	a0,0xffffb
   1355e:	742d                	lui	s0,0xfffeb
   13560:	7079                	c.lui	zero,0xffffe
   13562:	0065                	c.nop	25
   13564:	6c74                	ld	a3,216(s0)
   13566:	2d62                	fld	fs10,24(sp)
   13568:	696c7073          	csrci	0x696,24
   1356c:	0074                	addi	a3,sp,12
   1356e:	6172                	ld	sp,280(sp)
   13570:	676e                	ld	a4,216(sp)
   13572:	7365                	lui	t1,0xffff9
   13574:	6900                	ld	s0,16(a0)
   13576:	746e                	ld	s0,248(sp)
   13578:	7265                	lui	tp,0xffff9
   1357a:	7572                	ld	a0,312(sp)
   1357c:	7470                	ld	a2,232(s0)
   1357e:	702d                	c.lui	zero,0xfffeb
   13580:	7261                	lui	tp,0xffff8
   13582:	6e65                	lui	t3,0x19
   13584:	0074                	addi	a3,sp,12
   13586:	6e69                	lui	t3,0x1a
   13588:	6574                	ld	a3,200(a0)
   1358a:	7272                	ld	tp,312(sp)
   1358c:	7075                	c.lui	zero,0xffffd
   1358e:	7374                	ld	a3,224(a4)
   13590:	7200                	ld	s0,32(a2)
   13592:	6765                	lui	a4,0x19
   13594:	6e2d                	lui	t3,0xb
   13596:	6d61                	lui	s10,0x18
   13598:	7365                	lui	t1,0xffff9
   1359a:	6300                	ld	s0,0(a4)
   1359c:	6361                	lui	t1,0x18
   1359e:	6568                	ld	a0,200(a0)
   135a0:	6c2d                	lui	s8,0xb
   135a2:	7665                	lui	a2,0xffff9
   135a4:	6c65                	lui	s8,0x19
   135a6:	6300                	ld	s0,0(a4)
   135a8:	6361                	lui	t1,0x18
   135aa:	6568                	ld	a0,200(a0)
   135ac:	752d                	lui	a0,0xfffeb
   135ae:	696e                	ld	s2,216(sp)
   135b0:	6966                	ld	s2,88(sp)
   135b2:	6465                	lui	s0,0x19
   135b4:	7300                	ld	s0,32(a4)
   135b6:	6669                	lui	a2,0x1a
   135b8:	7669                	lui	a2,0xffffa
   135ba:	2c65                	addiw	s8,s8,25 # 0x19019
   135bc:	6365                	lui	t1,0x19
   135be:	72672d63          	.insn	4, 0x72672d63
   135c2:	6e61                	lui	t3,0x18
   135c4:	6c75                	lui	s8,0x1d
   135c6:	7261                	lui	tp,0xffff8
   135c8:	7469                	lui	s0,0xffffa
   135ca:	0079                	c.nop	30
   135cc:	69666973          	csrrsi	s2,0x696,12
   135d0:	6576                	ld	a0,344(sp)
   135d2:	6d2c                	ld	a1,88(a0)
   135d4:	2d726873          	csrrsi	a6,0x2d7,4
   135d8:	6e756f63          	bltu	a0,t2,0x13cd6
   135dc:	0074                	addi	a3,sp,12
   135de:	6e69                	lui	t3,0x1a
   135e0:	6574                	ld	a3,200(a0)
   135e2:	7272                	ld	tp,312(sp)
   135e4:	7075                	c.lui	zero,0xffffd
   135e6:	7374                	ld	a3,224(a4)
   135e8:	652d                	lui	a0,0xb
   135ea:	7478                	ld	a4,232(s0)
   135ec:	6e65                	lui	t3,0x19
   135ee:	6564                	ld	s1,200(a0)
   135f0:	0064                	addi	s1,sp,12
   135f2:	616d6423          	.insn	4, 0x616d6423
   135f6:	632d                	lui	t1,0xb
   135f8:	6c65                	lui	s8,0x19
   135fa:	736c                	ld	a1,224(a4)
   135fc:	6400                	ld	s0,8(s0)
   135fe:	616d                	addi	sp,sp,240
   13600:	632d                	lui	t1,0xb
   13602:	6168                	ld	a0,192(a0)
   13604:	6e6e                	ld	t3,216(sp)
   13606:	6c65                	lui	s8,0x19
   13608:	6d640073          	.insn	4, 0x6d640073
   1360c:	2d61                	addiw	s10,s10,24 # 0x18018
   1360e:	6572                	ld	a0,280(sp)
   13610:	7571                	lui	a0,0xffffc
   13612:	7365                	lui	t1,0xffff9
   13614:	7374                	ld	a3,224(a4)
   13616:	7200                	ld	s0,32(a2)
   13618:	7369                	lui	t1,0xffffa
   1361a:	642c7663          	bgeu	s8,sp,0x13c66
   1361e:	616d                	addi	sp,sp,240
   13620:	702d                	c.lui	zero,0xfffeb
   13622:	736c6f6f          	jal	t5,0xd9d58
   13626:	2300                	fld	fs0,0(a4)
   13628:	756e                	ld	a0,248(sp)
   1362a:	2d6d                	addiw	s10,s10,27
   1362c:	616c                	ld	a1,192(a0)
   1362e:	656e                	ld	a0,216(sp)
   13630:	6d640073          	.insn	4, 0x6d640073
   13634:	2d61                	addiw	s10,s10,24
   13636:	65686f63          	bltu	a6,s6,0x13c94
   1363a:	6572                	ld	a0,280(sp)
   1363c:	746e                	ld	s0,248(sp)
   1363e:	6900                	ld	s0,16(a0)
   13640:	746e                	ld	s0,248(sp)
   13642:	7265                	lui	tp,0xffff9
   13644:	7572                	ld	a0,312(sp)
   13646:	7470                	ld	a2,232(s0)
   13648:	6d2d                	lui	s10,0xb
   1364a:	7061                	c.lui	zero,0xffff8
   1364c:	6900                	ld	s0,16(a0)
   1364e:	746e                	ld	s0,248(sp)
   13650:	7265                	lui	tp,0xffff9
   13652:	7572                	ld	a0,312(sp)
   13654:	7470                	ld	a2,232(s0)
   13656:	6d2d                	lui	s10,0xb
   13658:	7061                	c.lui	zero,0xffff8
   1365a:	6d2d                	lui	s10,0xb
   1365c:	7361                	lui	t1,0xffff8
   1365e:	6e69006b          	.insn	4, 0x6e69006b
   13662:	6574                	ld	a3,200(a0)
   13664:	7272                	ld	tp,312(sp)
   13666:	7075                	c.lui	zero,0xffffd
   13668:	2d74                	fld	fa3,216(a0)
   1366a:	616e                	ld	sp,216(sp)
   1366c:	656d                	lui	a0,0x1b
   1366e:	616d0073          	.insn	4, 0x616d0073
   13672:	64612d63          	.insn	4, 0x64612d63
   13676:	7264                	ld	s1,224(a2)
   13678:	7365                	lui	t1,0xffff9
   1367a:	67230073          	.insn	4, 0x67230073
   1367e:	6970                	ld	a2,208(a0)
   13680:	65632d6f          	jal	s10,0x45cd6
   13684:	6c6c                	ld	a1,216(s0)
   13686:	70670073          	.insn	4, 0x70670073
   1368a:	6f69                	lui	t5,0x1a
   1368c:	632d                	lui	t1,0xb
   1368e:	72746e6f          	jal	t3,0x5a5b4
   13692:	656c6c6f          	jal	s8,0xd9ce8
   13696:	0072                	c.slli	zero,0x1c
   13698:	6972                	ld	s2,280(sp)
   1369a:	2c766373          	csrrsi	t1,0x2c7,12
   1369e:	616d                	addi	sp,sp,240
   136a0:	2d78                	fld	fa4,216(a0)
   136a2:	7270                	ld	a2,224(a2)
   136a4:	6f69                	lui	t5,0x1a
   136a6:	6972                	ld	s2,280(sp)
   136a8:	7974                	ld	a3,240(a0)
   136aa:	7200                	ld	s0,32(a2)
   136ac:	7369                	lui	t1,0xffffa
   136ae:	6e2c7663          	bgeu	s8,sp,0x13d9a
   136b2:	6564                	ld	s1,200(a0)
   136b4:	0076                	c.slli	zero,0x1d
   136b6:	0000                	unimp
   136b8:	d22c                	sw	a1,96(a2)
   136ba:	ffff                	.insn	2, 0xffff
   136bc:	d22c                	sw	a1,96(a2)
   136be:	ffff                	.insn	2, 0xffff
   136c0:	d230                	sw	a2,96(a2)
   136c2:	ffff                	.insn	2, 0xffff
   136c4:	d290                	sw	a2,32(a3)
   136c6:	ffff                	.insn	2, 0xffff
   136c8:	d22c                	sw	a1,96(a2)
   136ca:	ffff                	.insn	2, 0xffff
   136cc:	d230                	sw	a2,96(a2)
   136ce:	ffff                	.insn	2, 0xffff
   136d0:	d290                	sw	a2,32(a3)
   136d2:	ffff                	.insn	2, 0xffff
   136d4:	d22c                	sw	a1,96(a2)
   136d6:	ffff                	.insn	2, 0xffff
   136d8:	d290                	sw	a2,32(a3)
   136da:	ffff                	.insn	2, 0xffff
   136dc:	d22c                	sw	a1,96(a2)
   136de:	ffff                	.insn	2, 0xffff
   136e0:	d14e                	sw	s3,160(sp)
   136e2:	ffff                	.insn	2, 0xffff
   136e4:	d14e                	sw	s3,160(sp)
   136e6:	ffff                	.insn	2, 0xffff
   136e8:	d19a                	sw	t1,224(sp)
   136ea:	ffff                	.insn	2, 0xffff
   136ec:	d220                	sw	s0,96(a2)
   136ee:	ffff                	.insn	2, 0xffff
   136f0:	d14e                	sw	s3,160(sp)
   136f2:	ffff                	.insn	2, 0xffff
   136f4:	d19a                	sw	t1,224(sp)
   136f6:	ffff                	.insn	2, 0xffff
   136f8:	d220                	sw	s0,96(a2)
   136fa:	ffff                	.insn	2, 0xffff
   136fc:	d14e                	sw	s3,160(sp)
   136fe:	ffff                	.insn	2, 0xffff
   13700:	d220                	sw	s0,96(a2)
   13702:	ffff                	.insn	2, 0xffff
   13704:	d14e                	sw	s3,160(sp)
   13706:	ffff                	.insn	2, 0xffff
   13708:	d1c4                	sw	s1,36(a1)
   1370a:	ffff                	.insn	2, 0xffff
   1370c:	d1c4                	sw	s1,36(a1)
   1370e:	ffff                	.insn	2, 0xffff
   13710:	d1cc                	sw	a1,36(a1)
   13712:	ffff                	.insn	2, 0xffff
   13714:	d246                	sw	a7,36(sp)
   13716:	ffff                	.insn	2, 0xffff
   13718:	d1c4                	sw	s1,36(a1)
   1371a:	ffff                	.insn	2, 0xffff
   1371c:	d1cc                	sw	a1,36(a1)
   1371e:	ffff                	.insn	2, 0xffff
   13720:	d246                	sw	a7,36(sp)
   13722:	ffff                	.insn	2, 0xffff
   13724:	d1c4                	sw	s1,36(a1)
   13726:	ffff                	.insn	2, 0xffff
   13728:	d246                	sw	a7,36(sp)
   1372a:	ffff                	.insn	2, 0xffff
   1372c:	d1c4                	sw	s1,36(a1)
   1372e:	ffff                	.insn	2, 0xffff
   13730:	0005                	c.nop	1
   13732:	0000                	unimp
   13734:	0006                	c.slli	zero,0x1
   13736:	0000                	unimp
   13738:	00000007          	.insn	4, 0x0007
   1373c:	0008                	.insn	2, 0x0008
   1373e:	0000                	unimp
   13740:	0009                	c.nop	2
   13742:	0000                	unimp
   13744:	0000                	unimp
   13746:	0000                	unimp
   13748:	7245                	lui	tp,0xffff1
   1374a:	6f72                	ld	t5,280(sp)
   1374c:	2072                	fld	ft0,280(sp)
   1374e:	7830                	ld	a2,112(s0)
	...
   13758:	2e54b353          	.insn	4, 0x2e54b353
   1375c:	1271                	addi	tp,tp,-4 # 0xffffffffffff0ffc
   1375e:	4842                	lw	a6,16(sp)
   13760:	6f80                	ld	s0,24(a5)
   13762:	36e4                	fld	fs1,232(a3)
   13764:	afd6                	fsd	fs5,472(sp)
   13766:	8569                	srai	a0,a0,0x1a
   13768:	3300                	fld	fs0,32(a4)
   1376a:	5b19                	li	s6,-26
   1376c:	fc78                	sd	a4,248(s0)
   1376e:	40cd                	li	ra,19
   13770:	0280                	addi	s0,sp,320
   13772:	6ce8                	ld	a0,216(s1)
   13774:	5845                	li	a6,-15
   13776:	7328470b          	.insn	4, 0x7328470b
   1377a:	c12a                	sw	a0,128(sp)
   1377c:	f81f 11d2 4bba      	.insn	6, 0x4bba11d2f81f
   13782:	a000                	fsd	fs0,0(s0)
   13784:	3ec9                	addiw	t4,t4,-14
   13786:	3bc9                	addiw	s7,s7,-14
	...
