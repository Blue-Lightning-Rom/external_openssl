#ifdef OPENSSL_FIPSCANISTER
# include <openssl/fipssyms.h>
#endif

.text

.set	noat
.set	noreorder
.align	5
.globl	sha1_block_data_order
.ent	sha1_block_data_order
sha1_block_data_order:
	.frame	$29,16*4,$31
	.mask	3237937152,-4
	.set	noreorder
	sub $29,16*4
	sw	$31,(16-1)*4($29)
	sw	$30,(16-2)*4($29)
	sw	$23,(16-3)*4($29)
	sw	$22,(16-4)*4($29)
	sw	$21,(16-5)*4($29)
	sw	$20,(16-6)*4($29)
	sw	$19,(16-7)*4($29)
	sw	$18,(16-8)*4($29)
	sw	$17,(16-9)*4($29)
	sw	$16,(16-10)*4($29)
	sll $6,6
	add $6,$5
	sw	$6,0($29)
	lw	$1,0($4)
	lw	$2,4($4)
	lw	$3,8($4)
	lw	$7,12($4)
	b	.Loop
	lw	$24,16($4)
.align	4
.Loop:
	.set	reorder
	lwl	$8,3($5)
	lui	$31,0x5a82
	lwr	$8,0($5)
	ori	$31,0x7999	# K_00_19
	srl	$25,$8,24	# byte swap(0)
	srl	$6,$8,8
	andi	$30,$8,0xFF00
	sll	$8,$8,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$8,$25
	or	$6,$30
	or	$8,$6
	 lwl	$9,1*4+3($5)
	sll	$25,$1,5	# 0
	addu	$24,$31
	 lwr	$9,1*4+0($5)
	srl	$6,$1,27
	addu	$24,$25
	xor	$25,$3,$7
	addu	$24,$6
	sll	$30,$2,30
	and	$25,$2
	srl	$2,$2,2
	xor	$25,$7
	addu	$24,$8
	or	$2,$30
	addu	$24,$25
	srl	$25,$9,24	# byte swap(1)
	srl	$6,$9,8
	andi	$30,$9,0xFF00
	sll	$9,$9,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$9,$25
	or	$6,$30
	or	$9,$6
	 lwl	$10,2*4+3($5)
	sll	$25,$24,5	# 1
	addu	$7,$31
	 lwr	$10,2*4+0($5)
	srl	$6,$24,27
	addu	$7,$25
	xor	$25,$2,$3
	addu	$7,$6
	sll	$30,$1,30
	and	$25,$1
	srl	$1,$1,2
	xor	$25,$3
	addu	$7,$9
	or	$1,$30
	addu	$7,$25
	srl	$25,$10,24	# byte swap(2)
	srl	$6,$10,8
	andi	$30,$10,0xFF00
	sll	$10,$10,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$10,$25
	or	$6,$30
	or	$10,$6
	 lwl	$11,3*4+3($5)
	sll	$25,$7,5	# 2
	addu	$3,$31
	 lwr	$11,3*4+0($5)
	srl	$6,$7,27
	addu	$3,$25
	xor	$25,$1,$2
	addu	$3,$6
	sll	$30,$24,30
	and	$25,$24
	srl	$24,$24,2
	xor	$25,$2
	addu	$3,$10
	or	$24,$30
	addu	$3,$25
	srl	$25,$11,24	# byte swap(3)
	srl	$6,$11,8
	andi	$30,$11,0xFF00
	sll	$11,$11,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$11,$25
	or	$6,$30
	or	$11,$6
	 lwl	$12,4*4+3($5)
	sll	$25,$3,5	# 3
	addu	$2,$31
	 lwr	$12,4*4+0($5)
	srl	$6,$3,27
	addu	$2,$25
	xor	$25,$24,$1
	addu	$2,$6
	sll	$30,$7,30
	and	$25,$7
	srl	$7,$7,2
	xor	$25,$1
	addu	$2,$11
	or	$7,$30
	addu	$2,$25
	srl	$25,$12,24	# byte swap(4)
	srl	$6,$12,8
	andi	$30,$12,0xFF00
	sll	$12,$12,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$12,$25
	or	$6,$30
	or	$12,$6
	 lwl	$13,5*4+3($5)
	sll	$25,$2,5	# 4
	addu	$1,$31
	 lwr	$13,5*4+0($5)
	srl	$6,$2,27
	addu	$1,$25
	xor	$25,$7,$24
	addu	$1,$6
	sll	$30,$3,30
	and	$25,$3
	srl	$3,$3,2
	xor	$25,$24
	addu	$1,$12
	or	$3,$30
	addu	$1,$25
	srl	$25,$13,24	# byte swap(5)
	srl	$6,$13,8
	andi	$30,$13,0xFF00
	sll	$13,$13,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$13,$25
	or	$6,$30
	or	$13,$6
	 lwl	$14,6*4+3($5)
	sll	$25,$1,5	# 5
	addu	$24,$31
	 lwr	$14,6*4+0($5)
	srl	$6,$1,27
	addu	$24,$25
	xor	$25,$3,$7
	addu	$24,$6
	sll	$30,$2,30
	and	$25,$2
	srl	$2,$2,2
	xor	$25,$7
	addu	$24,$13
	or	$2,$30
	addu	$24,$25
	srl	$25,$14,24	# byte swap(6)
	srl	$6,$14,8
	andi	$30,$14,0xFF00
	sll	$14,$14,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$14,$25
	or	$6,$30
	or	$14,$6
	 lwl	$15,7*4+3($5)
	sll	$25,$24,5	# 6
	addu	$7,$31
	 lwr	$15,7*4+0($5)
	srl	$6,$24,27
	addu	$7,$25
	xor	$25,$2,$3
	addu	$7,$6
	sll	$30,$1,30
	and	$25,$1
	srl	$1,$1,2
	xor	$25,$3
	addu	$7,$14
	or	$1,$30
	addu	$7,$25
	srl	$25,$15,24	# byte swap(7)
	srl	$6,$15,8
	andi	$30,$15,0xFF00
	sll	$15,$15,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$15,$25
	or	$6,$30
	or	$15,$6
	 lwl	$16,8*4+3($5)
	sll	$25,$7,5	# 7
	addu	$3,$31
	 lwr	$16,8*4+0($5)
	srl	$6,$7,27
	addu	$3,$25
	xor	$25,$1,$2
	addu	$3,$6
	sll	$30,$24,30
	and	$25,$24
	srl	$24,$24,2
	xor	$25,$2
	addu	$3,$15
	or	$24,$30
	addu	$3,$25
	srl	$25,$16,24	# byte swap(8)
	srl	$6,$16,8
	andi	$30,$16,0xFF00
	sll	$16,$16,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$16,$25
	or	$6,$30
	or	$16,$6
	 lwl	$17,9*4+3($5)
	sll	$25,$3,5	# 8
	addu	$2,$31
	 lwr	$17,9*4+0($5)
	srl	$6,$3,27
	addu	$2,$25
	xor	$25,$24,$1
	addu	$2,$6
	sll	$30,$7,30
	and	$25,$7
	srl	$7,$7,2
	xor	$25,$1
	addu	$2,$16
	or	$7,$30
	addu	$2,$25
	srl	$25,$17,24	# byte swap(9)
	srl	$6,$17,8
	andi	$30,$17,0xFF00
	sll	$17,$17,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$17,$25
	or	$6,$30
	or	$17,$6
	 lwl	$18,10*4+3($5)
	sll	$25,$2,5	# 9
	addu	$1,$31
	 lwr	$18,10*4+0($5)
	srl	$6,$2,27
	addu	$1,$25
	xor	$25,$7,$24
	addu	$1,$6
	sll	$30,$3,30
	and	$25,$3
	srl	$3,$3,2
	xor	$25,$24
	addu	$1,$17
	or	$3,$30
	addu	$1,$25
	srl	$25,$18,24	# byte swap(10)
	srl	$6,$18,8
	andi	$30,$18,0xFF00
	sll	$18,$18,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$18,$25
	or	$6,$30
	or	$18,$6
	 lwl	$19,11*4+3($5)
	sll	$25,$1,5	# 10
	addu	$24,$31
	 lwr	$19,11*4+0($5)
	srl	$6,$1,27
	addu	$24,$25
	xor	$25,$3,$7
	addu	$24,$6
	sll	$30,$2,30
	and	$25,$2
	srl	$2,$2,2
	xor	$25,$7
	addu	$24,$18
	or	$2,$30
	addu	$24,$25
	srl	$25,$19,24	# byte swap(11)
	srl	$6,$19,8
	andi	$30,$19,0xFF00
	sll	$19,$19,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$19,$25
	or	$6,$30
	or	$19,$6
	 lwl	$20,12*4+3($5)
	sll	$25,$24,5	# 11
	addu	$7,$31
	 lwr	$20,12*4+0($5)
	srl	$6,$24,27
	addu	$7,$25
	xor	$25,$2,$3
	addu	$7,$6
	sll	$30,$1,30
	and	$25,$1
	srl	$1,$1,2
	xor	$25,$3
	addu	$7,$19
	or	$1,$30
	addu	$7,$25
	srl	$25,$20,24	# byte swap(12)
	srl	$6,$20,8
	andi	$30,$20,0xFF00
	sll	$20,$20,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$20,$25
	or	$6,$30
	or	$20,$6
	 lwl	$21,13*4+3($5)
	sll	$25,$7,5	# 12
	addu	$3,$31
	 lwr	$21,13*4+0($5)
	srl	$6,$7,27
	addu	$3,$25
	xor	$25,$1,$2
	addu	$3,$6
	sll	$30,$24,30
	and	$25,$24
	srl	$24,$24,2
	xor	$25,$2
	addu	$3,$20
	or	$24,$30
	addu	$3,$25
	srl	$25,$21,24	# byte swap(13)
	srl	$6,$21,8
	andi	$30,$21,0xFF00
	sll	$21,$21,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$21,$25
	or	$6,$30
	or	$21,$6
	 lwl	$22,14*4+3($5)
	sll	$25,$3,5	# 13
	addu	$2,$31
	 lwr	$22,14*4+0($5)
	srl	$6,$3,27
	addu	$2,$25
	xor	$25,$24,$1
	addu	$2,$6
	sll	$30,$7,30
	and	$25,$7
	srl	$7,$7,2
	xor	$25,$1
	addu	$2,$21
	or	$7,$30
	addu	$2,$25
	srl	$25,$22,24	# byte swap(14)
	srl	$6,$22,8
	andi	$30,$22,0xFF00
	sll	$22,$22,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$22,$25
	or	$6,$30
	or	$22,$6
	 lwl	$23,15*4+3($5)
	sll	$25,$2,5	# 14
	addu	$1,$31
	 lwr	$23,15*4+0($5)
	srl	$6,$2,27
	addu	$1,$25
	xor	$25,$7,$24
	addu	$1,$6
	sll	$30,$3,30
	and	$25,$3
	srl	$3,$3,2
	xor	$25,$24
	addu	$1,$22
	or	$3,$30
	addu	$1,$25
	srl	$25,$23,24	# byte swap(15)
	srl	$6,$23,8
	andi	$30,$23,0xFF00
	sll	$23,$23,24
	andi	$6,0xFF00
	sll	$30,$30,8
	or	$23,$25
	or	$23,$6
	or	$23,$30
	 xor	$8,$10
	sll	$25,$1,5	# 15
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$8,$16
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$8,$21
	sll	$30,$2,30
	and	$25,$2
	 srl	$6,$8,31
	 addu	$8,$8
	srl	$2,$2,2
	xor	$25,$7
	 or	$8,$6
	addu	$24,$23
	or	$2,$30
	addu	$24,$25
	 xor	$9,$11
	sll	$25,$24,5	# 16
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$9,$17
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$9,$22
	sll	$30,$1,30
	and	$25,$1
	 srl	$6,$9,31
	 addu	$9,$9
	srl	$1,$1,2
	xor	$25,$3
	 or	$9,$6
	addu	$7,$8
	or	$1,$30
	addu	$7,$25
	 xor	$10,$12
	sll	$25,$7,5	# 17
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$10,$18
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$10,$23
	sll	$30,$24,30
	and	$25,$24
	 srl	$6,$10,31
	 addu	$10,$10
	srl	$24,$24,2
	xor	$25,$2
	 or	$10,$6
	addu	$3,$9
	or	$24,$30
	addu	$3,$25
	 xor	$11,$13
	sll	$25,$3,5	# 18
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$11,$19
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$11,$8
	sll	$30,$7,30
	and	$25,$7
	 srl	$6,$11,31
	 addu	$11,$11
	srl	$7,$7,2
	xor	$25,$1
	 or	$11,$6
	addu	$2,$10
	or	$7,$30
	addu	$2,$25
	 xor	$12,$14
	sll	$25,$2,5	# 19
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$12,$20
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$12,$9
	sll	$30,$3,30
	and	$25,$3
	 srl	$6,$12,31
	 addu	$12,$12
	srl	$3,$3,2
	xor	$25,$24
	 or	$12,$6
	addu	$1,$11
	or	$3,$30
	addu	$1,$25
	lui	$31,0x6ed9
	ori	$31,0xeba1	# K_20_39
	 xor	$13,$15
	sll	$25,$1,5	# 20
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$13,$21
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$13,$10
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$13,31
	 addu	$13,$13
	srl	$2,$2,2
	addu	$24,$12
	 or	$13,$6
	or	$2,$30
	addu	$24,$25
	 xor	$14,$16
	sll	$25,$24,5	# 21
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$14,$22
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$14,$11
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$14,31
	 addu	$14,$14
	srl	$1,$1,2
	addu	$7,$13
	 or	$14,$6
	or	$1,$30
	addu	$7,$25
	 xor	$15,$17
	sll	$25,$7,5	# 22
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$15,$23
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$15,$12
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$15,31
	 addu	$15,$15
	srl	$24,$24,2
	addu	$3,$14
	 or	$15,$6
	or	$24,$30
	addu	$3,$25
	 xor	$16,$18
	sll	$25,$3,5	# 23
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$16,$8
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$16,$13
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$16,31
	 addu	$16,$16
	srl	$7,$7,2
	addu	$2,$15
	 or	$16,$6
	or	$7,$30
	addu	$2,$25
	 xor	$17,$19
	sll	$25,$2,5	# 24
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$17,$9
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$17,$14
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$17,31
	 addu	$17,$17
	srl	$3,$3,2
	addu	$1,$16
	 or	$17,$6
	or	$3,$30
	addu	$1,$25
	 xor	$18,$20
	sll	$25,$1,5	# 25
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$18,$10
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$18,$15
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$18,31
	 addu	$18,$18
	srl	$2,$2,2
	addu	$24,$17
	 or	$18,$6
	or	$2,$30
	addu	$24,$25
	 xor	$19,$21
	sll	$25,$24,5	# 26
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$19,$11
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$19,$16
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$19,31
	 addu	$19,$19
	srl	$1,$1,2
	addu	$7,$18
	 or	$19,$6
	or	$1,$30
	addu	$7,$25
	 xor	$20,$22
	sll	$25,$7,5	# 27
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$20,$12
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$20,$17
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$20,31
	 addu	$20,$20
	srl	$24,$24,2
	addu	$3,$19
	 or	$20,$6
	or	$24,$30
	addu	$3,$25
	 xor	$21,$23
	sll	$25,$3,5	# 28
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$21,$13
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$21,$18
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$21,31
	 addu	$21,$21
	srl	$7,$7,2
	addu	$2,$20
	 or	$21,$6
	or	$7,$30
	addu	$2,$25
	 xor	$22,$8
	sll	$25,$2,5	# 29
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$22,$14
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$22,$19
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$22,31
	 addu	$22,$22
	srl	$3,$3,2
	addu	$1,$21
	 or	$22,$6
	or	$3,$30
	addu	$1,$25
	 xor	$23,$9
	sll	$25,$1,5	# 30
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$23,$15
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$23,$20
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$23,31
	 addu	$23,$23
	srl	$2,$2,2
	addu	$24,$22
	 or	$23,$6
	or	$2,$30
	addu	$24,$25
	 xor	$8,$10
	sll	$25,$24,5	# 31
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$8,$16
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$8,$21
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$8,31
	 addu	$8,$8
	srl	$1,$1,2
	addu	$7,$23
	 or	$8,$6
	or	$1,$30
	addu	$7,$25
	 xor	$9,$11
	sll	$25,$7,5	# 32
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$9,$17
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$9,$22
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$9,31
	 addu	$9,$9
	srl	$24,$24,2
	addu	$3,$8
	 or	$9,$6
	or	$24,$30
	addu	$3,$25
	 xor	$10,$12
	sll	$25,$3,5	# 33
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$10,$18
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$10,$23
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$10,31
	 addu	$10,$10
	srl	$7,$7,2
	addu	$2,$9
	 or	$10,$6
	or	$7,$30
	addu	$2,$25
	 xor	$11,$13
	sll	$25,$2,5	# 34
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$11,$19
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$11,$8
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$11,31
	 addu	$11,$11
	srl	$3,$3,2
	addu	$1,$10
	 or	$11,$6
	or	$3,$30
	addu	$1,$25
	 xor	$12,$14
	sll	$25,$1,5	# 35
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$12,$20
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$12,$9
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$12,31
	 addu	$12,$12
	srl	$2,$2,2
	addu	$24,$11
	 or	$12,$6
	or	$2,$30
	addu	$24,$25
	 xor	$13,$15
	sll	$25,$24,5	# 36
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$13,$21
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$13,$10
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$13,31
	 addu	$13,$13
	srl	$1,$1,2
	addu	$7,$12
	 or	$13,$6
	or	$1,$30
	addu	$7,$25
	 xor	$14,$16
	sll	$25,$7,5	# 37
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$14,$22
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$14,$11
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$14,31
	 addu	$14,$14
	srl	$24,$24,2
	addu	$3,$13
	 or	$14,$6
	or	$24,$30
	addu	$3,$25
	 xor	$15,$17
	sll	$25,$3,5	# 38
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$15,$23
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$15,$12
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$15,31
	 addu	$15,$15
	srl	$7,$7,2
	addu	$2,$14
	 or	$15,$6
	or	$7,$30
	addu	$2,$25
	 xor	$16,$18
	sll	$25,$2,5	# 39
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$16,$8
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$16,$13
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$16,31
	 addu	$16,$16
	srl	$3,$3,2
	addu	$1,$15
	 or	$16,$6
	or	$3,$30
	addu	$1,$25
	lui	$31,0x8f1b
	ori	$31,0xbcdc	# K_40_59
	 xor	$17,$19
	sll	$25,$1,5	# 40
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$17,$9
	and	$25,$3,$7
	addu	$24,$6
	 xor	$17,$14
	sll	$30,$2,30
	addu	$24,$25
	 srl	$6,$17,31
	xor	$25,$3,$7
	 addu	$17,$17
	and	$25,$2
	srl	$2,$2,2
	 or	$17,$6
	addu	$24,$16
	or	$2,$30
	addu	$24,$25
	 xor	$18,$20
	sll	$25,$24,5	# 41
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$18,$10
	and	$25,$2,$3
	addu	$7,$6
	 xor	$18,$15
	sll	$30,$1,30
	addu	$7,$25
	 srl	$6,$18,31
	xor	$25,$2,$3
	 addu	$18,$18
	and	$25,$1
	srl	$1,$1,2
	 or	$18,$6
	addu	$7,$17
	or	$1,$30
	addu	$7,$25
	 xor	$19,$21
	sll	$25,$7,5	# 42
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$19,$11
	and	$25,$1,$2
	addu	$3,$6
	 xor	$19,$16
	sll	$30,$24,30
	addu	$3,$25
	 srl	$6,$19,31
	xor	$25,$1,$2
	 addu	$19,$19
	and	$25,$24
	srl	$24,$24,2
	 or	$19,$6
	addu	$3,$18
	or	$24,$30
	addu	$3,$25
	 xor	$20,$22
	sll	$25,$3,5	# 43
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$20,$12
	and	$25,$24,$1
	addu	$2,$6
	 xor	$20,$17
	sll	$30,$7,30
	addu	$2,$25
	 srl	$6,$20,31
	xor	$25,$24,$1
	 addu	$20,$20
	and	$25,$7
	srl	$7,$7,2
	 or	$20,$6
	addu	$2,$19
	or	$7,$30
	addu	$2,$25
	 xor	$21,$23
	sll	$25,$2,5	# 44
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$21,$13
	and	$25,$7,$24
	addu	$1,$6
	 xor	$21,$18
	sll	$30,$3,30
	addu	$1,$25
	 srl	$6,$21,31
	xor	$25,$7,$24
	 addu	$21,$21
	and	$25,$3
	srl	$3,$3,2
	 or	$21,$6
	addu	$1,$20
	or	$3,$30
	addu	$1,$25
	 xor	$22,$8
	sll	$25,$1,5	# 45
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$22,$14
	and	$25,$3,$7
	addu	$24,$6
	 xor	$22,$19
	sll	$30,$2,30
	addu	$24,$25
	 srl	$6,$22,31
	xor	$25,$3,$7
	 addu	$22,$22
	and	$25,$2
	srl	$2,$2,2
	 or	$22,$6
	addu	$24,$21
	or	$2,$30
	addu	$24,$25
	 xor	$23,$9
	sll	$25,$24,5	# 46
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$23,$15
	and	$25,$2,$3
	addu	$7,$6
	 xor	$23,$20
	sll	$30,$1,30
	addu	$7,$25
	 srl	$6,$23,31
	xor	$25,$2,$3
	 addu	$23,$23
	and	$25,$1
	srl	$1,$1,2
	 or	$23,$6
	addu	$7,$22
	or	$1,$30
	addu	$7,$25
	 xor	$8,$10
	sll	$25,$7,5	# 47
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$8,$16
	and	$25,$1,$2
	addu	$3,$6
	 xor	$8,$21
	sll	$30,$24,30
	addu	$3,$25
	 srl	$6,$8,31
	xor	$25,$1,$2
	 addu	$8,$8
	and	$25,$24
	srl	$24,$24,2
	 or	$8,$6
	addu	$3,$23
	or	$24,$30
	addu	$3,$25
	 xor	$9,$11
	sll	$25,$3,5	# 48
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$9,$17
	and	$25,$24,$1
	addu	$2,$6
	 xor	$9,$22
	sll	$30,$7,30
	addu	$2,$25
	 srl	$6,$9,31
	xor	$25,$24,$1
	 addu	$9,$9
	and	$25,$7
	srl	$7,$7,2
	 or	$9,$6
	addu	$2,$8
	or	$7,$30
	addu	$2,$25
	 xor	$10,$12
	sll	$25,$2,5	# 49
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$10,$18
	and	$25,$7,$24
	addu	$1,$6
	 xor	$10,$23
	sll	$30,$3,30
	addu	$1,$25
	 srl	$6,$10,31
	xor	$25,$7,$24
	 addu	$10,$10
	and	$25,$3
	srl	$3,$3,2
	 or	$10,$6
	addu	$1,$9
	or	$3,$30
	addu	$1,$25
	 xor	$11,$13
	sll	$25,$1,5	# 50
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$11,$19
	and	$25,$3,$7
	addu	$24,$6
	 xor	$11,$8
	sll	$30,$2,30
	addu	$24,$25
	 srl	$6,$11,31
	xor	$25,$3,$7
	 addu	$11,$11
	and	$25,$2
	srl	$2,$2,2
	 or	$11,$6
	addu	$24,$10
	or	$2,$30
	addu	$24,$25
	 xor	$12,$14
	sll	$25,$24,5	# 51
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$12,$20
	and	$25,$2,$3
	addu	$7,$6
	 xor	$12,$9
	sll	$30,$1,30
	addu	$7,$25
	 srl	$6,$12,31
	xor	$25,$2,$3
	 addu	$12,$12
	and	$25,$1
	srl	$1,$1,2
	 or	$12,$6
	addu	$7,$11
	or	$1,$30
	addu	$7,$25
	 xor	$13,$15
	sll	$25,$7,5	# 52
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$13,$21
	and	$25,$1,$2
	addu	$3,$6
	 xor	$13,$10
	sll	$30,$24,30
	addu	$3,$25
	 srl	$6,$13,31
	xor	$25,$1,$2
	 addu	$13,$13
	and	$25,$24
	srl	$24,$24,2
	 or	$13,$6
	addu	$3,$12
	or	$24,$30
	addu	$3,$25
	 xor	$14,$16
	sll	$25,$3,5	# 53
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$14,$22
	and	$25,$24,$1
	addu	$2,$6
	 xor	$14,$11
	sll	$30,$7,30
	addu	$2,$25
	 srl	$6,$14,31
	xor	$25,$24,$1
	 addu	$14,$14
	and	$25,$7
	srl	$7,$7,2
	 or	$14,$6
	addu	$2,$13
	or	$7,$30
	addu	$2,$25
	 xor	$15,$17
	sll	$25,$2,5	# 54
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$15,$23
	and	$25,$7,$24
	addu	$1,$6
	 xor	$15,$12
	sll	$30,$3,30
	addu	$1,$25
	 srl	$6,$15,31
	xor	$25,$7,$24
	 addu	$15,$15
	and	$25,$3
	srl	$3,$3,2
	 or	$15,$6
	addu	$1,$14
	or	$3,$30
	addu	$1,$25
	 xor	$16,$18
	sll	$25,$1,5	# 55
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$16,$8
	and	$25,$3,$7
	addu	$24,$6
	 xor	$16,$13
	sll	$30,$2,30
	addu	$24,$25
	 srl	$6,$16,31
	xor	$25,$3,$7
	 addu	$16,$16
	and	$25,$2
	srl	$2,$2,2
	 or	$16,$6
	addu	$24,$15
	or	$2,$30
	addu	$24,$25
	 xor	$17,$19
	sll	$25,$24,5	# 56
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$17,$9
	and	$25,$2,$3
	addu	$7,$6
	 xor	$17,$14
	sll	$30,$1,30
	addu	$7,$25
	 srl	$6,$17,31
	xor	$25,$2,$3
	 addu	$17,$17
	and	$25,$1
	srl	$1,$1,2
	 or	$17,$6
	addu	$7,$16
	or	$1,$30
	addu	$7,$25
	 xor	$18,$20
	sll	$25,$7,5	# 57
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$18,$10
	and	$25,$1,$2
	addu	$3,$6
	 xor	$18,$15
	sll	$30,$24,30
	addu	$3,$25
	 srl	$6,$18,31
	xor	$25,$1,$2
	 addu	$18,$18
	and	$25,$24
	srl	$24,$24,2
	 or	$18,$6
	addu	$3,$17
	or	$24,$30
	addu	$3,$25
	 xor	$19,$21
	sll	$25,$3,5	# 58
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$19,$11
	and	$25,$24,$1
	addu	$2,$6
	 xor	$19,$16
	sll	$30,$7,30
	addu	$2,$25
	 srl	$6,$19,31
	xor	$25,$24,$1
	 addu	$19,$19
	and	$25,$7
	srl	$7,$7,2
	 or	$19,$6
	addu	$2,$18
	or	$7,$30
	addu	$2,$25
	 xor	$20,$22
	sll	$25,$2,5	# 59
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$20,$12
	and	$25,$7,$24
	addu	$1,$6
	 xor	$20,$17
	sll	$30,$3,30
	addu	$1,$25
	 srl	$6,$20,31
	xor	$25,$7,$24
	 addu	$20,$20
	and	$25,$3
	srl	$3,$3,2
	 or	$20,$6
	addu	$1,$19
	or	$3,$30
	addu	$1,$25
	lui	$31,0xca62
	ori	$31,0xc1d6	# K_60_79
	 xor	$21,$23
	sll	$25,$1,5	# 60
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$21,$13
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$21,$18
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$21,31
	 addu	$21,$21
	srl	$2,$2,2
	addu	$24,$20
	 or	$21,$6
	or	$2,$30
	addu	$24,$25
	 xor	$22,$8
	sll	$25,$24,5	# 61
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$22,$14
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$22,$19
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$22,31
	 addu	$22,$22
	srl	$1,$1,2
	addu	$7,$21
	 or	$22,$6
	or	$1,$30
	addu	$7,$25
	 xor	$23,$9
	sll	$25,$7,5	# 62
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$23,$15
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$23,$20
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$23,31
	 addu	$23,$23
	srl	$24,$24,2
	addu	$3,$22
	 or	$23,$6
	or	$24,$30
	addu	$3,$25
	 xor	$8,$10
	sll	$25,$3,5	# 63
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$8,$16
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$8,$21
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$8,31
	 addu	$8,$8
	srl	$7,$7,2
	addu	$2,$23
	 or	$8,$6
	or	$7,$30
	addu	$2,$25
	 xor	$9,$11
	sll	$25,$2,5	# 64
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$9,$17
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$9,$22
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$9,31
	 addu	$9,$9
	srl	$3,$3,2
	addu	$1,$8
	 or	$9,$6
	or	$3,$30
	addu	$1,$25
	 xor	$10,$12
	sll	$25,$1,5	# 65
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$10,$18
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$10,$23
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$10,31
	 addu	$10,$10
	srl	$2,$2,2
	addu	$24,$9
	 or	$10,$6
	or	$2,$30
	addu	$24,$25
	 xor	$11,$13
	sll	$25,$24,5	# 66
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$11,$19
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$11,$8
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$11,31
	 addu	$11,$11
	srl	$1,$1,2
	addu	$7,$10
	 or	$11,$6
	or	$1,$30
	addu	$7,$25
	 xor	$12,$14
	sll	$25,$7,5	# 67
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$12,$20
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$12,$9
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$12,31
	 addu	$12,$12
	srl	$24,$24,2
	addu	$3,$11
	 or	$12,$6
	or	$24,$30
	addu	$3,$25
	 xor	$13,$15
	sll	$25,$3,5	# 68
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$13,$21
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$13,$10
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$13,31
	 addu	$13,$13
	srl	$7,$7,2
	addu	$2,$12
	 or	$13,$6
	or	$7,$30
	addu	$2,$25
	 xor	$14,$16
	sll	$25,$2,5	# 69
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$14,$22
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$14,$11
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$14,31
	 addu	$14,$14
	srl	$3,$3,2
	addu	$1,$13
	 or	$14,$6
	or	$3,$30
	addu	$1,$25
	 xor	$15,$17
	sll	$25,$1,5	# 70
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$15,$23
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$15,$12
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$15,31
	 addu	$15,$15
	srl	$2,$2,2
	addu	$24,$14
	 or	$15,$6
	or	$2,$30
	addu	$24,$25
	 xor	$16,$18
	sll	$25,$24,5	# 71
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$16,$8
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$16,$13
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$16,31
	 addu	$16,$16
	srl	$1,$1,2
	addu	$7,$15
	 or	$16,$6
	or	$1,$30
	addu	$7,$25
	 xor	$17,$19
	sll	$25,$7,5	# 72
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$17,$9
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$17,$14
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$17,31
	 addu	$17,$17
	srl	$24,$24,2
	addu	$3,$16
	 or	$17,$6
	or	$24,$30
	addu	$3,$25
	 xor	$18,$20
	sll	$25,$3,5	# 73
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$18,$10
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$18,$15
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$18,31
	 addu	$18,$18
	srl	$7,$7,2
	addu	$2,$17
	 or	$18,$6
	or	$7,$30
	addu	$2,$25
	 xor	$19,$21
	sll	$25,$2,5	# 74
	addu	$1,$31
	srl	$6,$2,27
	addu	$1,$25
	 xor	$19,$11
	xor	$25,$7,$24
	addu	$1,$6
	 xor	$19,$16
	sll	$30,$3,30
	xor	$25,$3
	 srl	$6,$19,31
	 addu	$19,$19
	srl	$3,$3,2
	addu	$1,$18
	 or	$19,$6
	or	$3,$30
	addu	$1,$25
	 xor	$20,$22
	sll	$25,$1,5	# 75
	addu	$24,$31
	srl	$6,$1,27
	addu	$24,$25
	 xor	$20,$12
	xor	$25,$3,$7
	addu	$24,$6
	 xor	$20,$17
	sll	$30,$2,30
	xor	$25,$2
	 srl	$6,$20,31
	 addu	$20,$20
	srl	$2,$2,2
	addu	$24,$19
	 or	$20,$6
	or	$2,$30
	addu	$24,$25
	 xor	$21,$23
	sll	$25,$24,5	# 76
	addu	$7,$31
	srl	$6,$24,27
	addu	$7,$25
	 xor	$21,$13
	xor	$25,$2,$3
	addu	$7,$6
	 xor	$21,$18
	sll	$30,$1,30
	xor	$25,$1
	 srl	$6,$21,31
	 addu	$21,$21
	srl	$1,$1,2
	addu	$7,$20
	 or	$21,$6
	or	$1,$30
	addu	$7,$25
	 xor	$22,$8
	sll	$25,$7,5	# 77
	addu	$3,$31
	srl	$6,$7,27
	addu	$3,$25
	 xor	$22,$14
	xor	$25,$1,$2
	addu	$3,$6
	 xor	$22,$19
	sll	$30,$24,30
	xor	$25,$24
	 srl	$6,$22,31
	 addu	$22,$22
	srl	$24,$24,2
	addu	$3,$21
	 or	$22,$6
	or	$24,$30
	addu	$3,$25
	 xor	$23,$9
	sll	$25,$3,5	# 78
	addu	$2,$31
	srl	$6,$3,27
	addu	$2,$25
	 xor	$23,$15
	xor	$25,$24,$1
	addu	$2,$6
	 xor	$23,$20
	sll	$30,$7,30
	xor	$25,$7
	 srl	$6,$23,31
	 addu	$23,$23
	srl	$7,$7,2
	addu	$2,$22
	 or	$23,$6
	or	$7,$30
	addu	$2,$25
	 lw	$8,0($4)
	sll	$25,$2,5	# 79
	addu	$1,$31
	 lw	$9,4($4)
	srl	$6,$2,27
	addu	$1,$25
	 lw	$10,8($4)
	xor	$25,$7,$24
	addu	$1,$6
	 lw	$11,12($4)
	sll	$30,$3,30
	xor	$25,$3
	 lw	$12,16($4)
	srl	$3,$3,2
	addu	$1,$23
	or	$3,$30
	addu	$1,$25
	add $5,64
	lw	$6,0($29)

	addu	$1,$8
	addu	$2,$9
	sw	$1,0($4)
	addu	$3,$10
	addu	$7,$11
	sw	$2,4($4)
	addu	$24,$12
	sw	$3,8($4)
	sw	$7,12($4)
	sw	$24,16($4)
	.set	noreorder
	bne	$5,$6,.Loop
	nop

	.set	noreorder
	lw	$31,(16-1)*4($29)
	lw	$30,(16-2)*4($29)
	lw	$23,(16-3)*4($29)
	lw	$22,(16-4)*4($29)
	lw	$21,(16-5)*4($29)
	lw	$20,(16-6)*4($29)
	lw	$19,(16-7)*4($29)
	lw	$18,(16-8)*4($29)
	lw	$17,(16-9)*4($29)
	lw	$16,(16-10)*4($29)
	jr	$31
	add $29,16*4
.end	sha1_block_data_order
.rdata
.asciiz	"SHA1 for MIPS, CRYPTOGAMS by <appro@openssl.org>"
