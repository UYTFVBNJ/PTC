.data
_ret: .asciiz "\n"
.text
func_Ks3ddgAOR:
  sw $ra, 0($sp)
  lw $t1, -8($sp)
  li $t2, 0
  bgt $t1, $t2, label4
  b label2
label4:
  lw $t1, -4($sp)
  li $t2, 0
  bgt $t1, $t2, label3
  b label2
label3:
  li $t1, 2147483647
  lw $t2, -4($sp)
  sub $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -8($sp)
  lw $t2, -12($sp)
  bgt $t1, $t2, label0
  b label2
label2:
  lw $t1, -8($sp)
  li $t2, 0
  blt $t1, $t2, label6
  b label1
label6:
  lw $t1, -4($sp)
  li $t2, 0
  blt $t1, $t2, label5
  b label1
label5:
  li $t1, 0
  li $t2, -2147483648
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  lw $t1, -16($sp)
  lw $t2, -4($sp)
  sub $t0, $t1, $t2
  sw $t0, -20($sp)
  lw $t1, -8($sp)
  lw $t2, -20($sp)
  blt $t1, $t2, label0
  b label1
label0:
  lw $t1, -8($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1:
  lw $t1, -8($sp)
  lw $t2, -4($sp)
  add $t0, $t1, $t2
  sw $t0, -24($sp)
  lw $t1, -24($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_qwVpn:
  sw $ra, 0($sp)
  lw $t1, -8($sp)
  li $t2, 0
  bgt $t1, $t2, label11
  b label9
label11:
  lw $t1, -4($sp)
  li $t2, 0
  blt $t1, $t2, label10
  b label9
label10:
  li $t1, 2147483647
  lw $t2, -4($sp)
  add $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -8($sp)
  lw $t2, -12($sp)
  bgt $t1, $t2, label7
  b label9
label9:
  lw $t1, -8($sp)
  li $t2, 0
  blt $t1, $t2, label13
  b label8
label13:
  lw $t1, -4($sp)
  li $t2, 0
  bgt $t1, $t2, label12
  b label8
label12:
  li $t1, 0
  li $t2, -2147483648
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  lw $t1, -16($sp)
  lw $t2, -4($sp)
  add $t0, $t1, $t2
  sw $t0, -20($sp)
  lw $t1, -8($sp)
  lw $t2, -20($sp)
  blt $t1, $t2, label7
  b label8
label7:
  lw $t1, -8($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label8:
  lw $t1, -8($sp)
  lw $t2, -4($sp)
  sub $t0, $t1, $t2
  sw $t0, -24($sp)
  lw $t1, -24($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_DVt:
  sw $ra, 0($sp)
  lw $t1, -8($sp)
  li $t2, 0
  bgt $t1, $t2, label20
  b label18
label20:
  lw $t1, -4($sp)
  li $t2, 0
  bgt $t1, $t2, label19
  b label18
label19:
  li $t1, 2147483647
  lw $t2, -4($sp)
  div $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -8($sp)
  lw $t2, -12($sp)
  bgt $t1, $t2, label14
  b label18
label18:
  lw $t1, -8($sp)
  li $t2, 0
  bgt $t1, $t2, label22
  b label17
label22:
  lw $t1, -4($sp)
  li $t2, 0
  ble $t1, $t2, label21
  b label17
label21:
  li $t1, 0
  li $t2, -2147483648
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  lw $t1, -16($sp)
  lw $t2, -8($sp)
  div $t0, $t1, $t2
  sw $t0, -20($sp)
  lw $t1, -4($sp)
  lw $t2, -20($sp)
  blt $t1, $t2, label14
  b label17
label17:
  lw $t1, -8($sp)
  li $t2, 0
  ble $t1, $t2, label24
  b label16
label24:
  lw $t1, -4($sp)
  li $t2, 0
  bgt $t1, $t2, label23
  b label16
label23:
  li $t1, 0
  li $t2, -2147483648
  sub $t0, $t1, $t2
  sw $t0, -24($sp)
  lw $t1, -24($sp)
  lw $t2, -4($sp)
  div $t0, $t1, $t2
  sw $t0, -28($sp)
  lw $t1, -8($sp)
  lw $t2, -28($sp)
  blt $t1, $t2, label14
  b label16
label16:
  lw $t1, -8($sp)
  li $t2, 0
  ble $t1, $t2, label27
  b label15
label27:
  lw $t1, -4($sp)
  li $t2, 0
  ble $t1, $t2, label26
  b label15
label26:
  lw $t1, -8($sp)
  li $t2, 0
  bne $t1, $t2, label25
  b label15
label25:
  li $t1, 2147483647
  lw $t2, -8($sp)
  div $t0, $t1, $t2
  sw $t0, -32($sp)
  lw $t1, -4($sp)
  lw $t2, -32($sp)
  blt $t1, $t2, label14
  b label15
label14:
  lw $t1, -8($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label15:
  lw $t1, -8($sp)
  lw $t2, -4($sp)
  mulo $t0, $t1, $t2
  sw $t0, -36($sp)
  lw $t1, -36($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_memmO_5s:
  sw $ra, 0($sp)
  lw $t1, -4($sp)
  li $t2, 0
  beq $t1, $t2, label28
  b label30
label30:
  li $t1, 0
  li $t2, -2147483648
  sub $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -8($sp)
  lw $t2, -12($sp)
  beq $t1, $t2, label31
  b label29
label31:
  li $t1, 0
  li $t2, 1
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  lw $t1, -4($sp)
  lw $t2, -16($sp)
  beq $t1, $t2, label28
  b label29
label28:
  lw $t1, -8($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label29:
  lw $t1, -8($sp)
  lw $t2, -4($sp)
  div $t0, $t1, $t2
  sw $t0, -20($sp)
  lw $t1, -20($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_rT:
  sw $ra, 0($sp)
  lw $t1, -8($sp)
  li $t2, 0
  blt $t1, $t2, label32
  b label34
label34:
  lw $t1, -8($sp)
  lw $t2, -4($sp)
  bge $t1, $t2, label32
  b label33
label32:
  li $t1, 0
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label33:
  lw $t1, -8($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_Mdvzosjy:
  sw $ra, 0($sp)
  li $t1, 14135
  move $t0, $t1
  sw $t0, -4($sp)
  li $t1, 5291
  move $t0, $t1
  sw $t0, -8($sp)
  li $t1, 62208
  li $t2, 0
  bne $t1, $t2, label37
  b label38
label38:
  lw $t1, -4($sp)
  lw $t2, -8($sp)
  mulo $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -12($sp)
  li $t2, 49314
  ble $t1, $t2, label35
  b label37
label37:
  li $t1, 0
  li $t2, 22801
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  lw $t1, -16($sp)
  li $t2, 19025
  sub $t0, $t1, $t2
  sw $t0, -20($sp)
  lw $t1, -20($sp)
  li $t2, 61032
  bge $t1, $t2, label35
  b label36
  label35:
  li $t0, 1
  sw $t0, -24($sp)
  b label39
  label36:
  li $t0, 0
  sw $t0, -24($sp)
  label39:
  lw $t1, -4($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -28($sp)
  lw $t1, -8($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -32($sp)
  lw $t1, -8($sp)
  li $t2, 0
  bne $t1, $t2, label41
  b label40
  label40:
  li $t0, 1
  sw $t0, -36($sp)
  b label42
  label41:
  li $t0, 0
  sw $t0, -36($sp)
  label42:
  li $t1, 32461
  lw $t2, -36($sp)
  div $t0, $t1, $t2
  sw $t0, -40($sp)
  lw $t1, -40($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_eZzKtHKigb:
  sw $ra, 0($sp)
  li $t1, 40544
  li $t2, 0
  bne $t1, $t2, label43
  b label45
label45:
  lw $t1, -8($sp)
  lw $t2, -8($sp)
  add $t0, $t1, $t2
  sw $t0, -12($sp)
  lw $t1, -12($sp)
  li $t2, 54995
  sub $t0, $t1, $t2
  sw $t0, -16($sp)
  li $t1, 38126
  li $t2, 0
  bne $t1, $t2, label47
  b label46
  label46:
  li $t0, 1
  sw $t0, -20($sp)
  b label48
  label47:
  li $t0, 0
  sw $t0, -20($sp)
  label48:
  li $t1, 0
  lw $t2, -20($sp)
  sub $t0, $t1, $t2
  sw $t0, -24($sp)
  lw $t1, -24($sp)
  sw $t1, -40($sp)
  lw $t1, -16($sp)
  sw $t1, -44($sp)
  sub $sp, $sp, 36
  jal func_id_eZzKtHKigb
  add $sp, $sp, 36
  move $t0, $v0
  sw $t0, -28($sp)
  lw $t1, -28($sp)
  li $t2, 0
  bne $t1, $t2, label43
  b label44
  label43:
  li $t0, 1
  sw $t0, -32($sp)
  b label49
  label44:
  li $t0, 0
  sw $t0, -32($sp)
  label49:
  lw $t1, -32($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_v1:
  sw $ra, 0($sp)
  sub $t0, $sp, 68
  sw $t0, -28($sp)
  sub $t0, $sp, 104
  sw $t0, -76($sp)
  sub $t0, $sp, 116
  sw $t0, -112($sp)
  sub $t0, $sp, 128
  sw $t0, -124($sp)
  sub $t0, $sp, 176
  sw $t0, -136($sp)
  sub $t0, $sp, 204
  sw $t0, -184($sp)
  sub $t0, $sp, 220
  sw $t0, -212($sp)
  sub $t0, $sp, 260
  sw $t0, -228($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -264($sp)
  lw $t1, -28($sp)
  lw $t2, -264($sp)
  add $t0, $t1, $t2
  sw $t0, -268($sp)
  li $t1, 49660
  move $t0, $t1
  lw $s0, -268($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -28($sp)
  lw $t2, -272($sp)
  add $t0, $t1, $t2
  sw $t0, -276($sp)
  li $t1, 47027
  move $t0, $t1
  lw $s0, -276($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -280($sp)
  lw $t1, -28($sp)
  lw $t2, -280($sp)
  add $t0, $t1, $t2
  sw $t0, -284($sp)
  li $t1, 29831
  move $t0, $t1
  lw $s0, -284($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -288($sp)
  lw $t1, -28($sp)
  lw $t2, -288($sp)
  add $t0, $t1, $t2
  sw $t0, -292($sp)
  li $t1, 16657
  move $t0, $t1
  lw $s0, -292($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -296($sp)
  lw $t1, -28($sp)
  lw $t2, -296($sp)
  add $t0, $t1, $t2
  sw $t0, -300($sp)
  li $t1, 47133
  move $t0, $t1
  lw $s0, -300($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -304($sp)
  lw $t1, -28($sp)
  lw $t2, -304($sp)
  add $t0, $t1, $t2
  sw $t0, -308($sp)
  li $t1, 43896
  move $t0, $t1
  lw $s0, -308($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -312($sp)
  lw $t1, -28($sp)
  lw $t2, -312($sp)
  add $t0, $t1, $t2
  sw $t0, -316($sp)
  li $t1, 2125
  move $t0, $t1
  lw $s0, -316($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -320($sp)
  lw $t1, -28($sp)
  lw $t2, -320($sp)
  add $t0, $t1, $t2
  sw $t0, -324($sp)
  li $t1, 28065
  move $t0, $t1
  lw $s0, -324($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -328($sp)
  lw $t1, -28($sp)
  lw $t2, -328($sp)
  add $t0, $t1, $t2
  sw $t0, -332($sp)
  li $t1, 53783
  move $t0, $t1
  lw $s0, -332($sp)
  sw $t0, 0($s0)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -336($sp)
  lw $t1, -28($sp)
  lw $t2, -336($sp)
  add $t0, $t1, $t2
  sw $t0, -340($sp)
  li $t1, 25263
  move $t0, $t1
  lw $s0, -340($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -344($sp)
  lw $t1, -76($sp)
  lw $t2, -344($sp)
  add $t0, $t1, $t2
  sw $t0, -348($sp)
  li $t1, 10281
  move $t0, $t1
  lw $s0, -348($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -352($sp)
  lw $t1, -76($sp)
  lw $t2, -352($sp)
  add $t0, $t1, $t2
  sw $t0, -356($sp)
  li $t1, 16575
  move $t0, $t1
  lw $s0, -356($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -360($sp)
  lw $t1, -76($sp)
  lw $t2, -360($sp)
  add $t0, $t1, $t2
  sw $t0, -364($sp)
  li $t1, 976
  move $t0, $t1
  lw $s0, -364($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -368($sp)
  lw $t1, -76($sp)
  lw $t2, -368($sp)
  add $t0, $t1, $t2
  sw $t0, -372($sp)
  li $t1, 21454
  move $t0, $t1
  lw $s0, -372($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -376($sp)
  lw $t1, -76($sp)
  lw $t2, -376($sp)
  add $t0, $t1, $t2
  sw $t0, -380($sp)
  li $t1, 63141
  move $t0, $t1
  lw $s0, -380($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -384($sp)
  lw $t1, -76($sp)
  lw $t2, -384($sp)
  add $t0, $t1, $t2
  sw $t0, -388($sp)
  li $t1, 64519
  move $t0, $t1
  lw $s0, -388($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -392($sp)
  lw $t1, -76($sp)
  lw $t2, -392($sp)
  add $t0, $t1, $t2
  sw $t0, -396($sp)
  li $t1, 56959
  move $t0, $t1
  lw $s0, -396($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -400($sp)
  lw $t1, -112($sp)
  lw $t2, -400($sp)
  add $t0, $t1, $t2
  sw $t0, -404($sp)
  li $t1, 60059
  move $t0, $t1
  lw $s0, -404($sp)
  sw $t0, 0($s0)
  li $t1, 63940
  move $t0, $t1
  sw $t0, -408($sp)
  li $t1, 10485
  move $t0, $t1
  sw $t0, -412($sp)
  li $t1, 8658
  move $t0, $t1
  sw $t0, -416($sp)
  li $t1, 3695
  move $t0, $t1
  sw $t0, -420($sp)
  li $t1, 7157
  move $t0, $t1
  sw $t0, -424($sp)
  li $t1, 57972
  move $t0, $t1
  sw $t0, -428($sp)
  li $t1, 26496
  move $t0, $t1
  sw $t0, -432($sp)
  li $t1, 26182
  move $t0, $t1
  sw $t0, -436($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -124($sp)
  lw $t2, -440($sp)
  add $t0, $t1, $t2
  sw $t0, -444($sp)
  li $t1, 53468
  move $t0, $t1
  lw $s0, -444($sp)
  sw $t0, 0($s0)
  li $t1, 58958
  move $t0, $t1
  sw $t0, -448($sp)
  li $t1, 1191
  move $t0, $t1
  sw $t0, -452($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -456($sp)
  lw $t1, -136($sp)
  lw $t2, -456($sp)
  add $t0, $t1, $t2
  sw $t0, -460($sp)
  li $t1, 42927
  move $t0, $t1
  lw $s0, -460($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -464($sp)
  lw $t1, -136($sp)
  lw $t2, -464($sp)
  add $t0, $t1, $t2
  sw $t0, -468($sp)
  li $t1, 31548
  move $t0, $t1
  lw $s0, -468($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -472($sp)
  lw $t1, -136($sp)
  lw $t2, -472($sp)
  add $t0, $t1, $t2
  sw $t0, -476($sp)
  li $t1, 50851
  move $t0, $t1
  lw $s0, -476($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -480($sp)
  lw $t1, -136($sp)
  lw $t2, -480($sp)
  add $t0, $t1, $t2
  sw $t0, -484($sp)
  li $t1, 24418
  move $t0, $t1
  lw $s0, -484($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -488($sp)
  lw $t1, -136($sp)
  lw $t2, -488($sp)
  add $t0, $t1, $t2
  sw $t0, -492($sp)
  li $t1, 61379
  move $t0, $t1
  lw $s0, -492($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -496($sp)
  lw $t1, -136($sp)
  lw $t2, -496($sp)
  add $t0, $t1, $t2
  sw $t0, -500($sp)
  li $t1, 1972
  move $t0, $t1
  lw $s0, -500($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -504($sp)
  lw $t1, -136($sp)
  lw $t2, -504($sp)
  add $t0, $t1, $t2
  sw $t0, -508($sp)
  li $t1, 6015
  move $t0, $t1
  lw $s0, -508($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -512($sp)
  lw $t1, -136($sp)
  lw $t2, -512($sp)
  add $t0, $t1, $t2
  sw $t0, -516($sp)
  li $t1, 39739
  move $t0, $t1
  lw $s0, -516($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -520($sp)
  lw $t1, -136($sp)
  lw $t2, -520($sp)
  add $t0, $t1, $t2
  sw $t0, -524($sp)
  li $t1, 4097
  move $t0, $t1
  lw $s0, -524($sp)
  sw $t0, 0($s0)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -528($sp)
  lw $t1, -136($sp)
  lw $t2, -528($sp)
  add $t0, $t1, $t2
  sw $t0, -532($sp)
  li $t1, 34080
  move $t0, $t1
  lw $s0, -532($sp)
  sw $t0, 0($s0)
  li $t1, 27986
  move $t0, $t1
  sw $t0, -536($sp)
  li $t1, 29360
  move $t0, $t1
  sw $t0, -540($sp)
  li $t1, 44362
  move $t0, $t1
  sw $t0, -544($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -548($sp)
  lw $t1, -184($sp)
  lw $t2, -548($sp)
  add $t0, $t1, $t2
  sw $t0, -552($sp)
  li $t1, 44561
  move $t0, $t1
  lw $s0, -552($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -556($sp)
  lw $t1, -184($sp)
  lw $t2, -556($sp)
  add $t0, $t1, $t2
  sw $t0, -560($sp)
  li $t1, 30337
  move $t0, $t1
  lw $s0, -560($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -564($sp)
  lw $t1, -184($sp)
  lw $t2, -564($sp)
  add $t0, $t1, $t2
  sw $t0, -568($sp)
  li $t1, 280
  move $t0, $t1
  lw $s0, -568($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -572($sp)
  lw $t1, -184($sp)
  lw $t2, -572($sp)
  add $t0, $t1, $t2
  sw $t0, -576($sp)
  li $t1, 42166
  move $t0, $t1
  lw $s0, -576($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -580($sp)
  lw $t1, -184($sp)
  lw $t2, -580($sp)
  add $t0, $t1, $t2
  sw $t0, -584($sp)
  li $t1, 29320
  move $t0, $t1
  lw $s0, -584($sp)
  sw $t0, 0($s0)
  li $t1, 57239
  move $t0, $t1
  sw $t0, -588($sp)
  li $t1, 36689
  move $t0, $t1
  sw $t0, -592($sp)
  li $t1, 27724
  move $t0, $t1
  sw $t0, -596($sp)
  li $t1, 2188
  move $t0, $t1
  sw $t0, -600($sp)
  li $t1, 45347
  move $t0, $t1
  sw $t0, -604($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -608($sp)
  lw $t1, -212($sp)
  lw $t2, -608($sp)
  add $t0, $t1, $t2
  sw $t0, -612($sp)
  li $t1, 31419
  move $t0, $t1
  lw $s0, -612($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -616($sp)
  lw $t1, -212($sp)
  lw $t2, -616($sp)
  add $t0, $t1, $t2
  sw $t0, -620($sp)
  li $t1, 9346
  move $t0, $t1
  lw $s0, -620($sp)
  sw $t0, 0($s0)
  li $t1, 37783
  move $t0, $t1
  sw $t0, -624($sp)
  li $t1, 57915
  move $t0, $t1
  sw $t0, -628($sp)
  li $t1, 35528
  move $t0, $t1
  sw $t0, -632($sp)
  li $t1, 25715
  move $t0, $t1
  sw $t0, -636($sp)
  li $t1, 51337
  move $t0, $t1
  sw $t0, -640($sp)
  li $t1, 36719
  move $t0, $t1
  sw $t0, -644($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -648($sp)
  lw $t1, -228($sp)
  lw $t2, -648($sp)
  add $t0, $t1, $t2
  sw $t0, -652($sp)
  li $t1, 3106
  move $t0, $t1
  lw $s0, -652($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -656($sp)
  lw $t1, -228($sp)
  lw $t2, -656($sp)
  add $t0, $t1, $t2
  sw $t0, -660($sp)
  li $t1, 17349
  move $t0, $t1
  lw $s0, -660($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -664($sp)
  lw $t1, -228($sp)
  lw $t2, -664($sp)
  add $t0, $t1, $t2
  sw $t0, -668($sp)
  li $t1, 22034
  move $t0, $t1
  lw $s0, -668($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -672($sp)
  lw $t1, -228($sp)
  lw $t2, -672($sp)
  add $t0, $t1, $t2
  sw $t0, -676($sp)
  li $t1, 27524
  move $t0, $t1
  lw $s0, -676($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -680($sp)
  lw $t1, -228($sp)
  lw $t2, -680($sp)
  add $t0, $t1, $t2
  sw $t0, -684($sp)
  li $t1, 13192
  move $t0, $t1
  lw $s0, -684($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -688($sp)
  lw $t1, -228($sp)
  lw $t2, -688($sp)
  add $t0, $t1, $t2
  sw $t0, -692($sp)
  li $t1, 24006
  move $t0, $t1
  lw $s0, -692($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -696($sp)
  lw $t1, -228($sp)
  lw $t2, -696($sp)
  add $t0, $t1, $t2
  sw $t0, -700($sp)
  li $t1, 33540
  move $t0, $t1
  lw $s0, -700($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -704($sp)
  lw $t1, -228($sp)
  lw $t2, -704($sp)
  add $t0, $t1, $t2
  sw $t0, -708($sp)
  li $t1, 52931
  move $t0, $t1
  lw $s0, -708($sp)
  sw $t0, 0($s0)
  li $t1, 28104
  move $t0, $t1
  sw $t0, -712($sp)
  li $t1, 2084
  move $t0, $t1
  sw $t0, -716($sp)
  li $t1, 15381
  move $t0, $t1
  sw $t0, -720($sp)
  li $t1, 57464
  move $t0, $t1
  sw $t0, -724($sp)
  li $t1, 46446
  move $t0, $t1
  sw $t0, -416($sp)
  lw $t1, -628($sp)
  li $t2, 0
  bne $t1, $t2, label54
  b label53
  label53:
  li $t0, 1
  sw $t0, -728($sp)
  b label55
  label54:
  li $t0, 0
  sw $t0, -728($sp)
  label55:
  li $t1, 0
  lw $t2, -728($sp)
  sub $t0, $t1, $t2
  sw $t0, -732($sp)
  lw $t1, -732($sp)
  sw $t1, -4528($sp)
  lw $t1, -416($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -736($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -740($sp)
  lw $t1, -212($sp)
  lw $t2, -740($sp)
  add $t0, $t1, $t2
  sw $t0, -744($sp)
  lw $t1, -736($sp)
  lw $t2, -744($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -748($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -752($sp)
  lw $t1, -124($sp)
  lw $t2, -752($sp)
  add $t0, $t1, $t2
  sw $t0, -756($sp)
  lw $t1, -748($sp)
  lw $t2, -756($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -760($sp)
  lw $t1, -540($sp)
  li $t2, 0
  bne $t1, $t2, label57
  b label56
  label56:
  li $t0, 1
  sw $t0, -764($sp)
  b label58
  label57:
  li $t0, 0
  sw $t0, -764($sp)
  label58:
  lw $t1, -764($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -768($sp)
  lw $t1, -136($sp)
  lw $t2, -768($sp)
  add $t0, $t1, $t2
  sw $t0, -772($sp)
  lw $t1, -760($sp)
  lw $t2, -772($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -776($sp)
  lw $t1, -776($sp)
  li $t2, 0
  bne $t1, $t2, label50
  b label51
label50:
  sub $t0, $sp, 808
  sw $t0, -784($sp)
  sub $t0, $sp, 828
  sw $t0, -816($sp)
  li $t1, 51585
  move $t0, $t1
  sw $t0, -832($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -836($sp)
  lw $t1, -784($sp)
  lw $t2, -836($sp)
  add $t0, $t1, $t2
  sw $t0, -840($sp)
  li $t1, 38429
  move $t0, $t1
  lw $s0, -840($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -844($sp)
  lw $t1, -784($sp)
  lw $t2, -844($sp)
  add $t0, $t1, $t2
  sw $t0, -848($sp)
  li $t1, 7725
  move $t0, $t1
  lw $s0, -848($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -852($sp)
  lw $t1, -784($sp)
  lw $t2, -852($sp)
  add $t0, $t1, $t2
  sw $t0, -856($sp)
  li $t1, 13773
  move $t0, $t1
  lw $s0, -856($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -860($sp)
  lw $t1, -784($sp)
  lw $t2, -860($sp)
  add $t0, $t1, $t2
  sw $t0, -864($sp)
  li $t1, 40618
  move $t0, $t1
  lw $s0, -864($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -868($sp)
  lw $t1, -784($sp)
  lw $t2, -868($sp)
  add $t0, $t1, $t2
  sw $t0, -872($sp)
  li $t1, 53072
  move $t0, $t1
  lw $s0, -872($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -876($sp)
  lw $t1, -784($sp)
  lw $t2, -876($sp)
  add $t0, $t1, $t2
  sw $t0, -880($sp)
  li $t1, 45192
  move $t0, $t1
  lw $s0, -880($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -884($sp)
  lw $t1, -816($sp)
  lw $t2, -884($sp)
  add $t0, $t1, $t2
  sw $t0, -888($sp)
  li $t1, 49964
  move $t0, $t1
  lw $s0, -888($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -892($sp)
  lw $t1, -816($sp)
  lw $t2, -892($sp)
  add $t0, $t1, $t2
  sw $t0, -896($sp)
  li $t1, 25319
  move $t0, $t1
  lw $s0, -896($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -900($sp)
  lw $t1, -816($sp)
  lw $t2, -900($sp)
  add $t0, $t1, $t2
  sw $t0, -904($sp)
  li $t1, 37572
  move $t0, $t1
  lw $s0, -904($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -908($sp)
  lw $t1, -28($sp)
  lw $t2, -908($sp)
  add $t0, $t1, $t2
  sw $t0, -912($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -916($sp)
  lw $t1, -112($sp)
  lw $t2, -916($sp)
  add $t0, $t1, $t2
  sw $t0, -920($sp)
  lw $t1, -912($sp)
  lw $t1, 0($t1)
  lw $t2, -920($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -924($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -928($sp)
  lw $t1, -928($sp)
  li $t2, 0
  bne $t1, $t2, label64
  b label63
  label63:
  li $t0, 1
  sw $t0, -932($sp)
  b label65
  label64:
  li $t0, 0
  sw $t0, -932($sp)
  label65:
  lw $t1, -924($sp)
  lw $t2, -932($sp)
  beq $t1, $t2, label62
  b label60
label62:
  li $t1, 0
  li $t2, 54140
  sub $t0, $t1, $t2
  sw $t0, -936($sp)
  li $t1, 40723
  li $t2, 0
  bne $t1, $t2, label67
  b label66
  label66:
  li $t0, 1
  sw $t0, -940($sp)
  b label68
  label67:
  li $t0, 0
  sw $t0, -940($sp)
  label68:
  lw $t1, -936($sp)
  lw $t2, -940($sp)
  mulo $t0, $t1, $t2
  sw $t0, -944($sp)
  lw $t1, -944($sp)
  li $t2, 0
  bne $t1, $t2, label59
  b label60
label59:
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -948($sp)
  lw $t1, -212($sp)
  lw $t2, -948($sp)
  add $t0, $t1, $t2
  sw $t0, -952($sp)
  lw $t1, -952($sp)
  lw $t1, 0($t1)
  lw $t2, -628($sp)
  bge $t1, $t2, label69
  b label72
label72:
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -956($sp)
  lw $t1, -956($sp)
  li $t2, 53915
  div $t0, $t1, $t2
  sw $t0, -960($sp)
  lw $t1, -604($sp)
  li $t2, 0
  bne $t1, $t2, label74
  b label73
  label73:
  li $t0, 1
  sw $t0, -964($sp)
  b label75
  label74:
  li $t0, 0
  sw $t0, -964($sp)
  label75:
  lw $t1, -964($sp)
  lw $t2, -628($sp)
  mulo $t0, $t1, $t2
  sw $t0, -968($sp)
  li $t1, 37181
  lw $t2, -632($sp)
  div $t0, $t1, $t2
  sw $t0, -972($sp)
  lw $t1, -972($sp)
  lw $t2, -432($sp)
  add $t0, $t1, $t2
  sw $t0, -976($sp)
  li $t1, 49669
  li $t2, 0
  bne $t1, $t2, label77
  b label76
  label76:
  li $t0, 1
  sw $t0, -980($sp)
  b label78
  label77:
  li $t0, 0
  sw $t0, -980($sp)
  label78:
  lw $t1, -980($sp)
  lw $t2, -416($sp)
  sub $t0, $t1, $t2
  sw $t0, -984($sp)
  lw $t1, -984($sp)
  sw $t1, -4528($sp)
  lw $t1, -976($sp)
  sw $t1, -4532($sp)
  lw $t1, -416($sp)
  sw $t1, -4536($sp)
  lw $t1, -968($sp)
  sw $t1, -4540($sp)
  lw $t1, -960($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -988($sp)
  li $t1, 0
  lw $t2, -988($sp)
  sub $t0, $t1, $t2
  sw $t0, -992($sp)
  lw $t1, -992($sp)
  li $t2, 0
  bne $t1, $t2, label69
  b label70
label69:
  li $t1, 41311
  lw $t2, -588($sp)
  div $t0, $t1, $t2
  sw $t0, -996($sp)
  lw $t1, -996($sp)
  li $t2, 0
  bne $t1, $t2, label82
  b label84
label84:
  lw $t1, -724($sp)
  li $t2, 0
  bne $t1, $t2, label82
  b label83
  label82:
  li $t0, 1
  sw $t0, -1000($sp)
  b label85
  label83:
  li $t0, 0
  sw $t0, -1000($sp)
  label85:
  lw $t1, -1000($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1004($sp)
  lw $t1, -784($sp)
  lw $t2, -1004($sp)
  add $t0, $t1, $t2
  sw $t0, -1008($sp)
  lw $t1, -1008($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label81
  b label80
label81:
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1012($sp)
  li $t1, 65285
  lw $t2, -1012($sp)
  sub $t0, $t1, $t2
  sw $t0, -1016($sp)
  lw $t1, -1016($sp)
  li $t2, 0
  bne $t1, $t2, label79
  b label80
  label79:
  li $t0, 1
  sw $t0, -1020($sp)
  b label86
  label80:
  li $t0, 0
  sw $t0, -1020($sp)
  label86:
  lw $t1, -1020($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label71
label70:
  li $t1, 0
  li $t2, 51753
  sub $t0, $t1, $t2
  sw $t0, -1024($sp)
  lw $t1, -1024($sp)
  lw $t2, -20($sp)
  bne $t1, $t2, label89
  b label90
  label89:
  li $t0, 1
  sw $t0, -1028($sp)
  b label91
  label90:
  li $t0, 0
  sw $t0, -1028($sp)
  label91:
  lw $t1, -628($sp)
  lw $t2, -424($sp)
  ble $t1, $t2, label94
  b label95
  label94:
  li $t0, 1
  sw $t0, -1032($sp)
  b label96
  label95:
  li $t0, 0
  sw $t0, -1032($sp)
  label96:
  lw $t1, -1032($sp)
  lw $t2, -832($sp)
  blt $t1, $t2, label92
  b label93
  label92:
  li $t0, 1
  sw $t0, -1036($sp)
  b label97
  label93:
  li $t0, 0
  sw $t0, -1036($sp)
  label97:
  lw $t1, -1036($sp)
  sw $t1, -4528($sp)
  lw $t1, -1028($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1040($sp)
  lw $t1, -592($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1044($sp)
  lw $t1, -76($sp)
  lw $t2, -1044($sp)
  add $t0, $t1, $t2
  sw $t0, -1048($sp)
  li $t1, 56692
  lw $t2, -408($sp)
  div $t0, $t1, $t2
  sw $t0, -1052($sp)
  lw $t1, -1048($sp)
  lw $t1, 0($t1)
  lw $t2, -1052($sp)
  sub $t0, $t1, $t2
  sw $t0, -1056($sp)
  lw $t1, -1040($sp)
  lw $t2, -1056($sp)
  beq $t1, $t2, label87
  b label88
  label87:
  li $t0, 1
  sw $t0, -1060($sp)
  b label98
  label88:
  li $t0, 0
  sw $t0, -1060($sp)
  label98:
label71:
  b label61
label60:
label99:
  lw $t1, -428($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1064($sp)
  lw $t1, -816($sp)
  lw $t2, -1064($sp)
  add $t0, $t1, $t2
  sw $t0, -1068($sp)
  li $t1, 57213
  li $t2, 32664
  blt $t1, $t2, label102
  b label104
label104:
  li $t1, 51099
  li $t2, 0
  bne $t1, $t2, label102
  b label103
  label102:
  li $t0, 1
  sw $t0, -1072($sp)
  b label105
  label103:
  li $t0, 0
  sw $t0, -1072($sp)
  label105:
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1076($sp)
  lw $t1, -228($sp)
  lw $t2, -1076($sp)
  add $t0, $t1, $t2
  sw $t0, -1080($sp)
  lw $t1, -1080($sp)
  lw $t1, 0($t1)
  sw $t1, -4528($sp)
  lw $t1, -1072($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1084($sp)
  lw $t1, -1084($sp)
  sw $t1, -4528($sp)
  lw $t1, -1068($sp)
  lw $t1, 0($t1)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1088($sp)
  lw $t1, -1088($sp)
  li $t2, 0
  bne $t1, $t2, label100
  b label101
label100:
  li $t1, 0
  lw $t2, -420($sp)
  sub $t0, $t1, $t2
  sw $t0, -1092($sp)
  li $t1, 22135
  lw $t2, -1092($sp)
  div $t0, $t1, $t2
  sw $t0, -1096($sp)
  lw $t1, -1096($sp)
  li $t2, 0
  bne $t1, $t2, label106
  b label108
label108:
  li $t1, 65528
  li $t2, 0
  bne $t1, $t2, label110
  b label109
  label109:
  li $t0, 1
  sw $t0, -1100($sp)
  b label111
  label110:
  li $t0, 0
  sw $t0, -1100($sp)
  label111:
  li $t1, 0
  lw $t2, -1100($sp)
  sub $t0, $t1, $t2
  sw $t0, -1104($sp)
  lw $t1, -1104($sp)
  li $t2, 0
  bne $t1, $t2, label106
  b label107
  label106:
  li $t0, 1
  sw $t0, -1108($sp)
  b label112
  label107:
  li $t0, 0
  sw $t0, -1108($sp)
  label112:
  b label99
label101:
label61:
  b label52
label51:
  li $t1, 52284
  move $t0, $t1
  sw $t0, -1112($sp)
  li $t1, 29861
  move $t0, $t1
  sw $t0, -1116($sp)
  li $t1, 13766
  move $t0, $t1
  sw $t0, -1120($sp)
  li $t1, 27366
  move $t0, $t1
  sw $t0, -1124($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1128($sp)
  lw $t1, -1128($sp)
  li $t2, 0
  bne $t1, $t2, label116
  b label115
  label115:
  li $t0, 1
  sw $t0, -1132($sp)
  b label117
  label116:
  li $t0, 0
  sw $t0, -1132($sp)
  label117:
  lw $t1, -1132($sp)
  lw $t2, -432($sp)
  blt $t1, $t2, label113
  b label114
  label113:
  li $t0, 1
  sw $t0, -1136($sp)
  b label118
  label114:
  li $t0, 0
  sw $t0, -1136($sp)
  label118:
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1140($sp)
  li $t1, 0
  li $t2, 17397
  sub $t0, $t1, $t2
  sw $t0, -1144($sp)
  lw $t1, -12($sp)
  lw $t2, -1144($sp)
  div $t0, $t1, $t2
  sw $t0, -1148($sp)
  lw $t1, -1140($sp)
  lw $t2, -1148($sp)
  beq $t1, $t2, label119
  b label120
  label119:
  li $t0, 1
  sw $t0, -1152($sp)
  b label121
  label120:
  li $t0, 0
  sw $t0, -1152($sp)
  label121:
  lw $t1, -1116($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1156($sp)
  lw $t1, -1120($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1160($sp)
  lw $t1, -1124($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1164($sp)
  li $t1, 0
  li $t2, 58958
  sub $t0, $t1, $t2
  sw $t0, -1168($sp)
  li $t1, 0
  lw $t2, -1168($sp)
  sub $t0, $t1, $t2
  sw $t0, -1172($sp)
  li $t1, 0
  lw $t2, -1172($sp)
  sub $t0, $t1, $t2
  sw $t0, -1176($sp)
  lw $t1, -452($sp)
  li $t2, 0
  bne $t1, $t2, label126
  b label125
  label125:
  li $t0, 1
  sw $t0, -1180($sp)
  b label127
  label126:
  li $t0, 0
  sw $t0, -1180($sp)
  label127:
  lw $t1, -1180($sp)
  li $t2, 11794
  sub $t0, $t1, $t2
  sw $t0, -1184($sp)
  lw $t1, -1176($sp)
  lw $t2, -1184($sp)
  bge $t1, $t2, label124
  b label123
label124:
  li $t1, 42717
  lw $t2, -436($sp)
  bge $t1, $t2, label128
  b label129
  label128:
  li $t0, 1
  sw $t0, -1188($sp)
  b label130
  label129:
  li $t0, 0
  sw $t0, -1188($sp)
  label130:
  lw $t1, -1188($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1192($sp)
  lw $t1, -212($sp)
  lw $t2, -1192($sp)
  add $t0, $t1, $t2
  sw $t0, -1196($sp)
  lw $t1, -1196($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label122
  b label123
  label122:
  li $t0, 1
  sw $t0, -1200($sp)
  b label131
  label123:
  li $t0, 0
  sw $t0, -1200($sp)
  label131:
  lw $t1, -1200($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -636($sp)
  lw $t2, -644($sp)
  sub $t0, $t1, $t2
  sw $t0, -1204($sp)
  lw $t1, -1204($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1208($sp)
  lw $t1, -228($sp)
  lw $t2, -1208($sp)
  add $t0, $t1, $t2
  sw $t0, -1212($sp)
  li $t1, 30994
  move $t0, $t1
  sw $t0, -628($sp)
  lw $t1, -628($sp)
  sw $t1, -4528($sp)
  lw $t1, -432($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1216($sp)
  lw $t1, -1212($sp)
  lw $t1, 0($t1)
  lw $t2, -1216($sp)
  mulo $t0, $t1, $t2
  sw $t0, -1220($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1224($sp)
  lw $t1, -1224($sp)
  li $t2, 0
  bne $t1, $t2, label136
  b label135
  label135:
  li $t0, 1
  sw $t0, -1228($sp)
  b label137
  label136:
  li $t0, 0
  sw $t0, -1228($sp)
  label137:
  lw $t1, -1220($sp)
  lw $t2, -1228($sp)
  sub $t0, $t1, $t2
  sw $t0, -1232($sp)
  lw $t1, -1232($sp)
  li $t2, 0
  bne $t1, $t2, label132
  b label133
label132:
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1236($sp)
  lw $t1, -136($sp)
  lw $t2, -1236($sp)
  add $t0, $t1, $t2
  sw $t0, -1240($sp)
  lw $t1, -1240($sp)
  lw $t1, 0($t1)
  lw $t2, -416($sp)
  add $t0, $t1, $t2
  sw $t0, -1244($sp)
  lw $t1, -1116($sp)
  lw $t2, -428($sp)
  beq $t1, $t2, label138
  b label139
  label138:
  li $t0, 1
  sw $t0, -1248($sp)
  b label140
  label139:
  li $t0, 0
  sw $t0, -1248($sp)
  label140:
  lw $t1, -1248($sp)
  sw $t1, -4528($sp)
  lw $t1, -1244($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1252($sp)
  li $t1, 0
  lw $t2, -588($sp)
  sub $t0, $t1, $t2
  sw $t0, -1256($sp)
  lw $t1, -1252($sp)
  lw $t2, -1256($sp)
  sub $t0, $t1, $t2
  sw $t0, -1260($sp)
  lw $t1, -1260($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label134
label133:
  li $t1, 0
  li $t2, 22890
  sub $t0, $t1, $t2
  sw $t0, -1264($sp)
  lw $t1, -1120($sp)
  lw $t2, -1264($sp)
  mulo $t0, $t1, $t2
  sw $t0, -1268($sp)
  li $t1, 54368
  lw $t2, -1268($sp)
  bne $t1, $t2, label141
  b label142
  label141:
  li $t0, 1
  sw $t0, -1272($sp)
  b label143
  label142:
  li $t0, 0
  sw $t0, -1272($sp)
  label143:
label134:
  lw $t1, -716($sp)
  li $t2, 16820
  add $t0, $t1, $t2
  sw $t0, -1276($sp)
  lw $t1, -1276($sp)
  li $t2, 0
  bne $t1, $t2, label144
  b label147
label147:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1280($sp)
  lw $t1, -112($sp)
  lw $t2, -1280($sp)
  add $t0, $t1, $t2
  sw $t0, -1284($sp)
  lw $t1, -1284($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label144
  b label145
label144:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1288($sp)
  lw $t1, -184($sp)
  lw $t2, -1288($sp)
  add $t0, $t1, $t2
  sw $t0, -1292($sp)
  lw $t1, -1292($sp)
  lw $t1, 0($t1)
  lw $t2, -712($sp)
  beq $t1, $t2, label150
  b label151
  label150:
  li $t0, 1
  sw $t0, -1296($sp)
  b label152
  label151:
  li $t0, 0
  sw $t0, -1296($sp)
  label152:
  lw $t1, -420($sp)
  li $t2, 0
  bne $t1, $t2, label154
  b label153
  label153:
  li $t0, 1
  sw $t0, -1300($sp)
  b label155
  label154:
  li $t0, 0
  sw $t0, -1300($sp)
  label155:
  lw $t1, -1296($sp)
  lw $t2, -1300($sp)
  bne $t1, $t2, label148
  b label149
  label148:
  li $t0, 1
  sw $t0, -1304($sp)
  b label156
  label149:
  li $t0, 0
  sw $t0, -1304($sp)
  label156:
  lw $t1, -1304($sp)
  move $t0, $t1
  sw $t0, -724($sp)
  b label146
label145:
  li $t1, 7710
  lw $t2, -716($sp)
  mulo $t0, $t1, $t2
  sw $t0, -1308($sp)
  lw $t1, -1308($sp)
  lw $t2, -1120($sp)
  div $t0, $t1, $t2
  sw $t0, -1312($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1316($sp)
  lw $t1, -228($sp)
  lw $t2, -1316($sp)
  add $t0, $t1, $t2
  sw $t0, -1320($sp)
  lw $t1, -1312($sp)
  lw $t2, -1320($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -1324($sp)
  lw $t1, -448($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1328($sp)
  lw $t1, -112($sp)
  lw $t2, -1328($sp)
  add $t0, $t1, $t2
  sw $t0, -1332($sp)
  li $t1, 0
  lw $t2, -1332($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -1336($sp)
  lw $t1, -1336($sp)
  li $t2, 0
  bne $t1, $t2, label160
  b label159
  label159:
  li $t0, 1
  sw $t0, -1340($sp)
  b label161
  label160:
  li $t0, 0
  sw $t0, -1340($sp)
  label161:
  lw $t1, -1324($sp)
  lw $t2, -1340($sp)
  ble $t1, $t2, label157
  b label158
  label157:
  li $t0, 1
  sw $t0, -1344($sp)
  b label162
  label158:
  li $t0, 0
  sw $t0, -1344($sp)
  label162:
label146:
label163:
  lw $t1, -720($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1348($sp)
  lw $t1, -228($sp)
  lw $t2, -1348($sp)
  add $t0, $t1, $t2
  sw $t0, -1352($sp)
  lw $t1, -1352($sp)
  lw $t1, 0($t1)
  move $t0, $t1
  sw $t0, -596($sp)
  lw $t1, -596($sp)
  move $t0, $t1
  sw $t0, -628($sp)
  lw $t1, -628($sp)
  li $t2, 0
  bne $t1, $t2, label164
  b label165
label164:
  li $t1, 0
  li $t2, 7459
  sub $t0, $t1, $t2
  sw $t0, -1356($sp)
  lw $t1, -1356($sp)
  li $t2, 3299
  ble $t1, $t2, label166
  b label167
  label166:
  li $t0, 1
  sw $t0, -1360($sp)
  b label168
  label167:
  li $t0, 0
  sw $t0, -1360($sp)
  label168:
  lw $t1, -1124($sp)
  li $t2, 0
  bne $t1, $t2, label171
  b label169
label171:
  lw $t1, -592($sp)
  li $t2, 0
  bne $t1, $t2, label169
  b label170
  label169:
  li $t0, 1
  sw $t0, -1364($sp)
  b label172
  label170:
  li $t0, 0
  sw $t0, -1364($sp)
  label172:
  lw $t1, -1364($sp)
  sw $t1, -4528($sp)
  lw $t1, -1360($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1368($sp)
  b label163
label165:
  lw $t1, -1116($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1372($sp)
  lw $t1, -1120($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1376($sp)
  lw $t1, -1124($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1380($sp)
  li $t1, 50402
  li $t2, 0
  bne $t1, $t2, label173
  b label176
label176:
  lw $t1, -428($sp)
  li $t2, 0
  bne $t1, $t2, label173
  b label175
label175:
  lw $t1, -592($sp)
  li $t2, 64672
  div $t0, $t1, $t2
  sw $t0, -1384($sp)
  lw $t1, -1384($sp)
  li $t2, 0
  bne $t1, $t2, label173
  b label174
  label173:
  li $t0, 1
  sw $t0, -1388($sp)
  b label177
  label174:
  li $t0, 0
  sw $t0, -1388($sp)
  label177:
  lw $t1, -1388($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1392($sp)
  lw $t1, -228($sp)
  lw $t2, -1392($sp)
  add $t0, $t1, $t2
  sw $t0, -1396($sp)
  lw $t1, -1396($sp)
  lw $t1, 0($t1)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -1112($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1400($sp)
  li $t1, 35963
  li $t2, 0
  bne $t1, $t2, label179
  b label178
  label178:
  li $t0, 1
  sw $t0, -1404($sp)
  b label180
  label179:
  li $t0, 0
  sw $t0, -1404($sp)
  label180:
  lw $t1, -1404($sp)
  lw $t2, -596($sp)
  add $t0, $t1, $t2
  sw $t0, -1408($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1412($sp)
  lw $t1, -1412($sp)
  li $t2, 35965
  ble $t1, $t2, label181
  b label182
  label181:
  li $t0, 1
  sw $t0, -1416($sp)
  b label183
  label182:
  li $t0, 0
  sw $t0, -1416($sp)
  label183:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1420($sp)
  lw $t1, -212($sp)
  lw $t2, -1420($sp)
  add $t0, $t1, $t2
  sw $t0, -1424($sp)
  lw $t1, -604($sp)
  li $t2, 0
  bne $t1, $t2, label184
  b label186
label186:
  lw $t1, -1112($sp)
  li $t2, 0
  bne $t1, $t2, label184
  b label185
  label184:
  li $t0, 1
  sw $t0, -1428($sp)
  b label187
  label185:
  li $t0, 0
  sw $t0, -1428($sp)
  label187:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1432($sp)
  lw $t1, -136($sp)
  lw $t2, -1432($sp)
  add $t0, $t1, $t2
  sw $t0, -1436($sp)
  lw $t1, -1436($sp)
  lw $t1, 0($t1)
  sw $t1, -4528($sp)
  lw $t1, -1428($sp)
  sw $t1, -4532($sp)
  lw $t1, -1424($sp)
  lw $t1, 0($t1)
  sw $t1, -4536($sp)
  lw $t1, -1416($sp)
  sw $t1, -4540($sp)
  lw $t1, -1408($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -1440($sp)
  lw $t1, -1440($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label188:
  li $t1, 36566
  move $t0, $t1
  sw $t0, -592($sp)
  lw $t1, -592($sp)
  li $t2, 0
  bne $t1, $t2, label189
  b label190
label189:
  li $t1, 0
  lw $t2, -412($sp)
  sub $t0, $t1, $t2
  sw $t0, -1444($sp)
  li $t1, 22425
  lw $t2, -600($sp)
  mulo $t0, $t1, $t2
  sw $t0, -1448($sp)
  lw $t1, -1444($sp)
  lw $t2, -1448($sp)
  blt $t1, $t2, label191
  b label193
label193:
  lw $t1, -424($sp)
  li $t2, 0
  bne $t1, $t2, label191
  b label192
  label191:
  li $t0, 1
  sw $t0, -1452($sp)
  b label194
  label192:
  li $t0, 0
  sw $t0, -1452($sp)
  label194:
  lw $t1, -1452($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label188
label190:
  lw $t1, -1112($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1456($sp)
  li $t1, 26838
  lw $t2, -632($sp)
  sub $t0, $t1, $t2
  sw $t0, -1460($sp)
  lw $t1, -1460($sp)
  lw $t2, -600($sp)
  beq $t1, $t2, label197
  b label198
  label197:
  li $t0, 1
  sw $t0, -1464($sp)
  b label199
  label198:
  li $t0, 0
  sw $t0, -1464($sp)
  label199:
  lw $t1, -600($sp)
  li $t2, 63932
  add $t0, $t1, $t2
  sw $t0, -1468($sp)
  lw $t1, -1464($sp)
  lw $t2, -1468($sp)
  beq $t1, $t2, label195
  b label196
  label195:
  li $t0, 1
  sw $t0, -1472($sp)
  b label200
  label196:
  li $t0, 0
  sw $t0, -1472($sp)
  label200:
  lw $t1, -1472($sp)
  move $t0, $t1
  sw $t0, -628($sp)
  lw $t1, -628($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label52:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1476($sp)
  lw $t1, -28($sp)
  lw $t2, -1476($sp)
  add $t0, $t1, $t2
  sw $t0, -1480($sp)
  lw $t1, -1480($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1484($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1488($sp)
  lw $t1, -28($sp)
  lw $t2, -1488($sp)
  add $t0, $t1, $t2
  sw $t0, -1492($sp)
  lw $t1, -1492($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1496($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1500($sp)
  lw $t1, -28($sp)
  lw $t2, -1500($sp)
  add $t0, $t1, $t2
  sw $t0, -1504($sp)
  lw $t1, -1504($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1508($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1512($sp)
  lw $t1, -28($sp)
  lw $t2, -1512($sp)
  add $t0, $t1, $t2
  sw $t0, -1516($sp)
  lw $t1, -1516($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1520($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1524($sp)
  lw $t1, -28($sp)
  lw $t2, -1524($sp)
  add $t0, $t1, $t2
  sw $t0, -1528($sp)
  lw $t1, -1528($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1532($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1536($sp)
  lw $t1, -28($sp)
  lw $t2, -1536($sp)
  add $t0, $t1, $t2
  sw $t0, -1540($sp)
  lw $t1, -1540($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1544($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1548($sp)
  lw $t1, -28($sp)
  lw $t2, -1548($sp)
  add $t0, $t1, $t2
  sw $t0, -1552($sp)
  lw $t1, -1552($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1556($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1560($sp)
  lw $t1, -28($sp)
  lw $t2, -1560($sp)
  add $t0, $t1, $t2
  sw $t0, -1564($sp)
  lw $t1, -1564($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1568($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1572($sp)
  lw $t1, -28($sp)
  lw $t2, -1572($sp)
  add $t0, $t1, $t2
  sw $t0, -1576($sp)
  lw $t1, -1576($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1580($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1584($sp)
  lw $t1, -28($sp)
  lw $t2, -1584($sp)
  add $t0, $t1, $t2
  sw $t0, -1588($sp)
  lw $t1, -1588($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1592($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1596($sp)
  lw $t1, -76($sp)
  lw $t2, -1596($sp)
  add $t0, $t1, $t2
  sw $t0, -1600($sp)
  lw $t1, -1600($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1604($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1608($sp)
  lw $t1, -76($sp)
  lw $t2, -1608($sp)
  add $t0, $t1, $t2
  sw $t0, -1612($sp)
  lw $t1, -1612($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1616($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1620($sp)
  lw $t1, -76($sp)
  lw $t2, -1620($sp)
  add $t0, $t1, $t2
  sw $t0, -1624($sp)
  lw $t1, -1624($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1628($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1632($sp)
  lw $t1, -76($sp)
  lw $t2, -1632($sp)
  add $t0, $t1, $t2
  sw $t0, -1636($sp)
  lw $t1, -1636($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1640($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1644($sp)
  lw $t1, -76($sp)
  lw $t2, -1644($sp)
  add $t0, $t1, $t2
  sw $t0, -1648($sp)
  lw $t1, -1648($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1652($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1656($sp)
  lw $t1, -76($sp)
  lw $t2, -1656($sp)
  add $t0, $t1, $t2
  sw $t0, -1660($sp)
  lw $t1, -1660($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1664($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1668($sp)
  lw $t1, -76($sp)
  lw $t2, -1668($sp)
  add $t0, $t1, $t2
  sw $t0, -1672($sp)
  lw $t1, -1672($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1676($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1680($sp)
  lw $t1, -112($sp)
  lw $t2, -1680($sp)
  add $t0, $t1, $t2
  sw $t0, -1684($sp)
  lw $t1, -1684($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1688($sp)
  lw $t1, -408($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1692($sp)
  lw $t1, -412($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1696($sp)
  lw $t1, -416($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1700($sp)
  lw $t1, -420($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1704($sp)
  lw $t1, -424($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1708($sp)
  lw $t1, -428($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1712($sp)
  lw $t1, -432($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1716($sp)
  lw $t1, -436($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1720($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1724($sp)
  lw $t1, -124($sp)
  lw $t2, -1724($sp)
  add $t0, $t1, $t2
  sw $t0, -1728($sp)
  lw $t1, -1728($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1732($sp)
  lw $t1, -448($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1736($sp)
  lw $t1, -452($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1740($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1744($sp)
  lw $t1, -136($sp)
  lw $t2, -1744($sp)
  add $t0, $t1, $t2
  sw $t0, -1748($sp)
  lw $t1, -1748($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1752($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1756($sp)
  lw $t1, -136($sp)
  lw $t2, -1756($sp)
  add $t0, $t1, $t2
  sw $t0, -1760($sp)
  lw $t1, -1760($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1764($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1768($sp)
  lw $t1, -136($sp)
  lw $t2, -1768($sp)
  add $t0, $t1, $t2
  sw $t0, -1772($sp)
  lw $t1, -1772($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1776($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1780($sp)
  lw $t1, -136($sp)
  lw $t2, -1780($sp)
  add $t0, $t1, $t2
  sw $t0, -1784($sp)
  lw $t1, -1784($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1788($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1792($sp)
  lw $t1, -136($sp)
  lw $t2, -1792($sp)
  add $t0, $t1, $t2
  sw $t0, -1796($sp)
  lw $t1, -1796($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1800($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1804($sp)
  lw $t1, -136($sp)
  lw $t2, -1804($sp)
  add $t0, $t1, $t2
  sw $t0, -1808($sp)
  lw $t1, -1808($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1812($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1816($sp)
  lw $t1, -136($sp)
  lw $t2, -1816($sp)
  add $t0, $t1, $t2
  sw $t0, -1820($sp)
  lw $t1, -1820($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1824($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1828($sp)
  lw $t1, -136($sp)
  lw $t2, -1828($sp)
  add $t0, $t1, $t2
  sw $t0, -1832($sp)
  lw $t1, -1832($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1836($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1840($sp)
  lw $t1, -136($sp)
  lw $t2, -1840($sp)
  add $t0, $t1, $t2
  sw $t0, -1844($sp)
  lw $t1, -1844($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1848($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1852($sp)
  lw $t1, -136($sp)
  lw $t2, -1852($sp)
  add $t0, $t1, $t2
  sw $t0, -1856($sp)
  lw $t1, -1856($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1860($sp)
  lw $t1, -536($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1864($sp)
  lw $t1, -540($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1868($sp)
  lw $t1, -544($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1872($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1876($sp)
  lw $t1, -184($sp)
  lw $t2, -1876($sp)
  add $t0, $t1, $t2
  sw $t0, -1880($sp)
  lw $t1, -1880($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1884($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1888($sp)
  lw $t1, -184($sp)
  lw $t2, -1888($sp)
  add $t0, $t1, $t2
  sw $t0, -1892($sp)
  lw $t1, -1892($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1896($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1900($sp)
  lw $t1, -184($sp)
  lw $t2, -1900($sp)
  add $t0, $t1, $t2
  sw $t0, -1904($sp)
  lw $t1, -1904($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1908($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1912($sp)
  lw $t1, -184($sp)
  lw $t2, -1912($sp)
  add $t0, $t1, $t2
  sw $t0, -1916($sp)
  lw $t1, -1916($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1920($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1924($sp)
  lw $t1, -184($sp)
  lw $t2, -1924($sp)
  add $t0, $t1, $t2
  sw $t0, -1928($sp)
  lw $t1, -1928($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1932($sp)
  lw $t1, -588($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1936($sp)
  lw $t1, -592($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1940($sp)
  lw $t1, -596($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1944($sp)
  lw $t1, -600($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1948($sp)
  lw $t1, -604($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1952($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1956($sp)
  lw $t1, -212($sp)
  lw $t2, -1956($sp)
  add $t0, $t1, $t2
  sw $t0, -1960($sp)
  lw $t1, -1960($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1964($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1968($sp)
  lw $t1, -212($sp)
  lw $t2, -1968($sp)
  add $t0, $t1, $t2
  sw $t0, -1972($sp)
  lw $t1, -1972($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1976($sp)
  lw $t1, -624($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1980($sp)
  lw $t1, -628($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1984($sp)
  lw $t1, -632($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1988($sp)
  lw $t1, -636($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1992($sp)
  lw $t1, -640($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1996($sp)
  lw $t1, -644($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2000($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2004($sp)
  lw $t1, -228($sp)
  lw $t2, -2004($sp)
  add $t0, $t1, $t2
  sw $t0, -2008($sp)
  lw $t1, -2008($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2012($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2016($sp)
  lw $t1, -228($sp)
  lw $t2, -2016($sp)
  add $t0, $t1, $t2
  sw $t0, -2020($sp)
  lw $t1, -2020($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2024($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2028($sp)
  lw $t1, -228($sp)
  lw $t2, -2028($sp)
  add $t0, $t1, $t2
  sw $t0, -2032($sp)
  lw $t1, -2032($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2036($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2040($sp)
  lw $t1, -228($sp)
  lw $t2, -2040($sp)
  add $t0, $t1, $t2
  sw $t0, -2044($sp)
  lw $t1, -2044($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2048($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2052($sp)
  lw $t1, -228($sp)
  lw $t2, -2052($sp)
  add $t0, $t1, $t2
  sw $t0, -2056($sp)
  lw $t1, -2056($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2060($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2064($sp)
  lw $t1, -228($sp)
  lw $t2, -2064($sp)
  add $t0, $t1, $t2
  sw $t0, -2068($sp)
  lw $t1, -2068($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2072($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2076($sp)
  lw $t1, -228($sp)
  lw $t2, -2076($sp)
  add $t0, $t1, $t2
  sw $t0, -2080($sp)
  lw $t1, -2080($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2084($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2088($sp)
  lw $t1, -228($sp)
  lw $t2, -2088($sp)
  add $t0, $t1, $t2
  sw $t0, -2092($sp)
  lw $t1, -2092($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2096($sp)
  lw $t1, -712($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2100($sp)
  lw $t1, -716($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2104($sp)
  lw $t1, -720($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2108($sp)
  lw $t1, -724($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2112($sp)
  li $t1, 39823
  lw $t2, -540($sp)
  blt $t1, $t2, label206
  b label207
  label206:
  li $t0, 1
  sw $t0, -2116($sp)
  b label208
  label207:
  li $t0, 0
  sw $t0, -2116($sp)
  label208:
  lw $t1, -2116($sp)
  lw $t2, -644($sp)
  beq $t1, $t2, label204
  b label205
  label204:
  li $t0, 1
  sw $t0, -2120($sp)
  b label209
  label205:
  li $t0, 0
  sw $t0, -2120($sp)
  label209:
  lw $t1, -432($sp)
  lw $t2, -640($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2124($sp)
  lw $t1, -2124($sp)
  lw $t2, -436($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2128($sp)
  lw $t1, -2128($sp)
  sw $t1, -4528($sp)
  lw $t1, -2120($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2132($sp)
  lw $t1, -448($sp)
  li $t2, 0
  bne $t1, $t2, label211
  b label210
  label210:
  li $t0, 1
  sw $t0, -2136($sp)
  b label212
  label211:
  li $t0, 0
  sw $t0, -2136($sp)
  label212:
  lw $t1, -2132($sp)
  lw $t2, -2136($sp)
  add $t0, $t1, $t2
  sw $t0, -2140($sp)
  lw $t1, -2140($sp)
  li $t2, 0
  bne $t1, $t2, label203
  b label202
label203:
  li $t1, 20260
  li $t2, 0
  bne $t1, $t2, label213
  b label214
  label213:
  li $t0, 1
  sw $t0, -2144($sp)
  b label215
  label214:
  li $t0, 0
  sw $t0, -2144($sp)
  label215:
  li $t1, 0
  lw $t2, -2144($sp)
  sub $t0, $t1, $t2
  sw $t0, -2148($sp)
  lw $t1, -2148($sp)
  li $t2, 0
  bne $t1, $t2, label201
  b label202
  label201:
  li $t0, 1
  sw $t0, -2152($sp)
  b label216
  label202:
  li $t0, 0
  sw $t0, -2152($sp)
  label216:
  lw $t1, -2152($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label217:
  li $t1, 10190
  li $t2, 0
  bne $t1, $t2, label221
  b label220
  label220:
  li $t0, 1
  sw $t0, -2156($sp)
  b label222
  label221:
  li $t0, 0
  sw $t0, -2156($sp)
  label222:
  lw $t1, -2156($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2160($sp)
  lw $t1, -228($sp)
  lw $t2, -2160($sp)
  add $t0, $t1, $t2
  sw $t0, -2164($sp)
  lw $t1, -2164($sp)
  lw $t1, 0($t1)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2168($sp)
  lw $t1, -136($sp)
  lw $t2, -2168($sp)
  add $t0, $t1, $t2
  sw $t0, -2172($sp)
  lw $t1, -2172($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label218
  b label219
label218:
  lw $t1, -448($sp)
  li $t2, 17004
  ble $t1, $t2, label228
  b label229
  label228:
  li $t0, 1
  sw $t0, -2176($sp)
  b label230
  label229:
  li $t0, 0
  sw $t0, -2176($sp)
  label230:
  lw $t1, -2176($sp)
  li $t2, 51255
  bgt $t1, $t2, label226
  b label227
  label226:
  li $t0, 1
  sw $t0, -2180($sp)
  b label231
  label227:
  li $t0, 0
  sw $t0, -2180($sp)
  label231:
  li $t1, 0
  li $t2, 41940
  sub $t0, $t1, $t2
  sw $t0, -2184($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2188($sp)
  lw $t1, -16($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2192($sp)
  lw $t1, -28($sp)
  lw $t2, -2192($sp)
  add $t0, $t1, $t2
  sw $t0, -2196($sp)
  li $t1, 0
  lw $t2, -640($sp)
  sub $t0, $t1, $t2
  sw $t0, -2200($sp)
  lw $t1, -2200($sp)
  li $t2, 0
  bne $t1, $t2, label232
  b label234
label234:
  lw $t1, -644($sp)
  li $t2, 0
  bne $t1, $t2, label232
  b label233
  label232:
  li $t0, 1
  sw $t0, -2204($sp)
  b label235
  label233:
  li $t0, 0
  sw $t0, -2204($sp)
  label235:
  lw $t1, -2204($sp)
  sw $t1, -4528($sp)
  lw $t1, -2196($sp)
  lw $t1, 0($t1)
  sw $t1, -4532($sp)
  lw $t1, -2188($sp)
  sw $t1, -4536($sp)
  lw $t1, -2184($sp)
  sw $t1, -4540($sp)
  lw $t1, -2180($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2208($sp)
  li $t1, 45219
  lw $t2, -712($sp)
  div $t0, $t1, $t2
  sw $t0, -2212($sp)
  lw $t1, -2208($sp)
  lw $t2, -2212($sp)
  sub $t0, $t1, $t2
  sw $t0, -2216($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2220($sp)
  lw $t1, -112($sp)
  lw $t2, -2220($sp)
  add $t0, $t1, $t2
  sw $t0, -2224($sp)
  li $t1, 0
  lw $t2, -2224($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -2228($sp)
  li $t1, 62039
  sw $t1, -4528($sp)
  lw $t1, -2228($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2232($sp)
  lw $t1, -2232($sp)
  li $t2, 0
  bne $t1, $t2, label237
  b label236
  label236:
  li $t0, 1
  sw $t0, -2236($sp)
  b label238
  label237:
  li $t0, 0
  sw $t0, -2236($sp)
  label238:
  lw $t1, -2216($sp)
  lw $t2, -2236($sp)
  ble $t1, $t2, label223
  b label225
label225:
  lw $t1, -720($sp)
  lw $t2, -544($sp)
  sub $t0, $t1, $t2
  sw $t0, -2240($sp)
  li $t1, 0
  lw $t2, -720($sp)
  sub $t0, $t1, $t2
  sw $t0, -2244($sp)
  li $t1, 0
  lw $t2, -2244($sp)
  sub $t0, $t1, $t2
  sw $t0, -2248($sp)
  lw $t1, -2248($sp)
  sw $t1, -4528($sp)
  lw $t1, -2240($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2252($sp)
  lw $t1, -2252($sp)
  li $t2, 0
  bne $t1, $t2, label223
  b label224
  label223:
  li $t0, 1
  sw $t0, -2256($sp)
  b label239
  label224:
  li $t0, 0
  sw $t0, -2256($sp)
  label239:
  lw $t1, -2256($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label217
label219:
  li $t1, 4106
  li $t2, 35360
  add $t0, $t1, $t2
  sw $t0, -2260($sp)
  lw $t1, -2260($sp)
  li $t2, 0
  bne $t1, $t2, label245
  b label244
label245:
  li $t1, 29452
  li $t2, 0
  bne $t1, $t2, label243
  b label244
  label243:
  li $t0, 1
  sw $t0, -2264($sp)
  b label246
  label244:
  li $t0, 0
  sw $t0, -2264($sp)
  label246:
  li $t1, 22040
  li $t2, 43070
  div $t0, $t1, $t2
  sw $t0, -2268($sp)
  lw $t1, -724($sp)
  li $t2, 0
  bne $t1, $t2, label249
  b label248
label249:
  li $t1, 46534
  li $t2, 0
  bne $t1, $t2, label247
  b label248
  label247:
  li $t0, 1
  sw $t0, -2272($sp)
  b label250
  label248:
  li $t0, 0
  sw $t0, -2272($sp)
  label250:
  li $t1, 15750
  li $t2, 0
  bne $t1, $t2, label254
  b label253
  label253:
  li $t0, 1
  sw $t0, -2276($sp)
  b label255
  label254:
  li $t0, 0
  sw $t0, -2276($sp)
  label255:
  lw $t1, -2276($sp)
  lw $t2, -416($sp)
  ble $t1, $t2, label251
  b label252
  label251:
  li $t0, 1
  sw $t0, -2280($sp)
  b label256
  label252:
  li $t0, 0
  sw $t0, -2280($sp)
  label256:
  lw $t1, -536($sp)
  lw $t2, -724($sp)
  add $t0, $t1, $t2
  sw $t0, -2284($sp)
  lw $t1, -2284($sp)
  lw $t2, -644($sp)
  add $t0, $t1, $t2
  sw $t0, -2288($sp)
  lw $t1, -2288($sp)
  sw $t1, -4528($sp)
  lw $t1, -2280($sp)
  sw $t1, -4532($sp)
  lw $t1, -2272($sp)
  sw $t1, -4536($sp)
  lw $t1, -2268($sp)
  sw $t1, -4540($sp)
  lw $t1, -2264($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2292($sp)
  li $t1, 0
  lw $t2, -624($sp)
  sub $t0, $t1, $t2
  sw $t0, -2296($sp)
  lw $t1, -2292($sp)
  lw $t2, -2296($sp)
  div $t0, $t1, $t2
  sw $t0, -2300($sp)
  lw $t1, -2300($sp)
  li $t2, 50529
  add $t0, $t1, $t2
  sw $t0, -2304($sp)
  lw $t1, -2304($sp)
  li $t2, 49834
  beq $t1, $t2, label240
  b label241
label240:
  li $t1, 616
  move $t0, $t1
  sw $t0, -2308($sp)
  li $t1, 49665
  move $t0, $t1
  sw $t0, -2312($sp)
  li $t1, 20261
  move $t0, $t1
  sw $t0, -2316($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2320($sp)
  lw $t1, -2320($sp)
  li $t2, 36581
  add $t0, $t1, $t2
  sw $t0, -2324($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2328($sp)
  lw $t1, -228($sp)
  lw $t2, -2328($sp)
  add $t0, $t1, $t2
  sw $t0, -2332($sp)
  li $t1, 0
  lw $t2, -2332($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -2336($sp)
  lw $t1, -2324($sp)
  lw $t2, -2336($sp)
  add $t0, $t1, $t2
  sw $t0, -2340($sp)
  lw $t1, -2340($sp)
  li $t2, 0
  bne $t1, $t2, label257
  b label258
label257:
  sub $t0, $sp, 2352
  sw $t0, -2348($sp)
  sub $t0, $sp, 2376
  sw $t0, -2360($sp)
  sub $t0, $sp, 2396
  sw $t0, -2384($sp)
  sub $t0, $sp, 2420
  sw $t0, -2404($sp)
  sub $t0, $sp, 2464
  sw $t0, -2428($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2468($sp)
  lw $t1, -2348($sp)
  lw $t2, -2468($sp)
  add $t0, $t1, $t2
  sw $t0, -2472($sp)
  li $t1, 29145
  move $t0, $t1
  lw $s0, -2472($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2476($sp)
  lw $t1, -2360($sp)
  lw $t2, -2476($sp)
  add $t0, $t1, $t2
  sw $t0, -2480($sp)
  li $t1, 10281
  move $t0, $t1
  lw $s0, -2480($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2484($sp)
  lw $t1, -2360($sp)
  lw $t2, -2484($sp)
  add $t0, $t1, $t2
  sw $t0, -2488($sp)
  li $t1, 41109
  move $t0, $t1
  lw $s0, -2488($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2492($sp)
  lw $t1, -2360($sp)
  lw $t2, -2492($sp)
  add $t0, $t1, $t2
  sw $t0, -2496($sp)
  li $t1, 51571
  move $t0, $t1
  lw $s0, -2496($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2500($sp)
  lw $t1, -2360($sp)
  lw $t2, -2500($sp)
  add $t0, $t1, $t2
  sw $t0, -2504($sp)
  li $t1, 37119
  move $t0, $t1
  lw $s0, -2504($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2508($sp)
  lw $t1, -2384($sp)
  lw $t2, -2508($sp)
  add $t0, $t1, $t2
  sw $t0, -2512($sp)
  li $t1, 39505
  move $t0, $t1
  lw $s0, -2512($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2516($sp)
  lw $t1, -2384($sp)
  lw $t2, -2516($sp)
  add $t0, $t1, $t2
  sw $t0, -2520($sp)
  li $t1, 25858
  move $t0, $t1
  lw $s0, -2520($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2524($sp)
  lw $t1, -2384($sp)
  lw $t2, -2524($sp)
  add $t0, $t1, $t2
  sw $t0, -2528($sp)
  li $t1, 57379
  move $t0, $t1
  lw $s0, -2528($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2532($sp)
  lw $t1, -2404($sp)
  lw $t2, -2532($sp)
  add $t0, $t1, $t2
  sw $t0, -2536($sp)
  li $t1, 49695
  move $t0, $t1
  lw $s0, -2536($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2540($sp)
  lw $t1, -2404($sp)
  lw $t2, -2540($sp)
  add $t0, $t1, $t2
  sw $t0, -2544($sp)
  li $t1, 42862
  move $t0, $t1
  lw $s0, -2544($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2548($sp)
  lw $t1, -2404($sp)
  lw $t2, -2548($sp)
  add $t0, $t1, $t2
  sw $t0, -2552($sp)
  li $t1, 43098
  move $t0, $t1
  lw $s0, -2552($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2556($sp)
  lw $t1, -2404($sp)
  lw $t2, -2556($sp)
  add $t0, $t1, $t2
  sw $t0, -2560($sp)
  li $t1, 26100
  move $t0, $t1
  lw $s0, -2560($sp)
  sw $t0, 0($s0)
  li $t1, 22545
  move $t0, $t1
  sw $t0, -2564($sp)
  li $t1, 17649
  move $t0, $t1
  sw $t0, -2568($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2572($sp)
  lw $t1, -2428($sp)
  lw $t2, -2572($sp)
  add $t0, $t1, $t2
  sw $t0, -2576($sp)
  li $t1, 25395
  move $t0, $t1
  lw $s0, -2576($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2580($sp)
  lw $t1, -2428($sp)
  lw $t2, -2580($sp)
  add $t0, $t1, $t2
  sw $t0, -2584($sp)
  li $t1, 19049
  move $t0, $t1
  lw $s0, -2584($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2588($sp)
  lw $t1, -2428($sp)
  lw $t2, -2588($sp)
  add $t0, $t1, $t2
  sw $t0, -2592($sp)
  li $t1, 21755
  move $t0, $t1
  lw $s0, -2592($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2596($sp)
  lw $t1, -2428($sp)
  lw $t2, -2596($sp)
  add $t0, $t1, $t2
  sw $t0, -2600($sp)
  li $t1, 60755
  move $t0, $t1
  lw $s0, -2600($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2604($sp)
  lw $t1, -2428($sp)
  lw $t2, -2604($sp)
  add $t0, $t1, $t2
  sw $t0, -2608($sp)
  li $t1, 48501
  move $t0, $t1
  lw $s0, -2608($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2612($sp)
  lw $t1, -2428($sp)
  lw $t2, -2612($sp)
  add $t0, $t1, $t2
  sw $t0, -2616($sp)
  li $t1, 43796
  move $t0, $t1
  lw $s0, -2616($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2620($sp)
  lw $t1, -2428($sp)
  lw $t2, -2620($sp)
  add $t0, $t1, $t2
  sw $t0, -2624($sp)
  li $t1, 38289
  move $t0, $t1
  lw $s0, -2624($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2628($sp)
  lw $t1, -2428($sp)
  lw $t2, -2628($sp)
  add $t0, $t1, $t2
  sw $t0, -2632($sp)
  li $t1, 29500
  move $t0, $t1
  lw $s0, -2632($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2636($sp)
  lw $t1, -2428($sp)
  lw $t2, -2636($sp)
  add $t0, $t1, $t2
  sw $t0, -2640($sp)
  li $t1, 59546
  move $t0, $t1
  lw $s0, -2640($sp)
  sw $t0, 0($s0)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2644($sp)
  lw $t1, -716($sp)
  move $t0, $t1
  sw $t0, -588($sp)
  li $t1, 0
  li $t2, 23282
  sub $t0, $t1, $t2
  sw $t0, -2648($sp)
  lw $t1, -2648($sp)
  li $t2, 13798
  mulo $t0, $t1, $t2
  sw $t0, -2652($sp)
  li $t1, 60162
  li $t2, 7411
  bne $t1, $t2, label262
  b label263
  label262:
  li $t0, 1
  sw $t0, -2656($sp)
  b label264
  label263:
  li $t0, 0
  sw $t0, -2656($sp)
  label264:
  lw $t1, -2656($sp)
  lw $t2, -636($sp)
  beq $t1, $t2, label260
  b label261
  label260:
  li $t0, 1
  sw $t0, -2660($sp)
  b label265
  label261:
  li $t0, 0
  sw $t0, -2660($sp)
  label265:
  li $t1, 0
  li $t2, 31207
  sub $t0, $t1, $t2
  sw $t0, -2664($sp)
  lw $t1, -2664($sp)
  li $t2, 0
  bne $t1, $t2, label266
  b label268
label268:
  lw $t1, -416($sp)
  li $t2, 0
  bne $t1, $t2, label266
  b label267
  label266:
  li $t0, 1
  sw $t0, -2668($sp)
  b label269
  label267:
  li $t0, 0
  sw $t0, -2668($sp)
  label269:
  lw $t1, -2668($sp)
  sw $t1, -4528($sp)
  li $t1, 34059
  sw $t1, -4532($sp)
  lw $t1, -2660($sp)
  sw $t1, -4536($sp)
  lw $t1, -2652($sp)
  sw $t1, -4540($sp)
  lw $t1, -588($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -2672($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2676($sp)
  lw $t1, -2348($sp)
  lw $t2, -2676($sp)
  add $t0, $t1, $t2
  sw $t0, -2680($sp)
  lw $t1, -2680($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2684($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2688($sp)
  lw $t1, -2360($sp)
  lw $t2, -2688($sp)
  add $t0, $t1, $t2
  sw $t0, -2692($sp)
  lw $t1, -2692($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2696($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2700($sp)
  lw $t1, -2360($sp)
  lw $t2, -2700($sp)
  add $t0, $t1, $t2
  sw $t0, -2704($sp)
  lw $t1, -2704($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2708($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2712($sp)
  lw $t1, -2360($sp)
  lw $t2, -2712($sp)
  add $t0, $t1, $t2
  sw $t0, -2716($sp)
  lw $t1, -2716($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2720($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2724($sp)
  lw $t1, -2360($sp)
  lw $t2, -2724($sp)
  add $t0, $t1, $t2
  sw $t0, -2728($sp)
  lw $t1, -2728($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2732($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2736($sp)
  lw $t1, -2384($sp)
  lw $t2, -2736($sp)
  add $t0, $t1, $t2
  sw $t0, -2740($sp)
  lw $t1, -2740($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2744($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2748($sp)
  lw $t1, -2384($sp)
  lw $t2, -2748($sp)
  add $t0, $t1, $t2
  sw $t0, -2752($sp)
  lw $t1, -2752($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2756($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2760($sp)
  lw $t1, -2384($sp)
  lw $t2, -2760($sp)
  add $t0, $t1, $t2
  sw $t0, -2764($sp)
  lw $t1, -2764($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2768($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2772($sp)
  lw $t1, -2404($sp)
  lw $t2, -2772($sp)
  add $t0, $t1, $t2
  sw $t0, -2776($sp)
  lw $t1, -2776($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2780($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2784($sp)
  lw $t1, -2404($sp)
  lw $t2, -2784($sp)
  add $t0, $t1, $t2
  sw $t0, -2788($sp)
  lw $t1, -2788($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2792($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2796($sp)
  lw $t1, -2404($sp)
  lw $t2, -2796($sp)
  add $t0, $t1, $t2
  sw $t0, -2800($sp)
  lw $t1, -2800($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2804($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2808($sp)
  lw $t1, -2404($sp)
  lw $t2, -2808($sp)
  add $t0, $t1, $t2
  sw $t0, -2812($sp)
  lw $t1, -2812($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2816($sp)
  lw $t1, -2564($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2820($sp)
  lw $t1, -2568($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2824($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2828($sp)
  lw $t1, -2428($sp)
  lw $t2, -2828($sp)
  add $t0, $t1, $t2
  sw $t0, -2832($sp)
  lw $t1, -2832($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2836($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2840($sp)
  lw $t1, -2428($sp)
  lw $t2, -2840($sp)
  add $t0, $t1, $t2
  sw $t0, -2844($sp)
  lw $t1, -2844($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2848($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2852($sp)
  lw $t1, -2428($sp)
  lw $t2, -2852($sp)
  add $t0, $t1, $t2
  sw $t0, -2856($sp)
  lw $t1, -2856($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2860($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2864($sp)
  lw $t1, -2428($sp)
  lw $t2, -2864($sp)
  add $t0, $t1, $t2
  sw $t0, -2868($sp)
  lw $t1, -2868($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2872($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2876($sp)
  lw $t1, -2428($sp)
  lw $t2, -2876($sp)
  add $t0, $t1, $t2
  sw $t0, -2880($sp)
  lw $t1, -2880($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2884($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2888($sp)
  lw $t1, -2428($sp)
  lw $t2, -2888($sp)
  add $t0, $t1, $t2
  sw $t0, -2892($sp)
  lw $t1, -2892($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2896($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2900($sp)
  lw $t1, -2428($sp)
  lw $t2, -2900($sp)
  add $t0, $t1, $t2
  sw $t0, -2904($sp)
  lw $t1, -2904($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2908($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2912($sp)
  lw $t1, -2428($sp)
  lw $t2, -2912($sp)
  add $t0, $t1, $t2
  sw $t0, -2916($sp)
  lw $t1, -2916($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2920($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2924($sp)
  lw $t1, -2428($sp)
  lw $t2, -2924($sp)
  add $t0, $t1, $t2
  sw $t0, -2928($sp)
  lw $t1, -2928($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2932($sp)
  li $t1, 38603
  li $t2, 60352
  blt $t1, $t2, label273
  b label274
  label273:
  li $t0, 1
  sw $t0, -2936($sp)
  b label275
  label274:
  li $t0, 0
  sw $t0, -2936($sp)
  label275:
  lw $t1, -2936($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2940($sp)
  lw $t1, -2360($sp)
  lw $t2, -2940($sp)
  add $t0, $t1, $t2
  sw $t0, -2944($sp)
  lw $t1, -2944($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label272
  b label270
label272:
  li $t1, 14901
  li $t2, 14176
  sub $t0, $t1, $t2
  sw $t0, -2948($sp)
  lw $t1, -2948($sp)
  lw $t2, -2312($sp)
  blt $t1, $t2, label276
  b label277
  label276:
  li $t0, 1
  sw $t0, -2952($sp)
  b label278
  label277:
  li $t0, 0
  sw $t0, -2952($sp)
  label278:
  lw $t1, -636($sp)
  li $t2, 46387
  div $t0, $t1, $t2
  sw $t0, -2956($sp)
  lw $t1, -2952($sp)
  lw $t2, -2956($sp)
  bgt $t1, $t2, label270
  b label271
  label270:
  li $t0, 1
  sw $t0, -2960($sp)
  b label279
  label271:
  li $t0, 0
  sw $t0, -2960($sp)
  label279:
  lw $t1, -2960($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label280:
  li $t1, 52020
  li $t2, 0
  bne $t1, $t2, label288
  b label287
  label287:
  li $t0, 1
  sw $t0, -2964($sp)
  b label289
  label288:
  li $t0, 0
  sw $t0, -2964($sp)
  label289:
  lw $t1, -2964($sp)
  lw $t2, -640($sp)
  ble $t1, $t2, label285
  b label286
  label285:
  li $t0, 1
  sw $t0, -2968($sp)
  b label290
  label286:
  li $t0, 0
  sw $t0, -2968($sp)
  label290:
  lw $t1, -588($sp)
  li $t2, 53682
  bgt $t1, $t2, label293
  b label292
label293:
  li $t1, 6709
  li $t2, 0
  bne $t1, $t2, label291
  b label292
  label291:
  li $t0, 1
  sw $t0, -2972($sp)
  b label294
  label292:
  li $t0, 0
  sw $t0, -2972($sp)
  label294:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2976($sp)
  lw $t1, -2348($sp)
  lw $t2, -2976($sp)
  add $t0, $t1, $t2
  sw $t0, -2980($sp)
  lw $t1, -2980($sp)
  lw $t1, 0($t1)
  li $t2, 49571
  mulo $t0, $t1, $t2
  sw $t0, -2984($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2988($sp)
  lw $t1, -212($sp)
  lw $t2, -2988($sp)
  add $t0, $t1, $t2
  sw $t0, -2992($sp)
  lw $t1, -2992($sp)
  lw $t1, 0($t1)
  lw $t2, -644($sp)
  div $t0, $t1, $t2
  sw $t0, -2996($sp)
  lw $t1, -2564($sp)
  sw $t1, -4528($sp)
  lw $t1, -2996($sp)
  sw $t1, -4532($sp)
  lw $t1, -2984($sp)
  sw $t1, -4536($sp)
  lw $t1, -2972($sp)
  sw $t1, -4540($sp)
  lw $t1, -2968($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3000($sp)
  lw $t1, -3000($sp)
  li $t2, 0
  bne $t1, $t2, label284
  b label283
  label283:
  li $t0, 1
  sw $t0, -3004($sp)
  b label295
  label284:
  li $t0, 0
  sw $t0, -3004($sp)
  label295:
  li $t1, 0
  lw $t2, -628($sp)
  sub $t0, $t1, $t2
  sw $t0, -3008($sp)
  li $t1, 0
  lw $t2, -3008($sp)
  sub $t0, $t1, $t2
  sw $t0, -3012($sp)
  lw $t1, -3004($sp)
  lw $t2, -3012($sp)
  div $t0, $t1, $t2
  sw $t0, -3016($sp)
  lw $t1, -3016($sp)
  li $t2, 0
  bne $t1, $t2, label281
  b label282
label281:
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3020($sp)
  lw $t1, -136($sp)
  lw $t2, -3020($sp)
  add $t0, $t1, $t2
  sw $t0, -3024($sp)
  lw $t1, -3024($sp)
  lw $t1, 0($t1)
  li $t2, 23800
  add $t0, $t1, $t2
  sw $t0, -3028($sp)
  lw $t1, -724($sp)
  lw $t2, -3028($sp)
  bne $t1, $t2, label298
  b label297
label298:
  li $t1, 25630
  li $t2, 0
  bne $t1, $t2, label296
  b label297
  label296:
  li $t0, 1
  sw $t0, -3032($sp)
  b label299
  label297:
  li $t0, 0
  sw $t0, -3032($sp)
  label299:
  b label280
label282:
label300:
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3036($sp)
  lw $t1, -228($sp)
  lw $t2, -3036($sp)
  add $t0, $t1, $t2
  sw $t0, -3040($sp)
  lw $t1, -3040($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label304
  b label303
  label303:
  li $t0, 1
  sw $t0, -3044($sp)
  b label305
  label304:
  li $t0, 0
  sw $t0, -3044($sp)
  label305:
  li $t1, 0
  lw $t2, -3044($sp)
  sub $t0, $t1, $t2
  sw $t0, -3048($sp)
  lw $t1, -3048($sp)
  li $t2, 0
  bne $t1, $t2, label301
  b label302
label301:
  li $t1, 8595
  move $t0, $t1
  sw $t0, -428($sp)
  lw $t1, -428($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label300
label302:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3052($sp)
  lw $t1, -2348($sp)
  lw $t2, -3052($sp)
  add $t0, $t1, $t2
  sw $t0, -3056($sp)
  lw $t1, -3056($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3060($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3064($sp)
  lw $t1, -2360($sp)
  lw $t2, -3064($sp)
  add $t0, $t1, $t2
  sw $t0, -3068($sp)
  lw $t1, -3068($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3072($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3076($sp)
  lw $t1, -2360($sp)
  lw $t2, -3076($sp)
  add $t0, $t1, $t2
  sw $t0, -3080($sp)
  lw $t1, -3080($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3084($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3088($sp)
  lw $t1, -2360($sp)
  lw $t2, -3088($sp)
  add $t0, $t1, $t2
  sw $t0, -3092($sp)
  lw $t1, -3092($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3096($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3100($sp)
  lw $t1, -2360($sp)
  lw $t2, -3100($sp)
  add $t0, $t1, $t2
  sw $t0, -3104($sp)
  lw $t1, -3104($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3108($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3112($sp)
  lw $t1, -2384($sp)
  lw $t2, -3112($sp)
  add $t0, $t1, $t2
  sw $t0, -3116($sp)
  lw $t1, -3116($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3120($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3124($sp)
  lw $t1, -2384($sp)
  lw $t2, -3124($sp)
  add $t0, $t1, $t2
  sw $t0, -3128($sp)
  lw $t1, -3128($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3132($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3136($sp)
  lw $t1, -2384($sp)
  lw $t2, -3136($sp)
  add $t0, $t1, $t2
  sw $t0, -3140($sp)
  lw $t1, -3140($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3144($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3148($sp)
  lw $t1, -2404($sp)
  lw $t2, -3148($sp)
  add $t0, $t1, $t2
  sw $t0, -3152($sp)
  lw $t1, -3152($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3156($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3160($sp)
  lw $t1, -2404($sp)
  lw $t2, -3160($sp)
  add $t0, $t1, $t2
  sw $t0, -3164($sp)
  lw $t1, -3164($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3168($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3172($sp)
  lw $t1, -2404($sp)
  lw $t2, -3172($sp)
  add $t0, $t1, $t2
  sw $t0, -3176($sp)
  lw $t1, -3176($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3180($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3184($sp)
  lw $t1, -2404($sp)
  lw $t2, -3184($sp)
  add $t0, $t1, $t2
  sw $t0, -3188($sp)
  lw $t1, -3188($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3192($sp)
  lw $t1, -2564($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3196($sp)
  lw $t1, -2568($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3200($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3204($sp)
  lw $t1, -2428($sp)
  lw $t2, -3204($sp)
  add $t0, $t1, $t2
  sw $t0, -3208($sp)
  lw $t1, -3208($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3212($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3216($sp)
  lw $t1, -2428($sp)
  lw $t2, -3216($sp)
  add $t0, $t1, $t2
  sw $t0, -3220($sp)
  lw $t1, -3220($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3224($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3228($sp)
  lw $t1, -2428($sp)
  lw $t2, -3228($sp)
  add $t0, $t1, $t2
  sw $t0, -3232($sp)
  lw $t1, -3232($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3236($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3240($sp)
  lw $t1, -2428($sp)
  lw $t2, -3240($sp)
  add $t0, $t1, $t2
  sw $t0, -3244($sp)
  lw $t1, -3244($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3248($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3252($sp)
  lw $t1, -2428($sp)
  lw $t2, -3252($sp)
  add $t0, $t1, $t2
  sw $t0, -3256($sp)
  lw $t1, -3256($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3260($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3264($sp)
  lw $t1, -2428($sp)
  lw $t2, -3264($sp)
  add $t0, $t1, $t2
  sw $t0, -3268($sp)
  lw $t1, -3268($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3272($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3276($sp)
  lw $t1, -2428($sp)
  lw $t2, -3276($sp)
  add $t0, $t1, $t2
  sw $t0, -3280($sp)
  lw $t1, -3280($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3284($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3288($sp)
  lw $t1, -2428($sp)
  lw $t2, -3288($sp)
  add $t0, $t1, $t2
  sw $t0, -3292($sp)
  lw $t1, -3292($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3296($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3300($sp)
  lw $t1, -2428($sp)
  lw $t2, -3300($sp)
  add $t0, $t1, $t2
  sw $t0, -3304($sp)
  lw $t1, -3304($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3308($sp)
  li $t1, 0
  lw $t2, -2312($sp)
  sub $t0, $t1, $t2
  sw $t0, -3312($sp)
  lw $t1, -3312($sp)
  li $t2, 0
  bne $t1, $t2, label310
  b label309
  label309:
  li $t0, 1
  sw $t0, -3316($sp)
  b label311
  label310:
  li $t0, 0
  sw $t0, -3316($sp)
  label311:
  lw $t1, -416($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3320($sp)
  lw $t1, -76($sp)
  lw $t2, -3320($sp)
  add $t0, $t1, $t2
  sw $t0, -3324($sp)
  lw $t1, -3316($sp)
  lw $t2, -3324($sp)
  lw $t2, 0($t2)
  beq $t1, $t2, label308
  b label307
label308:
  li $t1, 0
  li $t2, 57308
  sub $t0, $t1, $t2
  sw $t0, -3328($sp)
  li $t1, 0
  lw $t2, -540($sp)
  sub $t0, $t1, $t2
  sw $t0, -3332($sp)
  lw $t1, -3332($sp)
  lw $t2, -640($sp)
  bne $t1, $t2, label312
  b label313
  label312:
  li $t0, 1
  sw $t0, -3336($sp)
  b label314
  label313:
  li $t0, 0
  sw $t0, -3336($sp)
  label314:
  lw $t1, -716($sp)
  lw $t2, -604($sp)
  div $t0, $t1, $t2
  sw $t0, -3340($sp)
  li $t1, 38095
  li $t2, 33101
  beq $t1, $t2, label315
  b label316
  label315:
  li $t0, 1
  sw $t0, -3344($sp)
  b label317
  label316:
  li $t0, 0
  sw $t0, -3344($sp)
  label317:
  lw $t1, -592($sp)
  li $t2, 0
  bne $t1, $t2, label321
  b label320
  label320:
  li $t0, 1
  sw $t0, -3348($sp)
  b label322
  label321:
  li $t0, 0
  sw $t0, -3348($sp)
  label322:
  lw $t1, -3348($sp)
  lw $t2, -2568($sp)
  bge $t1, $t2, label318
  b label319
  label318:
  li $t0, 1
  sw $t0, -3352($sp)
  b label323
  label319:
  li $t0, 0
  sw $t0, -3352($sp)
  label323:
  lw $t1, -3352($sp)
  sw $t1, -4528($sp)
  lw $t1, -3344($sp)
  sw $t1, -4532($sp)
  lw $t1, -3340($sp)
  sw $t1, -4536($sp)
  lw $t1, -3336($sp)
  sw $t1, -4540($sp)
  lw $t1, -3328($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3356($sp)
  li $t1, 39091
  lw $t2, -3356($sp)
  bgt $t1, $t2, label306
  b label307
  label306:
  li $t0, 1
  sw $t0, -3360($sp)
  b label324
  label307:
  li $t0, 0
  sw $t0, -3360($sp)
  label324:
  lw $t1, -3360($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  li $t1, 15054
  lw $t2, -644($sp)
  bne $t1, $t2, label330
  b label329
label330:
  lw $t1, -432($sp)
  li $t2, 0
  bne $t1, $t2, label328
  b label329
  label328:
  li $t0, 1
  sw $t0, -3364($sp)
  b label331
  label329:
  li $t0, 0
  sw $t0, -3364($sp)
  label331:
  lw $t1, -3364($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3368($sp)
  lw $t1, -2428($sp)
  lw $t2, -3368($sp)
  add $t0, $t1, $t2
  sw $t0, -3372($sp)
  li $t1, 0
  lw $t2, -3372($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -3376($sp)
  lw $t1, -3376($sp)
  li $t2, 0
  bne $t1, $t2, label325
  b label326
label325:
label332:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3380($sp)
  lw $t1, -2384($sp)
  lw $t2, -3380($sp)
  add $t0, $t1, $t2
  sw $t0, -3384($sp)
  lw $t1, -3384($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label336
  b label335
  label335:
  li $t0, 1
  sw $t0, -3388($sp)
  b label337
  label336:
  li $t0, 0
  sw $t0, -3388($sp)
  label337:
  lw $t1, -644($sp)
  lw $t2, -3388($sp)
  div $t0, $t1, $t2
  sw $t0, -3392($sp)
  lw $t1, -596($sp)
  li $t2, 22466
  sub $t0, $t1, $t2
  sw $t0, -3396($sp)
  lw $t1, -3396($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3400($sp)
  lw $t1, -2404($sp)
  lw $t2, -3400($sp)
  add $t0, $t1, $t2
  sw $t0, -3404($sp)
  lw $t1, -3392($sp)
  lw $t2, -3404($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -3408($sp)
  lw $t1, -3408($sp)
  li $t2, 0
  bne $t1, $t2, label333
  b label334
label333:
label338:
  lw $t1, -432($sp)
  li $t2, 0
  bne $t1, $t2, label339
  b label340
label339:
  li $t1, 0
  lw $t2, -596($sp)
  sub $t0, $t1, $t2
  sw $t0, -3412($sp)
  lw $t1, -3412($sp)
  li $t2, 58934
  div $t0, $t1, $t2
  sw $t0, -3416($sp)
  li $t1, 20417
  lw $t2, -3416($sp)
  bne $t1, $t2, label341
  b label342
  label341:
  li $t0, 1
  sw $t0, -3420($sp)
  b label343
  label342:
  li $t0, 0
  sw $t0, -3420($sp)
  label343:
  b label338
label340:
  b label332
label334:
  b label327
label326:
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3424($sp)
  li $t1, 0
  lw $t2, -3424($sp)
  sub $t0, $t1, $t2
  sw $t0, -3428($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3432($sp)
  li $t1, 0
  lw $t2, -3432($sp)
  sub $t0, $t1, $t2
  sw $t0, -3436($sp)
  lw $t1, -3428($sp)
  lw $t2, -3436($sp)
  div $t0, $t1, $t2
  sw $t0, -3440($sp)
label327:
  b label259
label258:
  li $t1, 0
  lw $t2, -2316($sp)
  sub $t0, $t1, $t2
  sw $t0, -3444($sp)
  lw $t1, -3444($sp)
  li $t2, 0
  bne $t1, $t2, label347
  b label346
  label346:
  li $t0, 1
  sw $t0, -3448($sp)
  b label348
  label347:
  li $t0, 0
  sw $t0, -3448($sp)
  label348:
  lw $t1, -3448($sp)
  li $t2, 27086
  mulo $t0, $t1, $t2
  sw $t0, -3452($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3456($sp)
  lw $t1, -3452($sp)
  lw $t2, -3456($sp)
  bgt $t1, $t2, label344
  b label345
  label344:
  li $t0, 1
  sw $t0, -3460($sp)
  b label349
  label345:
  li $t0, 0
  sw $t0, -3460($sp)
  label349:
  lw $t1, -3460($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label259:
label350:
  lw $t1, -644($sp)
  lw $t2, -588($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3464($sp)
  lw $t1, -3464($sp)
  li $t2, 59020
  add $t0, $t1, $t2
  sw $t0, -3468($sp)
  lw $t1, -604($sp)
  lw $t2, -16($sp)
  div $t0, $t1, $t2
  sw $t0, -3472($sp)
  lw $t1, -3468($sp)
  lw $t2, -3472($sp)
  beq $t1, $t2, label353
  b label354
  label353:
  li $t0, 1
  sw $t0, -3476($sp)
  b label355
  label354:
  li $t0, 0
  sw $t0, -3476($sp)
  label355:
  lw $t1, -3476($sp)
  move $t0, $t1
  sw $t0, -412($sp)
  lw $t1, -412($sp)
  li $t2, 0
  bne $t1, $t2, label351
  b label352
label351:
  lw $t1, -632($sp)
  li $t2, 41988
  div $t0, $t1, $t2
  sw $t0, -3480($sp)
  lw $t1, -3480($sp)
  li $t2, 7660
  add $t0, $t1, $t2
  sw $t0, -3484($sp)
  lw $t1, -2308($sp)
  li $t2, 0
  bne $t1, $t2, label359
  b label358
  label358:
  li $t0, 1
  sw $t0, -3488($sp)
  b label360
  label359:
  li $t0, 0
  sw $t0, -3488($sp)
  label360:
  lw $t1, -3488($sp)
  sw $t1, -4528($sp)
  lw $t1, -3484($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3492($sp)
  lw $t1, -3492($sp)
  li $t2, 0
  bne $t1, $t2, label357
  b label356
  label356:
  li $t0, 1
  sw $t0, -3496($sp)
  b label361
  label357:
  li $t0, 0
  sw $t0, -3496($sp)
  label361:
  li $t1, 53751
  lw $t2, -3496($sp)
  div $t0, $t1, $t2
  sw $t0, -3500($sp)
  lw $t1, -3500($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label350
label352:
  li $t1, 34602
  move $t0, $t1
  sw $t0, -3504($sp)
  li $t1, 28472
  move $t0, $t1
  sw $t0, -3508($sp)
  li $t1, 61342
  move $t0, $t1
  sw $t0, -3512($sp)
  li $t1, 41312
  move $t0, $t1
  sw $t0, -3516($sp)
  lw $t1, -3504($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3520($sp)
  lw $t1, -3508($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3524($sp)
  lw $t1, -3512($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3528($sp)
  lw $t1, -3516($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3532($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3536($sp)
  lw $t1, -3536($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label362:
  lw $t1, -600($sp)
  li $t2, 0
  bne $t1, $t2, label368
  b label367
  label367:
  li $t0, 1
  sw $t0, -3540($sp)
  b label369
  label368:
  li $t0, 0
  sw $t0, -3540($sp)
  label369:
  li $t1, 0
  lw $t2, -3540($sp)
  sub $t0, $t1, $t2
  sw $t0, -3544($sp)
  lw $t1, -3544($sp)
  li $t2, 0
  bne $t1, $t2, label366
  b label365
  label365:
  li $t0, 1
  sw $t0, -3548($sp)
  b label370
  label366:
  li $t0, 0
  sw $t0, -3548($sp)
  label370:
  lw $t1, -644($sp)
  lw $t2, -3548($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3552($sp)
  lw $t1, -3552($sp)
  li $t2, 0
  bne $t1, $t2, label363
  b label364
label363:
label371:
  lw $t1, -416($sp)
  li $t2, 0
  bne $t1, $t2, label375
  b label374
  label374:
  li $t0, 1
  sw $t0, -3556($sp)
  b label376
  label375:
  li $t0, 0
  sw $t0, -3556($sp)
  label376:
  lw $t1, -3556($sp)
  lw $t2, -408($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3560($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3564($sp)
  lw $t1, -212($sp)
  lw $t2, -3564($sp)
  add $t0, $t1, $t2
  sw $t0, -3568($sp)
  lw $t1, -3560($sp)
  lw $t2, -3568($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -3572($sp)
  lw $t1, -3572($sp)
  lw $t2, -452($sp)
  add $t0, $t1, $t2
  sw $t0, -3576($sp)
  lw $t1, -3576($sp)
  li $t2, 0
  bne $t1, $t2, label372
  b label373
label372:
  lw $t1, -4($sp)
  li $t2, 25347
  mulo $t0, $t1, $t2
  sw $t0, -3580($sp)
  lw $t1, -3580($sp)
  lw $t2, -3512($sp)
  beq $t1, $t2, label382
  b label383
  label382:
  li $t0, 1
  sw $t0, -3584($sp)
  b label384
  label383:
  li $t0, 0
  sw $t0, -3584($sp)
  label384:
  li $t1, 28227
  li $t2, 0
  bne $t1, $t2, label388
  b label387
label388:
  lw $t1, -412($sp)
  li $t2, 0
  bne $t1, $t2, label385
  b label387
label387:
  li $t1, 32053
  li $t2, 0
  bne $t1, $t2, label385
  b label386
  label385:
  li $t0, 1
  sw $t0, -3588($sp)
  b label389
  label386:
  li $t0, 0
  sw $t0, -3588($sp)
  label389:
  lw $t1, -3588($sp)
  sw $t1, -4528($sp)
  lw $t1, -3584($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3592($sp)
  lw $t1, -3592($sp)
  lw $t2, -3508($sp)
  div $t0, $t1, $t2
  sw $t0, -3596($sp)
  li $t1, 0
  li $t2, 31928
  sub $t0, $t1, $t2
  sw $t0, -3600($sp)
  lw $t1, -3600($sp)
  lw $t2, -632($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3604($sp)
  lw $t1, -3604($sp)
  sw $t1, -4528($sp)
  lw $t1, -3596($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3608($sp)
  lw $t1, -3608($sp)
  li $t2, 0
  bne $t1, $t2, label381
  b label380
  label380:
  li $t0, 1
  sw $t0, -3612($sp)
  b label390
  label381:
  li $t0, 0
  sw $t0, -3612($sp)
  label390:
  li $t1, 0
  li $t2, 1767
  sub $t0, $t1, $t2
  sw $t0, -3616($sp)
  lw $t1, -3616($sp)
  li $t2, 0
  bne $t1, $t2, label393
  b label392
label393:
  li $t1, 55854
  li $t2, 0
  bne $t1, $t2, label391
  b label392
  label391:
  li $t0, 1
  sw $t0, -3620($sp)
  b label394
  label392:
  li $t0, 0
  sw $t0, -3620($sp)
  label394:
  li $t1, 0
  li $t2, 57558
  sub $t0, $t1, $t2
  sw $t0, -3624($sp)
  lw $t1, -3624($sp)
  li $t2, 62598
  ble $t1, $t2, label395
  b label396
  label395:
  li $t0, 1
  sw $t0, -3628($sp)
  b label397
  label396:
  li $t0, 0
  sw $t0, -3628($sp)
  label397:
  lw $t1, -3628($sp)
  sw $t1, -4528($sp)
  lw $t1, -3620($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3632($sp)
  lw $t1, -452($sp)
  li $t2, 9337
  bge $t1, $t2, label398
  b label399
  label398:
  li $t0, 1
  sw $t0, -3636($sp)
  b label400
  label399:
  li $t0, 0
  sw $t0, -3636($sp)
  label400:
  li $t1, 618
  li $t2, 36154
  sub $t0, $t1, $t2
  sw $t0, -3640($sp)
  lw $t1, -3640($sp)
  lw $t2, -636($sp)
  blt $t1, $t2, label401
  b label402
  label401:
  li $t0, 1
  sw $t0, -3644($sp)
  b label403
  label402:
  li $t0, 0
  sw $t0, -3644($sp)
  label403:
  lw $t1, -3644($sp)
  sw $t1, -4528($sp)
  lw $t1, -3636($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3648($sp)
  lw $t1, -3632($sp)
  lw $t2, -3648($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3652($sp)
  lw $t1, -3612($sp)
  lw $t2, -3652($sp)
  add $t0, $t1, $t2
  sw $t0, -3656($sp)
  lw $t1, -3656($sp)
  li $t2, 0
  bne $t1, $t2, label377
  b label378
label377:
  li $t1, 0
  lw $t2, -628($sp)
  sub $t0, $t1, $t2
  sw $t0, -3660($sp)
  lw $t1, -3660($sp)
  li $t2, 1110
  mulo $t0, $t1, $t2
  sw $t0, -3664($sp)
  lw $t1, -3664($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label379
label378:
  li $t1, 38713
  li $t2, 0
  bne $t1, $t2, label409
  b label408
label409:
  li $t1, 3719
  li $t2, 0
  bne $t1, $t2, label407
  b label408
  label407:
  li $t0, 1
  sw $t0, -3668($sp)
  b label410
  label408:
  li $t0, 0
  sw $t0, -3668($sp)
  label410:
  lw $t1, -3668($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3672($sp)
  lw $t1, -136($sp)
  lw $t2, -3672($sp)
  add $t0, $t1, $t2
  sw $t0, -3676($sp)
  lw $t1, -3676($sp)
  lw $t1, 0($t1)
  li $t2, 16164
  add $t0, $t1, $t2
  sw $t0, -3680($sp)
  lw $t1, -3680($sp)
  li $t2, 0
  bne $t1, $t2, label404
  b label406
label406:
  li $t1, 0
  lw $t2, -636($sp)
  sub $t0, $t1, $t2
  sw $t0, -3684($sp)
  lw $t1, -3684($sp)
  li $t2, 25071
  beq $t1, $t2, label404
  b label405
  label404:
  li $t0, 1
  sw $t0, -3688($sp)
  b label411
  label405:
  li $t0, 0
  sw $t0, -3688($sp)
  label411:
  lw $t1, -3688($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label379:
  b label371
label373:
  b label362
label364:
  lw $t1, -3504($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3692($sp)
  lw $t1, -3508($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3696($sp)
  lw $t1, -3512($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3700($sp)
  lw $t1, -3516($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3704($sp)
  li $t1, 38630
  move $t0, $t1
  sw $t0, -452($sp)
  lw $t1, -4($sp)
  li $t2, 45488
  div $t0, $t1, $t2
  sw $t0, -3708($sp)
  lw $t1, -3708($sp)
  lw $t2, -720($sp)
  add $t0, $t1, $t2
  sw $t0, -3712($sp)
  lw $t1, -3712($sp)
  sw $t1, -4528($sp)
  lw $t1, -452($sp)
  sw $t1, -4532($sp)
  sub $sp, $sp, 4524
  jal func_id_eZzKtHKigb
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3716($sp)
  li $t1, 31447
  lw $t2, -3716($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3720($sp)
  lw $t1, -3516($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3724($sp)
  lw $t1, -184($sp)
  lw $t2, -3724($sp)
  add $t0, $t1, $t2
  sw $t0, -3728($sp)
  lw $t1, -3720($sp)
  lw $t2, -3728($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -3732($sp)
  li $t1, 24845
  li $t2, 181
  div $t0, $t1, $t2
  sw $t0, -3736($sp)
  lw $t1, -3736($sp)
  li $t2, 38972
  add $t0, $t1, $t2
  sw $t0, -3740($sp)
  li $t1, 13060
  li $t2, 42169
  blt $t1, $t2, label412
  b label413
  label412:
  li $t0, 1
  sw $t0, -3744($sp)
  b label414
  label413:
  li $t0, 0
  sw $t0, -3744($sp)
  label414:
  li $t1, 0
  lw $t2, -596($sp)
  sub $t0, $t1, $t2
  sw $t0, -3748($sp)
  lw $t1, -3748($sp)
  li $t2, 46632
  sub $t0, $t1, $t2
  sw $t0, -3752($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3756($sp)
  lw $t1, -228($sp)
  lw $t2, -3756($sp)
  add $t0, $t1, $t2
  sw $t0, -3760($sp)
  lw $t1, -3760($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label415
  b label417
label417:
  lw $t1, -3516($sp)
  li $t2, 0
  bne $t1, $t2, label415
  b label416
  label415:
  li $t0, 1
  sw $t0, -3764($sp)
  b label418
  label416:
  li $t0, 0
  sw $t0, -3764($sp)
  label418:
  lw $t1, -428($sp)
  lw $t2, -3504($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3768($sp)
  lw $t1, -3768($sp)
  lw $t2, -428($sp)
  div $t0, $t1, $t2
  sw $t0, -3772($sp)
  lw $t1, -3772($sp)
  sw $t1, -4528($sp)
  lw $t1, -3764($sp)
  sw $t1, -4532($sp)
  lw $t1, -3752($sp)
  sw $t1, -4536($sp)
  lw $t1, -3744($sp)
  sw $t1, -4540($sp)
  lw $t1, -3740($sp)
  sw $t1, -4544($sp)
  sub $sp, $sp, 4524
  jal func_id_v1
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3776($sp)
  li $t1, 0
  lw $t2, -3776($sp)
  sub $t0, $t1, $t2
  sw $t0, -3780($sp)
  lw $t1, -3732($sp)
  lw $t2, -3780($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3784($sp)
  lw $t1, -3784($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3788($sp)
  li $t1, 0
  lw $t2, -3788($sp)
  sub $t0, $t1, $t2
  sw $t0, -3792($sp)
  lw $t1, -3792($sp)
  li $t2, 42439
  bge $t1, $t2, label421
  b label422
  label421:
  li $t0, 1
  sw $t0, -3796($sp)
  b label423
  label422:
  li $t0, 0
  sw $t0, -3796($sp)
  label423:
  lw $t1, -3796($sp)
  li $t2, 23439
  blt $t1, $t2, label419
  b label420
  label419:
  li $t0, 1
  sw $t0, -3800($sp)
  b label424
  label420:
  li $t0, 0
  sw $t0, -3800($sp)
  label424:
  li $t1, 11906
  lw $t2, -416($sp)
  ble $t1, $t2, label425
  b label426
  label425:
  li $t0, 1
  sw $t0, -3804($sp)
  b label427
  label426:
  li $t0, 0
  sw $t0, -3804($sp)
  label427:
  lw $t1, -2312($sp)
  lw $t2, -416($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3808($sp)
  lw $t1, -3808($sp)
  li $t2, 10551
  div $t0, $t1, $t2
  sw $t0, -3812($sp)
  li $t1, 0
  lw $t2, -8($sp)
  sub $t0, $t1, $t2
  sw $t0, -3816($sp)
  lw $t1, -3812($sp)
  lw $t2, -3816($sp)
  bgt $t1, $t2, label428
  b label429
  label428:
  li $t0, 1
  sw $t0, -3820($sp)
  b label430
  label429:
  li $t0, 0
  sw $t0, -3820($sp)
  label430:
  lw $t1, -640($sp)
  li $t2, 0
  bne $t1, $t2, label432
  b label431
  label431:
  li $t0, 1
  sw $t0, -3824($sp)
  b label433
  label432:
  li $t0, 0
  sw $t0, -3824($sp)
  label433:
  li $t1, 40133
  li $t2, 42604
  bne $t1, $t2, label436
  b label437
  label436:
  li $t0, 1
  sw $t0, -3828($sp)
  b label438
  label437:
  li $t0, 0
  sw $t0, -3828($sp)
  label438:
  lw $t1, -3828($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3832($sp)
  lw $t1, -228($sp)
  lw $t2, -3832($sp)
  add $t0, $t1, $t2
  sw $t0, -3836($sp)
  li $t1, 48786
  lw $t2, -3836($sp)
  lw $t2, 0($t2)
  blt $t1, $t2, label434
  b label435
  label434:
  li $t0, 1
  sw $t0, -3840($sp)
  b label439
  label435:
  li $t0, 0
  sw $t0, -3840($sp)
  label439:
  lw $t1, -3504($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3844($sp)
  lw $t1, -3508($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3848($sp)
  lw $t1, -3512($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3852($sp)
  lw $t1, -3516($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3856($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -3860($sp)
  lw $t1, -3860($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label242
label241:
  lw $t1, -412($sp)
  li $t2, 0
  bne $t1, $t2, label443
  b label442
  label442:
  li $t0, 1
  sw $t0, -3864($sp)
  b label444
  label443:
  li $t0, 0
  sw $t0, -3864($sp)
  label444:
  li $t1, 0
  lw $t2, -628($sp)
  sub $t0, $t1, $t2
  sw $t0, -3868($sp)
  lw $t1, -3868($sp)
  li $t2, 0
  bne $t1, $t2, label446
  b label445
  label445:
  li $t0, 1
  sw $t0, -3872($sp)
  b label447
  label446:
  li $t0, 0
  sw $t0, -3872($sp)
  label447:
  lw $t1, -3864($sp)
  lw $t2, -3872($sp)
  bge $t1, $t2, label440
  b label441
  label440:
  li $t0, 1
  sw $t0, -3876($sp)
  b label448
  label441:
  li $t0, 0
  sw $t0, -3876($sp)
  label448:
  lw $t1, -3876($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label242:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3880($sp)
  lw $t1, -28($sp)
  lw $t2, -3880($sp)
  add $t0, $t1, $t2
  sw $t0, -3884($sp)
  lw $t1, -3884($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3888($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3892($sp)
  lw $t1, -28($sp)
  lw $t2, -3892($sp)
  add $t0, $t1, $t2
  sw $t0, -3896($sp)
  lw $t1, -3896($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3900($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3904($sp)
  lw $t1, -28($sp)
  lw $t2, -3904($sp)
  add $t0, $t1, $t2
  sw $t0, -3908($sp)
  lw $t1, -3908($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3912($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3916($sp)
  lw $t1, -28($sp)
  lw $t2, -3916($sp)
  add $t0, $t1, $t2
  sw $t0, -3920($sp)
  lw $t1, -3920($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3924($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3928($sp)
  lw $t1, -28($sp)
  lw $t2, -3928($sp)
  add $t0, $t1, $t2
  sw $t0, -3932($sp)
  lw $t1, -3932($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3936($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3940($sp)
  lw $t1, -28($sp)
  lw $t2, -3940($sp)
  add $t0, $t1, $t2
  sw $t0, -3944($sp)
  lw $t1, -3944($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3948($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3952($sp)
  lw $t1, -28($sp)
  lw $t2, -3952($sp)
  add $t0, $t1, $t2
  sw $t0, -3956($sp)
  lw $t1, -3956($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3960($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3964($sp)
  lw $t1, -28($sp)
  lw $t2, -3964($sp)
  add $t0, $t1, $t2
  sw $t0, -3968($sp)
  lw $t1, -3968($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3972($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3976($sp)
  lw $t1, -28($sp)
  lw $t2, -3976($sp)
  add $t0, $t1, $t2
  sw $t0, -3980($sp)
  lw $t1, -3980($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3984($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3988($sp)
  lw $t1, -28($sp)
  lw $t2, -3988($sp)
  add $t0, $t1, $t2
  sw $t0, -3992($sp)
  lw $t1, -3992($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -3996($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4000($sp)
  lw $t1, -76($sp)
  lw $t2, -4000($sp)
  add $t0, $t1, $t2
  sw $t0, -4004($sp)
  lw $t1, -4004($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4008($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4012($sp)
  lw $t1, -76($sp)
  lw $t2, -4012($sp)
  add $t0, $t1, $t2
  sw $t0, -4016($sp)
  lw $t1, -4016($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4020($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4024($sp)
  lw $t1, -76($sp)
  lw $t2, -4024($sp)
  add $t0, $t1, $t2
  sw $t0, -4028($sp)
  lw $t1, -4028($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4032($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4036($sp)
  lw $t1, -76($sp)
  lw $t2, -4036($sp)
  add $t0, $t1, $t2
  sw $t0, -4040($sp)
  lw $t1, -4040($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4044($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4048($sp)
  lw $t1, -76($sp)
  lw $t2, -4048($sp)
  add $t0, $t1, $t2
  sw $t0, -4052($sp)
  lw $t1, -4052($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4056($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4060($sp)
  lw $t1, -76($sp)
  lw $t2, -4060($sp)
  add $t0, $t1, $t2
  sw $t0, -4064($sp)
  lw $t1, -4064($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4068($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4072($sp)
  lw $t1, -76($sp)
  lw $t2, -4072($sp)
  add $t0, $t1, $t2
  sw $t0, -4076($sp)
  lw $t1, -4076($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4080($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4084($sp)
  lw $t1, -112($sp)
  lw $t2, -4084($sp)
  add $t0, $t1, $t2
  sw $t0, -4088($sp)
  lw $t1, -4088($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4092($sp)
  lw $t1, -408($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4096($sp)
  lw $t1, -412($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4100($sp)
  lw $t1, -416($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4104($sp)
  lw $t1, -420($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4108($sp)
  lw $t1, -424($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4112($sp)
  lw $t1, -428($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4116($sp)
  lw $t1, -432($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4120($sp)
  lw $t1, -436($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4124($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4128($sp)
  lw $t1, -124($sp)
  lw $t2, -4128($sp)
  add $t0, $t1, $t2
  sw $t0, -4132($sp)
  lw $t1, -4132($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4136($sp)
  lw $t1, -448($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4140($sp)
  lw $t1, -452($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4144($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4148($sp)
  lw $t1, -136($sp)
  lw $t2, -4148($sp)
  add $t0, $t1, $t2
  sw $t0, -4152($sp)
  lw $t1, -4152($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4156($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4160($sp)
  lw $t1, -136($sp)
  lw $t2, -4160($sp)
  add $t0, $t1, $t2
  sw $t0, -4164($sp)
  lw $t1, -4164($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4168($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4172($sp)
  lw $t1, -136($sp)
  lw $t2, -4172($sp)
  add $t0, $t1, $t2
  sw $t0, -4176($sp)
  lw $t1, -4176($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4180($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4184($sp)
  lw $t1, -136($sp)
  lw $t2, -4184($sp)
  add $t0, $t1, $t2
  sw $t0, -4188($sp)
  lw $t1, -4188($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4192($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4196($sp)
  lw $t1, -136($sp)
  lw $t2, -4196($sp)
  add $t0, $t1, $t2
  sw $t0, -4200($sp)
  lw $t1, -4200($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4204($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4208($sp)
  lw $t1, -136($sp)
  lw $t2, -4208($sp)
  add $t0, $t1, $t2
  sw $t0, -4212($sp)
  lw $t1, -4212($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4216($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4220($sp)
  lw $t1, -136($sp)
  lw $t2, -4220($sp)
  add $t0, $t1, $t2
  sw $t0, -4224($sp)
  lw $t1, -4224($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4228($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4232($sp)
  lw $t1, -136($sp)
  lw $t2, -4232($sp)
  add $t0, $t1, $t2
  sw $t0, -4236($sp)
  lw $t1, -4236($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4240($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4244($sp)
  lw $t1, -136($sp)
  lw $t2, -4244($sp)
  add $t0, $t1, $t2
  sw $t0, -4248($sp)
  lw $t1, -4248($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4252($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4256($sp)
  lw $t1, -136($sp)
  lw $t2, -4256($sp)
  add $t0, $t1, $t2
  sw $t0, -4260($sp)
  lw $t1, -4260($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4264($sp)
  lw $t1, -536($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4268($sp)
  lw $t1, -540($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4272($sp)
  lw $t1, -544($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4276($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4280($sp)
  lw $t1, -184($sp)
  lw $t2, -4280($sp)
  add $t0, $t1, $t2
  sw $t0, -4284($sp)
  lw $t1, -4284($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4288($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4292($sp)
  lw $t1, -184($sp)
  lw $t2, -4292($sp)
  add $t0, $t1, $t2
  sw $t0, -4296($sp)
  lw $t1, -4296($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4300($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4304($sp)
  lw $t1, -184($sp)
  lw $t2, -4304($sp)
  add $t0, $t1, $t2
  sw $t0, -4308($sp)
  lw $t1, -4308($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4312($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4316($sp)
  lw $t1, -184($sp)
  lw $t2, -4316($sp)
  add $t0, $t1, $t2
  sw $t0, -4320($sp)
  lw $t1, -4320($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4324($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4328($sp)
  lw $t1, -184($sp)
  lw $t2, -4328($sp)
  add $t0, $t1, $t2
  sw $t0, -4332($sp)
  lw $t1, -4332($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4336($sp)
  lw $t1, -588($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4340($sp)
  lw $t1, -592($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4344($sp)
  lw $t1, -596($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4348($sp)
  lw $t1, -600($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4352($sp)
  lw $t1, -604($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4356($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4360($sp)
  lw $t1, -212($sp)
  lw $t2, -4360($sp)
  add $t0, $t1, $t2
  sw $t0, -4364($sp)
  lw $t1, -4364($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4368($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4372($sp)
  lw $t1, -212($sp)
  lw $t2, -4372($sp)
  add $t0, $t1, $t2
  sw $t0, -4376($sp)
  lw $t1, -4376($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4380($sp)
  lw $t1, -624($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4384($sp)
  lw $t1, -628($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4388($sp)
  lw $t1, -632($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4392($sp)
  lw $t1, -636($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4396($sp)
  lw $t1, -640($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4400($sp)
  lw $t1, -644($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4404($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4408($sp)
  lw $t1, -228($sp)
  lw $t2, -4408($sp)
  add $t0, $t1, $t2
  sw $t0, -4412($sp)
  lw $t1, -4412($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4416($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4420($sp)
  lw $t1, -228($sp)
  lw $t2, -4420($sp)
  add $t0, $t1, $t2
  sw $t0, -4424($sp)
  lw $t1, -4424($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4428($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4432($sp)
  lw $t1, -228($sp)
  lw $t2, -4432($sp)
  add $t0, $t1, $t2
  sw $t0, -4436($sp)
  lw $t1, -4436($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4440($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4444($sp)
  lw $t1, -228($sp)
  lw $t2, -4444($sp)
  add $t0, $t1, $t2
  sw $t0, -4448($sp)
  lw $t1, -4448($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4452($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4456($sp)
  lw $t1, -228($sp)
  lw $t2, -4456($sp)
  add $t0, $t1, $t2
  sw $t0, -4460($sp)
  lw $t1, -4460($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4464($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4468($sp)
  lw $t1, -228($sp)
  lw $t2, -4468($sp)
  add $t0, $t1, $t2
  sw $t0, -4472($sp)
  lw $t1, -4472($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4476($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4480($sp)
  lw $t1, -228($sp)
  lw $t2, -4480($sp)
  add $t0, $t1, $t2
  sw $t0, -4484($sp)
  lw $t1, -4484($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4488($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4492($sp)
  lw $t1, -228($sp)
  lw $t2, -4492($sp)
  add $t0, $t1, $t2
  sw $t0, -4496($sp)
  lw $t1, -4496($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4500($sp)
  lw $t1, -712($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4504($sp)
  lw $t1, -716($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4508($sp)
  lw $t1, -720($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4512($sp)
  lw $t1, -724($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4516($sp)
  sub $sp, $sp, 4524
  jal func_id_Mdvzosjy
  add $sp, $sp, 4524
  move $t0, $v0
  sw $t0, -4520($sp)
  lw $t1, -4520($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_HusWF:
  sw $ra, 0($sp)
  sub $t0, $sp, 48
  sw $t0, -12($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -52($sp)
  lw $t1, -12($sp)
  lw $t2, -52($sp)
  add $t0, $t1, $t2
  sw $t0, -56($sp)
  li $t1, 15179
  move $t0, $t1
  lw $s0, -56($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -60($sp)
  lw $t1, -12($sp)
  lw $t2, -60($sp)
  add $t0, $t1, $t2
  sw $t0, -64($sp)
  li $t1, 41900
  move $t0, $t1
  lw $s0, -64($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -68($sp)
  lw $t1, -12($sp)
  lw $t2, -68($sp)
  add $t0, $t1, $t2
  sw $t0, -72($sp)
  li $t1, 32922
  move $t0, $t1
  lw $s0, -72($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -76($sp)
  lw $t1, -12($sp)
  lw $t2, -76($sp)
  add $t0, $t1, $t2
  sw $t0, -80($sp)
  li $t1, 7201
  move $t0, $t1
  lw $s0, -80($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -84($sp)
  lw $t1, -12($sp)
  lw $t2, -84($sp)
  add $t0, $t1, $t2
  sw $t0, -88($sp)
  li $t1, 38962
  move $t0, $t1
  lw $s0, -88($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -92($sp)
  lw $t1, -12($sp)
  lw $t2, -92($sp)
  add $t0, $t1, $t2
  sw $t0, -96($sp)
  li $t1, 42260
  move $t0, $t1
  lw $s0, -96($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -100($sp)
  lw $t1, -12($sp)
  lw $t2, -100($sp)
  add $t0, $t1, $t2
  sw $t0, -104($sp)
  li $t1, 7819
  move $t0, $t1
  lw $s0, -104($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -108($sp)
  lw $t1, -12($sp)
  lw $t2, -108($sp)
  add $t0, $t1, $t2
  sw $t0, -112($sp)
  li $t1, 9580
  move $t0, $t1
  lw $s0, -112($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -116($sp)
  lw $t1, -12($sp)
  lw $t2, -116($sp)
  add $t0, $t1, $t2
  sw $t0, -120($sp)
  li $t1, 43370
  move $t0, $t1
  lw $s0, -120($sp)
  sw $t0, 0($s0)
  li $t1, 46533
  move $t0, $t1
  sw $t0, -124($sp)
  li $t1, 13300
  li $t2, 59534
  mulo $t0, $t1, $t2
  sw $t0, -128($sp)
  lw $t1, -4($sp)
  li $t2, 0
  bne $t1, $t2, label450
  b label449
  label449:
  li $t0, 1
  sw $t0, -132($sp)
  b label451
  label450:
  li $t0, 0
  sw $t0, -132($sp)
  label451:
  li $t1, 0
  li $t2, 44747
  sub $t0, $t1, $t2
  sw $t0, -136($sp)
  lw $t1, -136($sp)
  li $t2, 32629
  mulo $t0, $t1, $t2
  sw $t0, -140($sp)
  lw $t1, -124($sp)
  li $t2, 0
  bne $t1, $t2, label455
  b label454
  label454:
  li $t0, 1
  sw $t0, -144($sp)
  b label456
  label455:
  li $t0, 0
  sw $t0, -144($sp)
  label456:
  lw $t1, -140($sp)
  lw $t2, -144($sp)
  bge $t1, $t2, label452
  b label453
  label452:
  li $t0, 1
  sw $t0, -148($sp)
  b label457
  label453:
  li $t0, 0
  sw $t0, -148($sp)
  label457:
  lw $t1, -148($sp)
  move $t0, $t1
  sw $t0, -4($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -152($sp)
  lw $t1, -12($sp)
  lw $t2, -152($sp)
  add $t0, $t1, $t2
  sw $t0, -156($sp)
  lw $t1, -156($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -160($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -164($sp)
  lw $t1, -12($sp)
  lw $t2, -164($sp)
  add $t0, $t1, $t2
  sw $t0, -168($sp)
  lw $t1, -168($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -172($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -176($sp)
  lw $t1, -12($sp)
  lw $t2, -176($sp)
  add $t0, $t1, $t2
  sw $t0, -180($sp)
  lw $t1, -180($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -184($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -188($sp)
  lw $t1, -12($sp)
  lw $t2, -188($sp)
  add $t0, $t1, $t2
  sw $t0, -192($sp)
  lw $t1, -192($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -196($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -200($sp)
  lw $t1, -12($sp)
  lw $t2, -200($sp)
  add $t0, $t1, $t2
  sw $t0, -204($sp)
  lw $t1, -204($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -208($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -212($sp)
  lw $t1, -12($sp)
  lw $t2, -212($sp)
  add $t0, $t1, $t2
  sw $t0, -216($sp)
  lw $t1, -216($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -220($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -224($sp)
  lw $t1, -12($sp)
  lw $t2, -224($sp)
  add $t0, $t1, $t2
  sw $t0, -228($sp)
  lw $t1, -228($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -232($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -236($sp)
  lw $t1, -12($sp)
  lw $t2, -236($sp)
  add $t0, $t1, $t2
  sw $t0, -240($sp)
  lw $t1, -240($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -244($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -248($sp)
  lw $t1, -12($sp)
  lw $t2, -248($sp)
  add $t0, $t1, $t2
  sw $t0, -252($sp)
  lw $t1, -252($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -256($sp)
  lw $t1, -124($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -260($sp)
  sub $sp, $sp, 280
  jal func_id_Mdvzosjy
  add $sp, $sp, 280
  move $t0, $v0
  sw $t0, -264($sp)
  lw $t1, -264($sp)
  li $t2, 51556
  bgt $t1, $t2, label460
  b label459
label460:
  lw $t1, -124($sp)
  lw $t2, -4($sp)
  blt $t1, $t2, label458
  b label459
  label458:
  li $t0, 1
  sw $t0, -268($sp)
  b label461
  label459:
  li $t0, 0
  sw $t0, -268($sp)
  label461:
  lw $t1, -268($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -12($sp)
  lw $t2, -272($sp)
  add $t0, $t1, $t2
  sw $t0, -276($sp)
  lw $t1, -276($sp)
  lw $t1, 0($t1)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_OAYxiBjEU:
  sw $ra, 0($sp)
  sub $t0, $sp, 36
  sw $t0, -16($sp)
  sub $t0, $sp, 68
  sw $t0, -44($sp)
  sub $t0, $sp, 104
  sw $t0, -76($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -108($sp)
  lw $t1, -16($sp)
  lw $t2, -108($sp)
  add $t0, $t1, $t2
  sw $t0, -112($sp)
  li $t1, 4056
  move $t0, $t1
  lw $s0, -112($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -116($sp)
  lw $t1, -16($sp)
  lw $t2, -116($sp)
  add $t0, $t1, $t2
  sw $t0, -120($sp)
  li $t1, 32810
  move $t0, $t1
  lw $s0, -120($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -124($sp)
  lw $t1, -16($sp)
  lw $t2, -124($sp)
  add $t0, $t1, $t2
  sw $t0, -128($sp)
  li $t1, 24992
  move $t0, $t1
  lw $s0, -128($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -132($sp)
  lw $t1, -16($sp)
  lw $t2, -132($sp)
  add $t0, $t1, $t2
  sw $t0, -136($sp)
  li $t1, 17117
  move $t0, $t1
  lw $s0, -136($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -140($sp)
  lw $t1, -16($sp)
  lw $t2, -140($sp)
  add $t0, $t1, $t2
  sw $t0, -144($sp)
  li $t1, 9443
  move $t0, $t1
  lw $s0, -144($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -148($sp)
  lw $t1, -44($sp)
  lw $t2, -148($sp)
  add $t0, $t1, $t2
  sw $t0, -152($sp)
  li $t1, 6088
  move $t0, $t1
  lw $s0, -152($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -156($sp)
  lw $t1, -44($sp)
  lw $t2, -156($sp)
  add $t0, $t1, $t2
  sw $t0, -160($sp)
  li $t1, 64780
  move $t0, $t1
  lw $s0, -160($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -164($sp)
  lw $t1, -44($sp)
  lw $t2, -164($sp)
  add $t0, $t1, $t2
  sw $t0, -168($sp)
  li $t1, 14548
  move $t0, $t1
  lw $s0, -168($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -172($sp)
  lw $t1, -44($sp)
  lw $t2, -172($sp)
  add $t0, $t1, $t2
  sw $t0, -176($sp)
  li $t1, 48527
  move $t0, $t1
  lw $s0, -176($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -180($sp)
  lw $t1, -44($sp)
  lw $t2, -180($sp)
  add $t0, $t1, $t2
  sw $t0, -184($sp)
  li $t1, 22683
  move $t0, $t1
  lw $s0, -184($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -188($sp)
  lw $t1, -44($sp)
  lw $t2, -188($sp)
  add $t0, $t1, $t2
  sw $t0, -192($sp)
  li $t1, 26454
  move $t0, $t1
  lw $s0, -192($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -196($sp)
  lw $t1, -76($sp)
  lw $t2, -196($sp)
  add $t0, $t1, $t2
  sw $t0, -200($sp)
  li $t1, 59078
  move $t0, $t1
  lw $s0, -200($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -204($sp)
  lw $t1, -76($sp)
  lw $t2, -204($sp)
  add $t0, $t1, $t2
  sw $t0, -208($sp)
  li $t1, 5933
  move $t0, $t1
  lw $s0, -208($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -212($sp)
  lw $t1, -76($sp)
  lw $t2, -212($sp)
  add $t0, $t1, $t2
  sw $t0, -216($sp)
  li $t1, 1051
  move $t0, $t1
  lw $s0, -216($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -220($sp)
  lw $t1, -76($sp)
  lw $t2, -220($sp)
  add $t0, $t1, $t2
  sw $t0, -224($sp)
  li $t1, 36147
  move $t0, $t1
  lw $s0, -224($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -228($sp)
  lw $t1, -76($sp)
  lw $t2, -228($sp)
  add $t0, $t1, $t2
  sw $t0, -232($sp)
  li $t1, 21112
  move $t0, $t1
  lw $s0, -232($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -236($sp)
  lw $t1, -76($sp)
  lw $t2, -236($sp)
  add $t0, $t1, $t2
  sw $t0, -240($sp)
  li $t1, 42951
  move $t0, $t1
  lw $s0, -240($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -244($sp)
  lw $t1, -76($sp)
  lw $t2, -244($sp)
  add $t0, $t1, $t2
  sw $t0, -248($sp)
  li $t1, 3533
  move $t0, $t1
  lw $s0, -248($sp)
  sw $t0, 0($s0)
  li $t1, 28314
  move $t0, $t1
  sw $t0, -252($sp)
  li $t1, 16378
  move $t0, $t1
  sw $t0, -256($sp)
  li $t1, 45793
  move $t0, $t1
  sw $t0, -260($sp)
  lw $t1, -260($sp)
  li $t2, 0
  bne $t1, $t2, label465
  b label464
  label464:
  li $t0, 1
  sw $t0, -264($sp)
  b label466
  label465:
  li $t0, 0
  sw $t0, -264($sp)
  label466:
  li $t1, 0
  lw $t2, -264($sp)
  sub $t0, $t1, $t2
  sw $t0, -268($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -16($sp)
  lw $t2, -272($sp)
  add $t0, $t1, $t2
  sw $t0, -276($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -280($sp)
  lw $t1, -76($sp)
  lw $t2, -280($sp)
  add $t0, $t1, $t2
  sw $t0, -284($sp)
  li $t1, 0
  li $t2, 39258
  sub $t0, $t1, $t2
  sw $t0, -288($sp)
  lw $t1, -288($sp)
  li $t2, 17626
  sub $t0, $t1, $t2
  sw $t0, -292($sp)
  lw $t1, -292($sp)
  sw $t1, -1032($sp)
  lw $t1, -284($sp)
  lw $t1, 0($t1)
  sw $t1, -1036($sp)
  sub $sp, $sp, 1028
  jal func_id_eZzKtHKigb
  add $sp, $sp, 1028
  move $t0, $v0
  sw $t0, -296($sp)
  lw $t1, -276($sp)
  lw $t1, 0($t1)
  lw $t2, -296($sp)
  add $t0, $t1, $t2
  sw $t0, -300($sp)
  lw $t1, -268($sp)
  lw $t2, -300($sp)
  ble $t1, $t2, label462
  b label463
  label462:
  li $t0, 1
  sw $t0, -304($sp)
  b label467
  label463:
  li $t0, 0
  sw $t0, -304($sp)
  label467:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -308($sp)
  lw $t1, -16($sp)
  lw $t2, -308($sp)
  add $t0, $t1, $t2
  sw $t0, -312($sp)
  lw $t1, -312($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -316($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -320($sp)
  lw $t1, -16($sp)
  lw $t2, -320($sp)
  add $t0, $t1, $t2
  sw $t0, -324($sp)
  lw $t1, -324($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -328($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -332($sp)
  lw $t1, -16($sp)
  lw $t2, -332($sp)
  add $t0, $t1, $t2
  sw $t0, -336($sp)
  lw $t1, -336($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -340($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -344($sp)
  lw $t1, -16($sp)
  lw $t2, -344($sp)
  add $t0, $t1, $t2
  sw $t0, -348($sp)
  lw $t1, -348($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -352($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -356($sp)
  lw $t1, -16($sp)
  lw $t2, -356($sp)
  add $t0, $t1, $t2
  sw $t0, -360($sp)
  lw $t1, -360($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -364($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -368($sp)
  lw $t1, -44($sp)
  lw $t2, -368($sp)
  add $t0, $t1, $t2
  sw $t0, -372($sp)
  lw $t1, -372($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -376($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -380($sp)
  lw $t1, -44($sp)
  lw $t2, -380($sp)
  add $t0, $t1, $t2
  sw $t0, -384($sp)
  lw $t1, -384($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -388($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -392($sp)
  lw $t1, -44($sp)
  lw $t2, -392($sp)
  add $t0, $t1, $t2
  sw $t0, -396($sp)
  lw $t1, -396($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -400($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -404($sp)
  lw $t1, -44($sp)
  lw $t2, -404($sp)
  add $t0, $t1, $t2
  sw $t0, -408($sp)
  lw $t1, -408($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -412($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -416($sp)
  lw $t1, -44($sp)
  lw $t2, -416($sp)
  add $t0, $t1, $t2
  sw $t0, -420($sp)
  lw $t1, -420($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -424($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -428($sp)
  lw $t1, -44($sp)
  lw $t2, -428($sp)
  add $t0, $t1, $t2
  sw $t0, -432($sp)
  lw $t1, -432($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -436($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -76($sp)
  lw $t2, -440($sp)
  add $t0, $t1, $t2
  sw $t0, -444($sp)
  lw $t1, -444($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -448($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -452($sp)
  lw $t1, -76($sp)
  lw $t2, -452($sp)
  add $t0, $t1, $t2
  sw $t0, -456($sp)
  lw $t1, -456($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -460($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -464($sp)
  lw $t1, -76($sp)
  lw $t2, -464($sp)
  add $t0, $t1, $t2
  sw $t0, -468($sp)
  lw $t1, -468($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -472($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -476($sp)
  lw $t1, -76($sp)
  lw $t2, -476($sp)
  add $t0, $t1, $t2
  sw $t0, -480($sp)
  lw $t1, -480($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -484($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -488($sp)
  lw $t1, -76($sp)
  lw $t2, -488($sp)
  add $t0, $t1, $t2
  sw $t0, -492($sp)
  lw $t1, -492($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -496($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -500($sp)
  lw $t1, -76($sp)
  lw $t2, -500($sp)
  add $t0, $t1, $t2
  sw $t0, -504($sp)
  lw $t1, -504($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -508($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -512($sp)
  lw $t1, -76($sp)
  lw $t2, -512($sp)
  add $t0, $t1, $t2
  sw $t0, -516($sp)
  lw $t1, -516($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -520($sp)
  lw $t1, -252($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -524($sp)
  lw $t1, -256($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -528($sp)
  lw $t1, -260($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -532($sp)
  li $t1, 0
  lw $t2, -252($sp)
  sub $t0, $t1, $t2
  sw $t0, -536($sp)
  lw $t1, -536($sp)
  li $t2, 0
  bne $t1, $t2, label472
  b label471
  label471:
  li $t0, 1
  sw $t0, -540($sp)
  b label473
  label472:
  li $t0, 0
  sw $t0, -540($sp)
  label473:
  li $t1, 0
  lw $t2, -540($sp)
  sub $t0, $t1, $t2
  sw $t0, -544($sp)
  lw $t1, -544($sp)
  li $t2, 0
  bne $t1, $t2, label468
  b label470
label470:
  li $t1, 0
  li $t2, 23198
  sub $t0, $t1, $t2
  sw $t0, -548($sp)
  lw $t1, -548($sp)
  li $t2, 18469
  blt $t1, $t2, label474
  b label469
label474:
  li $t1, 50255
  li $t2, 0
  bne $t1, $t2, label468
  b label469
  label468:
  li $t0, 1
  sw $t0, -552($sp)
  b label475
  label469:
  li $t0, 0
  sw $t0, -552($sp)
  label475:
  lw $t1, -552($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -556($sp)
  lw $t1, -16($sp)
  lw $t2, -556($sp)
  add $t0, $t1, $t2
  sw $t0, -560($sp)
  lw $t1, -560($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label476
  b label478
label478:
  li $t1, 17529
  lw $t2, -260($sp)
  mulo $t0, $t1, $t2
  sw $t0, -564($sp)
  lw $t1, -564($sp)
  li $t2, 34210
  mulo $t0, $t1, $t2
  sw $t0, -568($sp)
  lw $t1, -568($sp)
  li $t2, 39643
  sub $t0, $t1, $t2
  sw $t0, -572($sp)
  lw $t1, -572($sp)
  li $t2, 0
  bne $t1, $t2, label476
  b label477
  label476:
  li $t0, 1
  sw $t0, -576($sp)
  b label479
  label477:
  li $t0, 0
  sw $t0, -576($sp)
  label479:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -580($sp)
  lw $t1, -16($sp)
  lw $t2, -580($sp)
  add $t0, $t1, $t2
  sw $t0, -584($sp)
  sub $sp, $sp, 1028
  jal func_id_Mdvzosjy
  add $sp, $sp, 1028
  move $t0, $v0
  sw $t0, -588($sp)
  lw $t1, -584($sp)
  lw $t1, 0($t1)
  lw $t2, -588($sp)
  mulo $t0, $t1, $t2
  sw $t0, -592($sp)
  lw $t1, -256($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -596($sp)
  lw $t1, -44($sp)
  lw $t2, -596($sp)
  add $t0, $t1, $t2
  sw $t0, -600($sp)
  li $t1, 0
  lw $t2, -600($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -604($sp)
  lw $t1, -592($sp)
  lw $t2, -604($sp)
  bne $t1, $t2, label480
  b label481
  label480:
  li $t0, 1
  sw $t0, -608($sp)
  b label482
  label481:
  li $t0, 0
  sw $t0, -608($sp)
  label482:
  sub $t0, $sp, 624
  sw $t0, -616($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -628($sp)
  lw $t1, -616($sp)
  lw $t2, -628($sp)
  add $t0, $t1, $t2
  sw $t0, -632($sp)
  li $t1, 41520
  move $t0, $t1
  lw $s0, -632($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -636($sp)
  lw $t1, -616($sp)
  lw $t2, -636($sp)
  add $t0, $t1, $t2
  sw $t0, -640($sp)
  li $t1, 23290
  move $t0, $t1
  lw $s0, -640($sp)
  sw $t0, 0($s0)
  li $t1, 61570
  move $t0, $t1
  sw $t0, -644($sp)
  li $t1, 2439
  move $t0, $t1
  sw $t0, -648($sp)
  li $t1, 16833
  li $t2, 0
  bne $t1, $t2, label487
  b label486
  label486:
  li $t0, 1
  sw $t0, -652($sp)
  b label488
  label487:
  li $t0, 0
  sw $t0, -652($sp)
  label488:
  lw $t1, -644($sp)
  li $t2, 0
  bne $t1, $t2, label492
  b label490
label492:
  li $t1, 1967
  li $t2, 0
  bne $t1, $t2, label491
  b label490
label491:
  li $t1, 3490
  li $t2, 0
  bne $t1, $t2, label489
  b label490
  label489:
  li $t0, 1
  sw $t0, -656($sp)
  b label493
  label490:
  li $t0, 0
  sw $t0, -656($sp)
  label493:
  lw $t1, -656($sp)
  sw $t1, -1032($sp)
  sub $sp, $sp, 1028
  jal func_id_HusWF
  add $sp, $sp, 1028
  move $t0, $v0
  sw $t0, -660($sp)
  li $t1, 0
  lw $t2, -660($sp)
  sub $t0, $t1, $t2
  sw $t0, -664($sp)
  lw $t1, -652($sp)
  lw $t2, -664($sp)
  bgt $t1, $t2, label483
  b label484
label483:
  lw $t1, -256($sp)
  move $t0, $t1
  sw $t0, -252($sp)
  lw $t1, -252($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -668($sp)
  lw $t1, -16($sp)
  lw $t2, -668($sp)
  add $t0, $t1, $t2
  sw $t0, -672($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -676($sp)
  lw $t1, -44($sp)
  lw $t2, -676($sp)
  add $t0, $t1, $t2
  sw $t0, -680($sp)
  lw $t1, -672($sp)
  lw $t1, 0($t1)
  lw $t2, -680($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -684($sp)
  lw $t1, -684($sp)
  li $t2, 0
  bne $t1, $t2, label494
  b label496
label496:
  li $t1, 0
  li $t2, 46442
  sub $t0, $t1, $t2
  sw $t0, -688($sp)
  lw $t1, -688($sp)
  lw $t2, -648($sp)
  div $t0, $t1, $t2
  sw $t0, -692($sp)
  lw $t1, -692($sp)
  li $t2, 51395
  div $t0, $t1, $t2
  sw $t0, -696($sp)
  lw $t1, -696($sp)
  li $t2, 0
  bne $t1, $t2, label494
  b label495
  label494:
  li $t0, 1
  sw $t0, -700($sp)
  b label497
  label495:
  li $t0, 0
  sw $t0, -700($sp)
  label497:
  b label485
label484:
  li $t1, 62820
  lw $t2, -648($sp)
  sub $t0, $t1, $t2
  sw $t0, -704($sp)
  li $t1, 0
  lw $t2, -252($sp)
  sub $t0, $t1, $t2
  sw $t0, -708($sp)
  lw $t1, -708($sp)
  li $t2, 0
  bne $t1, $t2, label502
  b label501
label502:
  li $t1, 36771
  li $t2, 0
  bne $t1, $t2, label500
  b label501
  label500:
  li $t0, 1
  sw $t0, -712($sp)
  b label503
  label501:
  li $t0, 0
  sw $t0, -712($sp)
  label503:
  lw $t1, -260($sp)
  move $t0, $t1
  sw $t0, -4($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -716($sp)
  lw $t1, -616($sp)
  lw $t2, -716($sp)
  add $t0, $t1, $t2
  sw $t0, -720($sp)
  lw $t1, -720($sp)
  lw $t1, 0($t1)
  lw $t2, -8($sp)
  beq $t1, $t2, label504
  b label505
  label504:
  li $t0, 1
  sw $t0, -724($sp)
  b label506
  label505:
  li $t0, 0
  sw $t0, -724($sp)
  label506:
  lw $t1, -256($sp)
  li $t2, 60398
  div $t0, $t1, $t2
  sw $t0, -728($sp)
  lw $t1, -728($sp)
  li $t2, 0
  bne $t1, $t2, label509
  b label508
label509:
  li $t1, 39122
  li $t2, 0
  bne $t1, $t2, label507
  b label508
  label507:
  li $t0, 1
  sw $t0, -732($sp)
  b label510
  label508:
  li $t0, 0
  sw $t0, -732($sp)
  label510:
  lw $t1, -648($sp)
  li $t2, 62501
  mulo $t0, $t1, $t2
  sw $t0, -736($sp)
  lw $t1, -736($sp)
  li $t2, 12488
  mulo $t0, $t1, $t2
  sw $t0, -740($sp)
  lw $t1, -740($sp)
  sw $t1, -1032($sp)
  lw $t1, -732($sp)
  sw $t1, -1036($sp)
  lw $t1, -724($sp)
  sw $t1, -1040($sp)
  lw $t1, -4($sp)
  sw $t1, -1044($sp)
  lw $t1, -712($sp)
  sw $t1, -1048($sp)
  sub $sp, $sp, 1028
  jal func_id_v1
  add $sp, $sp, 1028
  move $t0, $v0
  sw $t0, -744($sp)
  lw $t1, -648($sp)
  li $t2, 62320
  blt $t1, $t2, label513
  b label514
  label513:
  li $t0, 1
  sw $t0, -748($sp)
  b label515
  label514:
  li $t0, 0
  sw $t0, -748($sp)
  label515:
  lw $t1, -748($sp)
  lw $t2, -252($sp)
  bge $t1, $t2, label511
  b label512
  label511:
  li $t0, 1
  sw $t0, -752($sp)
  b label516
  label512:
  li $t0, 0
  sw $t0, -752($sp)
  label516:
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -756($sp)
  lw $t1, -616($sp)
  lw $t2, -756($sp)
  add $t0, $t1, $t2
  sw $t0, -760($sp)
  lw $t1, -760($sp)
  lw $t1, 0($t1)
  li $t2, 6003
  beq $t1, $t2, label517
  b label518
  label517:
  li $t0, 1
  sw $t0, -764($sp)
  b label519
  label518:
  li $t0, 0
  sw $t0, -764($sp)
  label519:
  li $t1, 37960
  sw $t1, -1032($sp)
  lw $t1, -764($sp)
  sw $t1, -1036($sp)
  lw $t1, -752($sp)
  sw $t1, -1040($sp)
  lw $t1, -744($sp)
  sw $t1, -1044($sp)
  lw $t1, -704($sp)
  sw $t1, -1048($sp)
  sub $sp, $sp, 1028
  jal func_id_v1
  add $sp, $sp, 1028
  move $t0, $v0
  sw $t0, -768($sp)
  lw $t1, -768($sp)
  li $t2, 0
  bne $t1, $t2, label499
  b label498
  label498:
  li $t0, 1
  sw $t0, -772($sp)
  b label520
  label499:
  li $t0, 0
  sw $t0, -772($sp)
  label520:
  lw $t1, -772($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -776($sp)
  lw $t1, -44($sp)
  lw $t2, -776($sp)
  add $t0, $t1, $t2
  sw $t0, -780($sp)
  li $t1, 0
  lw $t2, -780($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -784($sp)
  lw $t1, -784($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label485:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -788($sp)
  lw $t1, -16($sp)
  lw $t2, -788($sp)
  add $t0, $t1, $t2
  sw $t0, -792($sp)
  lw $t1, -792($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -796($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -800($sp)
  lw $t1, -16($sp)
  lw $t2, -800($sp)
  add $t0, $t1, $t2
  sw $t0, -804($sp)
  lw $t1, -804($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -808($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -812($sp)
  lw $t1, -16($sp)
  lw $t2, -812($sp)
  add $t0, $t1, $t2
  sw $t0, -816($sp)
  lw $t1, -816($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -820($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -824($sp)
  lw $t1, -16($sp)
  lw $t2, -824($sp)
  add $t0, $t1, $t2
  sw $t0, -828($sp)
  lw $t1, -828($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -832($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -836($sp)
  lw $t1, -16($sp)
  lw $t2, -836($sp)
  add $t0, $t1, $t2
  sw $t0, -840($sp)
  lw $t1, -840($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -844($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -848($sp)
  lw $t1, -44($sp)
  lw $t2, -848($sp)
  add $t0, $t1, $t2
  sw $t0, -852($sp)
  lw $t1, -852($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -856($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -860($sp)
  lw $t1, -44($sp)
  lw $t2, -860($sp)
  add $t0, $t1, $t2
  sw $t0, -864($sp)
  lw $t1, -864($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -868($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -872($sp)
  lw $t1, -44($sp)
  lw $t2, -872($sp)
  add $t0, $t1, $t2
  sw $t0, -876($sp)
  lw $t1, -876($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -880($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -884($sp)
  lw $t1, -44($sp)
  lw $t2, -884($sp)
  add $t0, $t1, $t2
  sw $t0, -888($sp)
  lw $t1, -888($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -892($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -896($sp)
  lw $t1, -44($sp)
  lw $t2, -896($sp)
  add $t0, $t1, $t2
  sw $t0, -900($sp)
  lw $t1, -900($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -904($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -908($sp)
  lw $t1, -44($sp)
  lw $t2, -908($sp)
  add $t0, $t1, $t2
  sw $t0, -912($sp)
  lw $t1, -912($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -916($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -920($sp)
  lw $t1, -76($sp)
  lw $t2, -920($sp)
  add $t0, $t1, $t2
  sw $t0, -924($sp)
  lw $t1, -924($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -928($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -932($sp)
  lw $t1, -76($sp)
  lw $t2, -932($sp)
  add $t0, $t1, $t2
  sw $t0, -936($sp)
  lw $t1, -936($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -940($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -944($sp)
  lw $t1, -76($sp)
  lw $t2, -944($sp)
  add $t0, $t1, $t2
  sw $t0, -948($sp)
  lw $t1, -948($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -952($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -956($sp)
  lw $t1, -76($sp)
  lw $t2, -956($sp)
  add $t0, $t1, $t2
  sw $t0, -960($sp)
  lw $t1, -960($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -964($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -968($sp)
  lw $t1, -76($sp)
  lw $t2, -968($sp)
  add $t0, $t1, $t2
  sw $t0, -972($sp)
  lw $t1, -972($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -976($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -980($sp)
  lw $t1, -76($sp)
  lw $t2, -980($sp)
  add $t0, $t1, $t2
  sw $t0, -984($sp)
  lw $t1, -984($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -988($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -992($sp)
  lw $t1, -76($sp)
  lw $t2, -992($sp)
  add $t0, $t1, $t2
  sw $t0, -996($sp)
  lw $t1, -996($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1000($sp)
  lw $t1, -252($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1004($sp)
  lw $t1, -256($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1008($sp)
  lw $t1, -260($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1012($sp)
  lw $t1, -4($sp)
  li $t2, 0
  bne $t1, $t2, label524
  b label523
  label523:
  li $t0, 1
  sw $t0, -1016($sp)
  b label525
  label524:
  li $t0, 0
  sw $t0, -1016($sp)
  label525:
  lw $t1, -260($sp)
  lw $t2, -1016($sp)
  mulo $t0, $t1, $t2
  sw $t0, -1020($sp)
  lw $t1, -260($sp)
  lw $t2, -1020($sp)
  beq $t1, $t2, label521
  b label522
  label521:
  li $t0, 1
  sw $t0, -1024($sp)
  b label526
  label522:
  li $t0, 0
  sw $t0, -1024($sp)
  label526:
  lw $t1, -1024($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_B:
  sw $ra, 0($sp)
  sub $t0, $sp, 32
  sw $t0, -16($sp)
  sub $t0, $sp, 44
  sw $t0, -40($sp)
  li $t1, 14736
  move $t0, $t1
  sw $t0, -48($sp)
  li $t1, 40213
  move $t0, $t1
  sw $t0, -52($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -56($sp)
  lw $t1, -16($sp)
  lw $t2, -56($sp)
  add $t0, $t1, $t2
  sw $t0, -60($sp)
  li $t1, 12067
  move $t0, $t1
  lw $s0, -60($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -64($sp)
  lw $t1, -16($sp)
  lw $t2, -64($sp)
  add $t0, $t1, $t2
  sw $t0, -68($sp)
  li $t1, 41708
  move $t0, $t1
  lw $s0, -68($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -72($sp)
  lw $t1, -16($sp)
  lw $t2, -72($sp)
  add $t0, $t1, $t2
  sw $t0, -76($sp)
  li $t1, 14976
  move $t0, $t1
  lw $s0, -76($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -80($sp)
  lw $t1, -16($sp)
  lw $t2, -80($sp)
  add $t0, $t1, $t2
  sw $t0, -84($sp)
  li $t1, 50954
  move $t0, $t1
  lw $s0, -84($sp)
  sw $t0, 0($s0)
  li $t1, 17693
  move $t0, $t1
  sw $t0, -88($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -92($sp)
  lw $t1, -40($sp)
  lw $t2, -92($sp)
  add $t0, $t1, $t2
  sw $t0, -96($sp)
  li $t1, 38267
  move $t0, $t1
  lw $s0, -96($sp)
  sw $t0, 0($s0)
  li $t1, 46988
  move $t0, $t1
  sw $t0, -100($sp)
  li $t1, 20132
  move $t0, $t1
  sw $t0, -104($sp)
  li $t1, 55100
  move $t0, $t1
  sw $t0, -108($sp)
  li $t1, 48956
  move $t0, $t1
  sw $t0, -112($sp)
  li $t1, 23622
  move $t0, $t1
  sw $t0, -116($sp)
  li $t1, 42544
  move $t0, $t1
  sw $t0, -120($sp)
  li $t1, 6500
  move $t0, $t1
  sw $t0, -124($sp)
  li $t1, 4528
  move $t0, $t1
  sw $t0, -128($sp)
  li $t1, 33521
  move $t0, $t1
  sw $t0, -132($sp)
  li $t1, 57894
  move $t0, $t1
  sw $t0, -136($sp)
  li $t1, 1812
  move $t0, $t1
  sw $t0, -140($sp)
  li $t1, 4756
  move $t0, $t1
  sw $t0, -144($sp)
  li $t1, 14349
  move $t0, $t1
  sw $t0, -148($sp)
  li $t1, 25055
  move $t0, $t1
  sw $t0, -152($sp)
  li $t1, 65155
  move $t0, $t1
  sw $t0, -156($sp)
  li $t1, 53471
  move $t0, $t1
  sw $t0, -160($sp)
  li $t1, 22020
  move $t0, $t1
  sw $t0, -164($sp)
  li $t1, 12107
  move $t0, $t1
  sw $t0, -168($sp)
  li $t1, 50256
  move $t0, $t1
  sw $t0, -172($sp)
  li $t1, 37454
  move $t0, $t1
  sw $t0, -176($sp)
  li $t1, 9315
  move $t0, $t1
  sw $t0, -180($sp)
  li $t1, 56259
  move $t0, $t1
  sw $t0, -184($sp)
  li $t1, 9879
  move $t0, $t1
  sw $t0, -188($sp)
  sub $t0, $sp, 204
  sw $t0, -196($sp)
  li $t1, 24051
  move $t0, $t1
  sw $t0, -208($sp)
  li $t1, 30936
  move $t0, $t1
  sw $t0, -212($sp)
  li $t1, 21946
  move $t0, $t1
  sw $t0, -216($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -220($sp)
  lw $t1, -196($sp)
  lw $t2, -220($sp)
  add $t0, $t1, $t2
  sw $t0, -224($sp)
  li $t1, 224
  move $t0, $t1
  lw $s0, -224($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -228($sp)
  lw $t1, -196($sp)
  lw $t2, -228($sp)
  add $t0, $t1, $t2
  sw $t0, -232($sp)
  li $t1, 45913
  move $t0, $t1
  lw $s0, -232($sp)
  sw $t0, 0($s0)
  li $t1, 7365
  move $t0, $t1
  sw $t0, -236($sp)
label527:
  li $t1, 17917
  li $t2, 0
  bne $t1, $t2, label531
  b label530
  label530:
  li $t0, 1
  sw $t0, -240($sp)
  b label532
  label531:
  li $t0, 0
  sw $t0, -240($sp)
  label532:
  li $t1, 0
  lw $t2, -240($sp)
  sub $t0, $t1, $t2
  sw $t0, -244($sp)
  lw $t1, -168($sp)
  li $t2, 0
  bne $t1, $t2, label535
  b label534
label535:
  lw $t1, -52($sp)
  li $t2, 0
  bne $t1, $t2, label533
  b label534
  label533:
  li $t0, 1
  sw $t0, -248($sp)
  b label536
  label534:
  li $t0, 0
  sw $t0, -248($sp)
  label536:
  lw $t1, -148($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -252($sp)
  lw $t1, -40($sp)
  lw $t2, -252($sp)
  add $t0, $t1, $t2
  sw $t0, -256($sp)
  lw $t1, -128($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -260($sp)
  lw $t1, -16($sp)
  lw $t2, -260($sp)
  add $t0, $t1, $t2
  sw $t0, -264($sp)
  lw $t1, -264($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label539
  b label538
label539:
  lw $t1, -108($sp)
  li $t2, 0
  bne $t1, $t2, label537
  b label538
  label537:
  li $t0, 1
  sw $t0, -268($sp)
  b label540
  label538:
  li $t0, 0
  sw $t0, -268($sp)
  label540:
  lw $t1, -88($sp)
  lw $t2, -112($sp)
  div $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -272($sp)
  li $t2, 54353
  beq $t1, $t2, label541
  b label542
  label541:
  li $t0, 1
  sw $t0, -276($sp)
  b label543
  label542:
  li $t0, 0
  sw $t0, -276($sp)
  label543:
  li $t1, 38049
  li $t2, 8208
  sub $t0, $t1, $t2
  sw $t0, -280($sp)
  lw $t1, -280($sp)
  sw $t1, -1140($sp)
  lw $t1, -276($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_eZzKtHKigb
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -284($sp)
  li $t1, 61671
  li $t2, 0
  bne $t1, $t2, label547
  b label550
label550:
  li $t1, 50752
  li $t2, 0
  bne $t1, $t2, label547
  b label549
label549:
  lw $t1, -212($sp)
  li $t2, 0
  bne $t1, $t2, label547
  b label548
  label547:
  li $t0, 1
  sw $t0, -288($sp)
  b label551
  label548:
  li $t0, 0
  sw $t0, -288($sp)
  label551:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -292($sp)
  lw $t1, -196($sp)
  lw $t2, -292($sp)
  add $t0, $t1, $t2
  sw $t0, -296($sp)
  lw $t1, -296($sp)
  lw $t1, 0($t1)
  li $t2, 18737
  add $t0, $t1, $t2
  sw $t0, -300($sp)
  lw $t1, -300($sp)
  sw $t1, -1140($sp)
  lw $t1, -288($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -304($sp)
  lw $t1, -304($sp)
  lw $t2, -184($sp)
  add $t0, $t1, $t2
  sw $t0, -308($sp)
  lw $t1, -308($sp)
  sw $t1, -1140($sp)
  li $t1, 37773
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_eZzKtHKigb
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -312($sp)
  lw $t1, -312($sp)
  li $t2, 0
  bne $t1, $t2, label546
  b label545
label546:
  lw $t1, -48($sp)
  li $t2, 0
  bne $t1, $t2, label544
  b label545
  label544:
  li $t0, 1
  sw $t0, -316($sp)
  b label552
  label545:
  li $t0, 0
  sw $t0, -316($sp)
  label552:
  lw $t1, -316($sp)
  sw $t1, -1140($sp)
  lw $t1, -284($sp)
  sw $t1, -1144($sp)
  lw $t1, -268($sp)
  sw $t1, -1148($sp)
  li $t1, 18644
  sw $t1, -1152($sp)
  lw $t1, -208($sp)
  sw $t1, -1156($sp)
  sub $sp, $sp, 1136
  jal func_id_v1
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -320($sp)
  li $t1, 0
  lw $t2, -124($sp)
  sub $t0, $t1, $t2
  sw $t0, -324($sp)
  lw $t1, -324($sp)
  li $t2, 36631
  sub $t0, $t1, $t2
  sw $t0, -328($sp)
  lw $t1, -328($sp)
  sw $t1, -1140($sp)
  lw $t1, -320($sp)
  sw $t1, -1144($sp)
  lw $t1, -256($sp)
  lw $t1, 0($t1)
  sw $t1, -1148($sp)
  lw $t1, -248($sp)
  sw $t1, -1152($sp)
  lw $t1, -244($sp)
  sw $t1, -1156($sp)
  sub $sp, $sp, 1136
  jal func_id_v1
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -332($sp)
  li $t1, 0
  li $t2, 2476
  sub $t0, $t1, $t2
  sw $t0, -336($sp)
  lw $t1, -332($sp)
  lw $t2, -336($sp)
  mulo $t0, $t1, $t2
  sw $t0, -340($sp)
  li $t1, 23494
  lw $t2, -120($sp)
  div $t0, $t1, $t2
  sw $t0, -344($sp)
  lw $t1, -344($sp)
  lw $t2, -128($sp)
  mulo $t0, $t1, $t2
  sw $t0, -348($sp)
  lw $t1, -340($sp)
  lw $t2, -348($sp)
  add $t0, $t1, $t2
  sw $t0, -352($sp)
  lw $t1, -236($sp)
  li $t2, 0
  bne $t1, $t2, label554
  b label553
  label553:
  li $t0, 1
  sw $t0, -356($sp)
  b label555
  label554:
  li $t0, 0
  sw $t0, -356($sp)
  label555:
  lw $t1, -352($sp)
  lw $t2, -356($sp)
  ble $t1, $t2, label528
  b label529
label528:
  sub $sp, $sp, 1136
  jal func_id_Mdvzosjy
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -360($sp)
  lw $t1, -360($sp)
  lw $t2, -156($sp)
  add $t0, $t1, $t2
  sw $t0, -364($sp)
  lw $t1, -140($sp)
  sw $t1, -1140($sp)
  lw $t1, -364($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -368($sp)
  b label527
label529:
  lw $t1, -108($sp)
  li $t2, 0
  bne $t1, $t2, label560
  b label559
  label559:
  li $t0, 1
  sw $t0, -372($sp)
  b label561
  label560:
  li $t0, 0
  sw $t0, -372($sp)
  label561:
  li $t1, 50981
  li $t2, 27531
  bgt $t1, $t2, label562
  b label563
  label562:
  li $t0, 1
  sw $t0, -376($sp)
  b label564
  label563:
  li $t0, 0
  sw $t0, -376($sp)
  label564:
  lw $t1, -376($sp)
  sw $t1, -1140($sp)
  lw $t1, -372($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -380($sp)
  lw $t1, -148($sp)
  li $t2, 38916
  div $t0, $t1, $t2
  sw $t0, -384($sp)
  lw $t1, -384($sp)
  li $t2, 49551
  blt $t1, $t2, label567
  b label568
  label567:
  li $t0, 1
  sw $t0, -388($sp)
  b label569
  label568:
  li $t0, 0
  sw $t0, -388($sp)
  label569:
  lw $t1, -388($sp)
  sw $t1, -1140($sp)
  li $t1, 23113
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -392($sp)
  lw $t1, -392($sp)
  li $t2, 0
  bne $t1, $t2, label566
  b label565
  label565:
  li $t0, 1
  sw $t0, -396($sp)
  b label570
  label566:
  li $t0, 0
  sw $t0, -396($sp)
  label570:
  lw $t1, -380($sp)
  lw $t2, -396($sp)
  sub $t0, $t1, $t2
  sw $t0, -400($sp)
  lw $t1, -400($sp)
  li $t2, 0
  bne $t1, $t2, label556
  b label557
label556:
  b label558
label557:
  li $t1, 23636
  li $t2, 0
  bne $t1, $t2, label574
  b label573
  label573:
  li $t0, 1
  sw $t0, -404($sp)
  b label575
  label574:
  li $t0, 0
  sw $t0, -404($sp)
  label575:
  lw $t1, -404($sp)
  lw $t2, -164($sp)
  bgt $t1, $t2, label571
  b label572
  label571:
  li $t0, 1
  sw $t0, -408($sp)
  b label576
  label572:
  li $t0, 0
  sw $t0, -408($sp)
  label576:
  lw $t1, -408($sp)
  sw $t1, -1140($sp)
  li $t1, 35220
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -412($sp)
  lw $t1, -412($sp)
  lw $t2, -184($sp)
  sub $t0, $t1, $t2
  sw $t0, -416($sp)
  li $t1, 21470
  li $t2, 0
  bne $t1, $t2, label578
  b label577
  label577:
  li $t0, 1
  sw $t0, -420($sp)
  b label579
  label578:
  li $t0, 0
  sw $t0, -420($sp)
  label579:
  lw $t1, -420($sp)
  lw $t2, -124($sp)
  add $t0, $t1, $t2
  sw $t0, -424($sp)
  lw $t1, -424($sp)
  sw $t1, -1140($sp)
  lw $t1, -416($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -428($sp)
label558:
  li $t1, 44535
  li $t2, 0
  bne $t1, $t2, label583
  b label582
  label582:
  li $t0, 1
  sw $t0, -432($sp)
  b label584
  label583:
  li $t0, 0
  sw $t0, -432($sp)
  label584:
  lw $t1, -432($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -436($sp)
  lw $t1, -40($sp)
  lw $t2, -436($sp)
  add $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -440($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label581
  b label580
  label580:
  li $t0, 1
  sw $t0, -444($sp)
  b label585
  label581:
  li $t0, 0
  sw $t0, -444($sp)
  label585:
  li $t1, 0
  li $t2, 14359
  sub $t0, $t1, $t2
  sw $t0, -448($sp)
  lw $t1, -444($sp)
  lw $t2, -448($sp)
  div $t0, $t1, $t2
  sw $t0, -452($sp)
label586:
  lw $t1, -152($sp)
  li $t2, 0
  bne $t1, $t2, label592
  b label591
  label591:
  li $t0, 1
  sw $t0, -456($sp)
  b label593
  label592:
  li $t0, 0
  sw $t0, -456($sp)
  label593:
  li $t1, 0
  lw $t2, -456($sp)
  sub $t0, $t1, $t2
  sw $t0, -460($sp)
  lw $t1, -460($sp)
  li $t2, 0
  bne $t1, $t2, label590
  b label589
  label589:
  li $t0, 1
  sw $t0, -464($sp)
  b label594
  label590:
  li $t0, 0
  sw $t0, -464($sp)
  label594:
  li $t1, 0
  lw $t2, -116($sp)
  sub $t0, $t1, $t2
  sw $t0, -468($sp)
  lw $t1, -464($sp)
  lw $t2, -468($sp)
  div $t0, $t1, $t2
  sw $t0, -472($sp)
  li $t1, 0
  lw $t2, -188($sp)
  sub $t0, $t1, $t2
  sw $t0, -476($sp)
  lw $t1, -472($sp)
  lw $t2, -476($sp)
  mulo $t0, $t1, $t2
  sw $t0, -480($sp)
  lw $t1, -480($sp)
  li $t2, 0
  bne $t1, $t2, label587
  b label588
label587:
  li $t1, 0
  li $t2, 31349
  sub $t0, $t1, $t2
  sw $t0, -484($sp)
  lw $t1, -128($sp)
  li $t2, 0
  bne $t1, $t2, label599
  b label598
  label598:
  li $t0, 1
  sw $t0, -488($sp)
  b label600
  label599:
  li $t0, 0
  sw $t0, -488($sp)
  label600:
  lw $t1, -484($sp)
  lw $t2, -488($sp)
  mulo $t0, $t1, $t2
  sw $t0, -492($sp)
  lw $t1, -492($sp)
  li $t2, 0
  bne $t1, $t2, label597
  b label596
label597:
  li $t1, 3051
  lw $t2, -100($sp)
  bgt $t1, $t2, label595
  b label596
  label595:
  li $t0, 1
  sw $t0, -496($sp)
  b label601
  label596:
  li $t0, 0
  sw $t0, -496($sp)
  label601:
  b label586
label588:
  lw $t1, -48($sp)
  li $t2, 45296
  div $t0, $t1, $t2
  sw $t0, -500($sp)
  li $t1, 0
  li $t2, 53295
  sub $t0, $t1, $t2
  sw $t0, -504($sp)
  lw $t1, -504($sp)
  li $t2, 3275
  mulo $t0, $t1, $t2
  sw $t0, -508($sp)
  lw $t1, -500($sp)
  lw $t2, -508($sp)
  sub $t0, $t1, $t2
  sw $t0, -512($sp)
  li $t1, 25673
  lw $t2, -116($sp)
  mulo $t0, $t1, $t2
  sw $t0, -516($sp)
  lw $t1, -512($sp)
  lw $t2, -516($sp)
  ble $t1, $t2, label602
  b label603
label602:
  li $t1, 0
  li $t2, 60660
  sub $t0, $t1, $t2
  sw $t0, -520($sp)
  lw $t1, -116($sp)
  lw $t2, -52($sp)
  div $t0, $t1, $t2
  sw $t0, -524($sp)
  lw $t1, -520($sp)
  lw $t2, -524($sp)
  sub $t0, $t1, $t2
  sw $t0, -528($sp)
  lw $t1, -528($sp)
  lw $t2, -52($sp)
  bge $t1, $t2, label604
  b label605
  label604:
  li $t0, 1
  sw $t0, -532($sp)
  b label606
  label605:
  li $t0, 0
  sw $t0, -532($sp)
  label606:
label603:
  lw $t1, -208($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -536($sp)
  lw $t1, -212($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -540($sp)
  lw $t1, -216($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -544($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -548($sp)
  lw $t1, -196($sp)
  lw $t2, -548($sp)
  add $t0, $t1, $t2
  sw $t0, -552($sp)
  lw $t1, -552($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -556($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -560($sp)
  lw $t1, -196($sp)
  lw $t2, -560($sp)
  add $t0, $t1, $t2
  sw $t0, -564($sp)
  lw $t1, -564($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -568($sp)
  lw $t1, -236($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -572($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -576($sp)
  lw $t1, -40($sp)
  lw $t2, -576($sp)
  add $t0, $t1, $t2
  sw $t0, -580($sp)
  lw $t1, -580($sp)
  lw $t1, 0($t1)
  li $t2, 49478
  mulo $t0, $t1, $t2
  sw $t0, -584($sp)
  lw $t1, -584($sp)
  lw $t2, -216($sp)
  div $t0, $t1, $t2
  sw $t0, -588($sp)
  lw $t1, -160($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -592($sp)
  lw $t1, -16($sp)
  lw $t2, -592($sp)
  add $t0, $t1, $t2
  sw $t0, -596($sp)
  lw $t1, -124($sp)
  lw $t2, -596($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -600($sp)
  lw $t1, -588($sp)
  lw $t2, -600($sp)
  add $t0, $t1, $t2
  sw $t0, -604($sp)
  lw $t1, -604($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -160($sp)
  li $t2, 0
  bne $t1, $t2, label607
  b label608
label607:
  li $t1, 59241
  li $t2, 52525
  add $t0, $t1, $t2
  sw $t0, -608($sp)
  lw $t1, -608($sp)
  li $t2, 0
  bne $t1, $t2, label614
  b label616
label616:
  lw $t1, -144($sp)
  li $t2, 0
  bne $t1, $t2, label614
  b label615
  label614:
  li $t0, 1
  sw $t0, -612($sp)
  b label617
  label615:
  li $t0, 0
  sw $t0, -612($sp)
  label617:
  li $t1, 21715
  sw $t1, -1140($sp)
  lw $t1, -612($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -616($sp)
  lw $t1, -616($sp)
  li $t2, 55376
  ble $t1, $t2, label610
  b label613
label613:
  lw $t1, -132($sp)
  li $t2, 0
  bne $t1, $t2, label610
  b label611
label610:
label618:
  li $t1, 37741
  li $t2, 0
  bne $t1, $t2, label619
  b label620
label619:
  lw $t1, -144($sp)
  li $t2, 0
  bne $t1, $t2, label621
  b label623
label623:
  lw $t1, -156($sp)
  li $t2, 0
  bne $t1, $t2, label625
  b label624
  label624:
  li $t0, 1
  sw $t0, -620($sp)
  b label626
  label625:
  li $t0, 0
  sw $t0, -620($sp)
  label626:
  li $t1, 0
  lw $t2, -620($sp)
  sub $t0, $t1, $t2
  sw $t0, -624($sp)
  lw $t1, -624($sp)
  li $t2, 0
  bne $t1, $t2, label621
  b label622
  label621:
  li $t0, 1
  sw $t0, -628($sp)
  b label627
  label622:
  li $t0, 0
  sw $t0, -628($sp)
  label627:
  lw $t1, -628($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label618
label620:
  b label612
label611:
  lw $t1, -148($sp)
  li $t2, 453
  sub $t0, $t1, $t2
  sw $t0, -632($sp)
  lw $t1, -632($sp)
  lw $t2, -52($sp)
  add $t0, $t1, $t2
  sw $t0, -636($sp)
  lw $t1, -104($sp)
  lw $t2, -140($sp)
  add $t0, $t1, $t2
  sw $t0, -640($sp)
  lw $t1, -640($sp)
  li $t2, 0
  bne $t1, $t2, label631
  b label633
label633:
  lw $t1, -108($sp)
  li $t2, 0
  bne $t1, $t2, label631
  b label632
  label631:
  li $t0, 1
  sw $t0, -644($sp)
  b label634
  label632:
  li $t0, 0
  sw $t0, -644($sp)
  label634:
  lw $t1, -644($sp)
  sw $t1, -1140($sp)
  lw $t1, -636($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -648($sp)
  li $t1, 0
  lw $t2, -648($sp)
  sub $t0, $t1, $t2
  sw $t0, -652($sp)
  lw $t1, -652($sp)
  li $t2, 0
  bne $t1, $t2, label629
  b label628
label628:
label635:
  lw $t1, -128($sp)
  move $t0, $t1
  sw $t0, -184($sp)
  lw $t1, -184($sp)
  sw $t1, -1140($sp)
  sub $sp, $sp, 1136
  jal func_id_HusWF
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -656($sp)
  sub $sp, $sp, 1136
  jal func_id_Mdvzosjy
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -660($sp)
  lw $t1, -660($sp)
  sw $t1, -1140($sp)
  lw $t1, -656($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_OAYxiBjEU
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -664($sp)
  li $t1, 56040
  lw $t2, -168($sp)
  add $t0, $t1, $t2
  sw $t0, -668($sp)
  lw $t1, -664($sp)
  lw $t2, -668($sp)
  bne $t1, $t2, label638
  b label639
  label638:
  li $t0, 1
  sw $t0, -672($sp)
  b label640
  label639:
  li $t0, 0
  sw $t0, -672($sp)
  label640:
  lw $t1, -188($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -676($sp)
  lw $t1, -16($sp)
  lw $t2, -676($sp)
  add $t0, $t1, $t2
  sw $t0, -680($sp)
  lw $t1, -672($sp)
  lw $t2, -680($sp)
  lw $t2, 0($t2)
  bgt $t1, $t2, label636
  b label637
label636:
  lw $t1, -52($sp)
  li $t2, 0
  bne $t1, $t2, label644
  b label643
  label643:
  li $t0, 1
  sw $t0, -684($sp)
  b label645
  label644:
  li $t0, 0
  sw $t0, -684($sp)
  label645:
  lw $t1, -684($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -688($sp)
  lw $t1, -16($sp)
  lw $t2, -688($sp)
  add $t0, $t1, $t2
  sw $t0, -692($sp)
  lw $t1, -692($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label641
  b label642
  label641:
  li $t0, 1
  sw $t0, -696($sp)
  b label646
  label642:
  li $t0, 0
  sw $t0, -696($sp)
  label646:
  lw $t1, -696($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label635
label637:
  b label630
label629:
  li $t1, 56478
  li $t2, 0
  bne $t1, $t2, label648
  b label650
label650:
  lw $t1, -188($sp)
  lw $t2, -128($sp)
  blt $t1, $t2, label651
  b label652
  label651:
  li $t0, 1
  sw $t0, -700($sp)
  b label653
  label652:
  li $t0, 0
  sw $t0, -700($sp)
  label653:
  lw $t1, -700($sp)
  lw $t2, -132($sp)
  bge $t1, $t2, label649
  b label648
label649:
  lw $t1, -140($sp)
  li $t2, 0
  bne $t1, $t2, label647
  b label648
  label647:
  li $t0, 1
  sw $t0, -704($sp)
  b label654
  label648:
  li $t0, 0
  sw $t0, -704($sp)
  label654:
label630:
label612:
  b label609
label608:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -708($sp)
  lw $t1, -40($sp)
  lw $t2, -708($sp)
  add $t0, $t1, $t2
  sw $t0, -712($sp)
  lw $t1, -712($sp)
  lw $t1, 0($t1)
  lw $t2, -136($sp)
  add $t0, $t1, $t2
  sw $t0, -716($sp)
  lw $t1, -716($sp)
  li $t2, 14436
  bne $t1, $t2, label655
  b label656
  label655:
  li $t0, 1
  sw $t0, -720($sp)
  b label657
  label656:
  li $t0, 0
  sw $t0, -720($sp)
  label657:
  lw $t1, -720($sp)
  move $t0, $t1
  sw $t0, -100($sp)
  lw $t1, -100($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label609:
  lw $t1, -144($sp)
  li $t2, 0
  bne $t1, $t2, label661
  b label660
  label660:
  li $t0, 1
  sw $t0, -724($sp)
  b label662
  label661:
  li $t0, 0
  sw $t0, -724($sp)
  label662:
  lw $t1, -724($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -728($sp)
  lw $t1, -16($sp)
  lw $t2, -728($sp)
  add $t0, $t1, $t2
  sw $t0, -732($sp)
  li $t1, 0
  lw $t2, -732($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -736($sp)
  lw $t1, -736($sp)
  li $t2, 0
  bne $t1, $t2, label658
  b label659
label658:
  lw $t1, -52($sp)
  li $t2, 20512
  div $t0, $t1, $t2
  sw $t0, -740($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -744($sp)
  lw $t1, -40($sp)
  lw $t2, -744($sp)
  add $t0, $t1, $t2
  sw $t0, -748($sp)
  lw $t1, -740($sp)
  lw $t2, -748($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -752($sp)
  li $t1, 22529
  lw $t2, -752($sp)
  add $t0, $t1, $t2
  sw $t0, -756($sp)
  lw $t1, -756($sp)
  li $t2, 0
  bne $t1, $t2, label663
  b label664
label663:
  lw $t1, -8($sp)
  lw $t2, -140($sp)
  add $t0, $t1, $t2
  sw $t0, -760($sp)
  lw $t1, -760($sp)
  li $t2, 0
  bne $t1, $t2, label673
  b label675
label675:
  lw $t1, -124($sp)
  li $t2, 0
  bne $t1, $t2, label673
  b label674
  label673:
  li $t0, 1
  sw $t0, -764($sp)
  b label676
  label674:
  li $t0, 0
  sw $t0, -764($sp)
  label676:
  li $t1, 0
  li $t2, 4528
  sub $t0, $t1, $t2
  sw $t0, -768($sp)
  li $t1, 0
  lw $t2, -768($sp)
  sub $t0, $t1, $t2
  sw $t0, -772($sp)
  lw $t1, -772($sp)
  sw $t1, -1140($sp)
  lw $t1, -764($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -776($sp)
  lw $t1, -776($sp)
  lw $t2, -120($sp)
  beq $t1, $t2, label671
  b label672
  label671:
  li $t0, 1
  sw $t0, -780($sp)
  b label677
  label672:
  li $t0, 0
  sw $t0, -780($sp)
  label677:
  lw $t1, -780($sp)
  li $t2, 7234
  ble $t1, $t2, label669
  b label670
  label669:
  li $t0, 1
  sw $t0, -784($sp)
  b label678
  label670:
  li $t0, 0
  sw $t0, -784($sp)
  label678:
  lw $t1, -784($sp)
  lw $t2, -108($sp)
  beq $t1, $t2, label667
  b label668
  label667:
  li $t0, 1
  sw $t0, -788($sp)
  b label679
  label668:
  li $t0, 0
  sw $t0, -788($sp)
  label679:
  li $t1, 0
  li $t2, 19546
  sub $t0, $t1, $t2
  sw $t0, -792($sp)
  lw $t1, -792($sp)
  li $t2, 25998
  mulo $t0, $t1, $t2
  sw $t0, -796($sp)
  lw $t1, -796($sp)
  li $t2, 54820
  sub $t0, $t1, $t2
  sw $t0, -800($sp)
  lw $t1, -788($sp)
  lw $t2, -800($sp)
  bne $t1, $t2, label665
  b label666
  label665:
  li $t0, 1
  sw $t0, -804($sp)
  b label680
  label666:
  li $t0, 0
  sw $t0, -804($sp)
  label680:
label664:
label659:
  lw $t1, -104($sp)
  li $t2, 0
  bne $t1, $t2, label685
  b label681
label685:
  li $t1, 0
  lw $t2, -144($sp)
  sub $t0, $t1, $t2
  sw $t0, -808($sp)
  lw $t1, -808($sp)
  li $t2, 13666
  bgt $t1, $t2, label681
  b label684
label684:
  li $t1, 45106
  li $t2, 58095
  sub $t0, $t1, $t2
  sw $t0, -812($sp)
  lw $t1, -812($sp)
  lw $t2, -168($sp)
  blt $t1, $t2, label681
  b label682
label681:
  li $t1, 39339
  li $t2, 0
  bne $t1, $t2, label688
  b label687
label688:
  li $t1, 40231
  li $t2, 0
  bne $t1, $t2, label686
  b label687
  label686:
  li $t0, 1
  sw $t0, -816($sp)
  b label689
  label687:
  li $t0, 0
  sw $t0, -816($sp)
  label689:
  lw $t1, -136($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -820($sp)
  lw $t1, -40($sp)
  lw $t2, -820($sp)
  add $t0, $t1, $t2
  sw $t0, -824($sp)
  li $t1, 0
  lw $t2, -824($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -828($sp)
  li $t1, 13751
  li $t2, 0
  bne $t1, $t2, label693
  b label695
label695:
  li $t1, 18120
  li $t2, 0
  bne $t1, $t2, label693
  b label694
  label693:
  li $t0, 1
  sw $t0, -832($sp)
  b label696
  label694:
  li $t0, 0
  sw $t0, -832($sp)
  label696:
  lw $t1, -184($sp)
  move $t0, $t1
  sw $t0, -172($sp)
  lw $t1, -172($sp)
  sw $t1, -1140($sp)
  lw $t1, -832($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_eZzKtHKigb
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -836($sp)
  lw $t1, -836($sp)
  li $t2, 0
  bne $t1, $t2, label692
  b label691
label692:
  lw $t1, -164($sp)
  li $t2, 0
  bne $t1, $t2, label690
  b label691
  label690:
  li $t0, 1
  sw $t0, -840($sp)
  b label697
  label691:
  li $t0, 0
  sw $t0, -840($sp)
  label697:
  lw $t1, -120($sp)
  li $t2, 0
  bne $t1, $t2, label698
  b label699
  label698:
  li $t0, 1
  sw $t0, -844($sp)
  b label700
  label699:
  li $t0, 0
  sw $t0, -844($sp)
  label700:
  li $t1, 24173
  li $t2, 7456
  mulo $t0, $t1, $t2
  sw $t0, -848($sp)
  lw $t1, -848($sp)
  sw $t1, -1140($sp)
  lw $t1, -844($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -852($sp)
  lw $t1, -852($sp)
  sw $t1, -1140($sp)
  lw $t1, -116($sp)
  sw $t1, -1144($sp)
  lw $t1, -840($sp)
  sw $t1, -1148($sp)
  lw $t1, -828($sp)
  sw $t1, -1152($sp)
  lw $t1, -816($sp)
  sw $t1, -1156($sp)
  sub $sp, $sp, 1136
  jal func_id_v1
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -856($sp)
  lw $t1, -856($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label683
label682:
  sub $t0, $sp, 876
  sw $t0, -864($sp)
  li $t1, 5109
  move $t0, $t1
  sw $t0, -880($sp)
  li $t1, 45888
  move $t0, $t1
  sw $t0, -884($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -888($sp)
  lw $t1, -864($sp)
  lw $t2, -888($sp)
  add $t0, $t1, $t2
  sw $t0, -892($sp)
  li $t1, 62833
  move $t0, $t1
  lw $s0, -892($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -896($sp)
  lw $t1, -864($sp)
  lw $t2, -896($sp)
  add $t0, $t1, $t2
  sw $t0, -900($sp)
  li $t1, 42850
  move $t0, $t1
  lw $s0, -900($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -904($sp)
  lw $t1, -864($sp)
  lw $t2, -904($sp)
  add $t0, $t1, $t2
  sw $t0, -908($sp)
  li $t1, 46341
  move $t0, $t1
  lw $s0, -908($sp)
  sw $t0, 0($s0)
  lw $t1, -88($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -912($sp)
  lw $t1, -16($sp)
  lw $t2, -912($sp)
  add $t0, $t1, $t2
  sw $t0, -916($sp)
  lw $t1, -916($sp)
  lw $t1, 0($t1)
  lw $t2, -112($sp)
  bgt $t1, $t2, label701
  b label702
  label701:
  li $t0, 1
  sw $t0, -920($sp)
  b label703
  label702:
  li $t0, 0
  sw $t0, -920($sp)
  label703:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -924($sp)
  lw $t1, -864($sp)
  lw $t2, -924($sp)
  add $t0, $t1, $t2
  sw $t0, -928($sp)
  lw $t1, -928($sp)
  lw $t1, 0($t1)
  li $t2, 17890
  sub $t0, $t1, $t2
  sw $t0, -932($sp)
  li $t1, 46318
  li $t2, 48229
  beq $t1, $t2, label704
  b label705
  label704:
  li $t0, 1
  sw $t0, -936($sp)
  b label706
  label705:
  li $t0, 0
  sw $t0, -936($sp)
  label706:
  lw $t1, -936($sp)
  sw $t1, -1140($sp)
  lw $t1, -932($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_eZzKtHKigb
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -940($sp)
  lw $t1, -144($sp)
  li $t2, 40419
  bne $t1, $t2, label707
  b label708
  label707:
  li $t0, 1
  sw $t0, -944($sp)
  b label709
  label708:
  li $t0, 0
  sw $t0, -944($sp)
  label709:
  lw $t1, -884($sp)
  li $t2, 1295
  div $t0, $t1, $t2
  sw $t0, -948($sp)
  li $t1, 20242
  move $t0, $t1
  sw $t0, -176($sp)
  lw $t1, -176($sp)
  sw $t1, -1140($sp)
  lw $t1, -948($sp)
  sw $t1, -1144($sp)
  lw $t1, -944($sp)
  sw $t1, -1148($sp)
  lw $t1, -940($sp)
  sw $t1, -1152($sp)
  lw $t1, -920($sp)
  sw $t1, -1156($sp)
  sub $sp, $sp, 1136
  jal func_id_v1
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -952($sp)
  li $t1, 0
  lw $t2, -952($sp)
  sub $t0, $t1, $t2
  sw $t0, -956($sp)
  li $t1, 0
  lw $t2, -52($sp)
  sub $t0, $t1, $t2
  sw $t0, -960($sp)
  lw $t1, -960($sp)
  li $t2, 0
  bne $t1, $t2, label711
  b label710
  label710:
  li $t0, 1
  sw $t0, -964($sp)
  b label712
  label711:
  li $t0, 0
  sw $t0, -964($sp)
  label712:
  lw $t1, -956($sp)
  lw $t2, -964($sp)
  sub $t0, $t1, $t2
  sw $t0, -968($sp)
  lw $t1, -124($sp)
  move $t0, $t1
  sw $t0, -880($sp)
  lw $t1, -880($sp)
  move $t0, $t1
  sw $t0, -188($sp)
label683:
  lw $t1, -48($sp)
  li $t2, 0
  bne $t1, $t2, label714
  b label713
label713:
  li $t1, 36329
  li $t2, 0
  bne $t1, $t2, label722
  b label721
  label721:
  li $t0, 1
  sw $t0, -972($sp)
  b label723
  label722:
  li $t0, 0
  sw $t0, -972($sp)
  label723:
  lw $t1, -972($sp)
  li $t2, 5823
  div $t0, $t1, $t2
  sw $t0, -976($sp)
  lw $t1, -976($sp)
  li $t2, 27476
  bgt $t1, $t2, label719
  b label720
  label719:
  li $t0, 1
  sw $t0, -980($sp)
  b label724
  label720:
  li $t0, 0
  sw $t0, -980($sp)
  label724:
  lw $t1, -52($sp)
  li $t2, 0
  bne $t1, $t2, label726
  b label725
  label725:
  li $t0, 1
  sw $t0, -984($sp)
  b label727
  label726:
  li $t0, 0
  sw $t0, -984($sp)
  label727:
  lw $t1, -980($sp)
  lw $t2, -984($sp)
  bne $t1, $t2, label718
  b label717
label718:
  lw $t1, -160($sp)
  move $t0, $t1
  sw $t0, -128($sp)
  li $t1, 0
  lw $t2, -52($sp)
  sub $t0, $t1, $t2
  sw $t0, -988($sp)
  lw $t1, -988($sp)
  lw $t2, -156($sp)
  beq $t1, $t2, label728
  b label729
  label728:
  li $t0, 1
  sw $t0, -992($sp)
  b label730
  label729:
  li $t0, 0
  sw $t0, -992($sp)
  label730:
  lw $t1, -992($sp)
  sw $t1, -1140($sp)
  lw $t1, -128($sp)
  sw $t1, -1144($sp)
  sub $sp, $sp, 1136
  jal func_id_B
  add $sp, $sp, 1136
  move $t0, $v0
  sw $t0, -996($sp)
  lw $t1, -996($sp)
  li $t2, 0
  bne $t1, $t2, label717
  b label716
  label716:
  li $t0, 1
  sw $t0, -1000($sp)
  b label731
  label717:
  li $t0, 0
  sw $t0, -1000($sp)
  label731:
  lw $t1, -1000($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label715
label714:
  li $t1, 55876
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label715:
  lw $t1, -176($sp)
  li $t2, 31821
  mulo $t0, $t1, $t2
  sw $t0, -1004($sp)
  lw $t1, -1004($sp)
  lw $t2, -4($sp)
  ble $t1, $t2, label737
  b label736
label737:
  li $t1, 13710
  li $t2, 0
  bne $t1, $t2, label735
  b label736
  label735:
  li $t0, 1
  sw $t0, -1008($sp)
  b label738
  label736:
  li $t0, 0
  sw $t0, -1008($sp)
  label738:
  lw $t1, -1008($sp)
  move $t0, $t1
  sw $t0, -152($sp)
  lw $t1, -152($sp)
  li $t2, 0
  bne $t1, $t2, label732
  b label733
label732:
  lw $t1, -152($sp)
  lw $t2, -180($sp)
  add $t0, $t1, $t2
  sw $t0, -1012($sp)
  lw $t1, -1012($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label734
label733:
  li $t1, 24246
  li $t2, 23632
  div $t0, $t1, $t2
  sw $t0, -1016($sp)
  lw $t1, -1016($sp)
  li $t2, 37913
  div $t0, $t1, $t2
  sw $t0, -1020($sp)
  lw $t1, -1020($sp)
  li $t2, 3202
  mulo $t0, $t1, $t2
  sw $t0, -1024($sp)
  lw $t1, -1024($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label734:
  lw $t1, -88($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1028($sp)
  lw $t1, -40($sp)
  lw $t2, -1028($sp)
  add $t0, $t1, $t2
  sw $t0, -1032($sp)
  lw $t1, -48($sp)
  li $t2, 61090
  blt $t1, $t2, label739
  b label740
  label739:
  li $t0, 1
  sw $t0, -1036($sp)
  b label741
  label740:
  li $t0, 0
  sw $t0, -1036($sp)
  label741:
  lw $t1, -1036($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1040($sp)
  lw $t1, -16($sp)
  lw $t2, -1040($sp)
  add $t0, $t1, $t2
  sw $t0, -1044($sp)
  lw $t1, -1032($sp)
  lw $t1, 0($t1)
  lw $t2, -1044($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -1048($sp)
  lw $t1, -48($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1052($sp)
  lw $t1, -52($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1056($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1060($sp)
  lw $t1, -16($sp)
  lw $t2, -1060($sp)
  add $t0, $t1, $t2
  sw $t0, -1064($sp)
  lw $t1, -1064($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1068($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1072($sp)
  lw $t1, -16($sp)
  lw $t2, -1072($sp)
  add $t0, $t1, $t2
  sw $t0, -1076($sp)
  lw $t1, -1076($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1080($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1084($sp)
  lw $t1, -16($sp)
  lw $t2, -1084($sp)
  add $t0, $t1, $t2
  sw $t0, -1088($sp)
  lw $t1, -1088($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1092($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1096($sp)
  lw $t1, -16($sp)
  lw $t2, -1096($sp)
  add $t0, $t1, $t2
  sw $t0, -1100($sp)
  lw $t1, -1100($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1104($sp)
  lw $t1, -88($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1108($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1112($sp)
  lw $t1, -40($sp)
  lw $t2, -1112($sp)
  add $t0, $t1, $t2
  sw $t0, -1116($sp)
  lw $t1, -1116($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1120($sp)
  li $t1, 0
  li $t2, 11715
  sub $t0, $t1, $t2
  sw $t0, -1124($sp)
  li $t1, 0
  lw $t2, -1124($sp)
  sub $t0, $t1, $t2
  sw $t0, -1128($sp)
  lw $t1, -1128($sp)
  lw $t2, -52($sp)
  bgt $t1, $t2, label742
  b label743
  label742:
  li $t0, 1
  sw $t0, -1132($sp)
  b label744
  label743:
  li $t0, 0
  sw $t0, -1132($sp)
  label744:
  lw $t1, -1132($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_cr3Ra:
  sw $ra, 0($sp)
  sub $t0, $sp, 64
  sw $t0, -28($sp)
  sub $t0, $sp, 96
  sw $t0, -72($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -100($sp)
  lw $t1, -28($sp)
  lw $t2, -100($sp)
  add $t0, $t1, $t2
  sw $t0, -104($sp)
  li $t1, 43433
  move $t0, $t1
  lw $s0, -104($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -108($sp)
  lw $t1, -28($sp)
  lw $t2, -108($sp)
  add $t0, $t1, $t2
  sw $t0, -112($sp)
  li $t1, 9305
  move $t0, $t1
  lw $s0, -112($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -116($sp)
  lw $t1, -28($sp)
  lw $t2, -116($sp)
  add $t0, $t1, $t2
  sw $t0, -120($sp)
  li $t1, 29835
  move $t0, $t1
  lw $s0, -120($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -124($sp)
  lw $t1, -28($sp)
  lw $t2, -124($sp)
  add $t0, $t1, $t2
  sw $t0, -128($sp)
  li $t1, 2070
  move $t0, $t1
  lw $s0, -128($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -132($sp)
  lw $t1, -28($sp)
  lw $t2, -132($sp)
  add $t0, $t1, $t2
  sw $t0, -136($sp)
  li $t1, 16762
  move $t0, $t1
  lw $s0, -136($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -140($sp)
  lw $t1, -28($sp)
  lw $t2, -140($sp)
  add $t0, $t1, $t2
  sw $t0, -144($sp)
  li $t1, 34944
  move $t0, $t1
  lw $s0, -144($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -148($sp)
  lw $t1, -28($sp)
  lw $t2, -148($sp)
  add $t0, $t1, $t2
  sw $t0, -152($sp)
  li $t1, 47959
  move $t0, $t1
  lw $s0, -152($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -156($sp)
  lw $t1, -28($sp)
  lw $t2, -156($sp)
  add $t0, $t1, $t2
  sw $t0, -160($sp)
  li $t1, 14059
  move $t0, $t1
  lw $s0, -160($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -164($sp)
  lw $t1, -28($sp)
  lw $t2, -164($sp)
  add $t0, $t1, $t2
  sw $t0, -168($sp)
  li $t1, 12258
  move $t0, $t1
  lw $s0, -168($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -172($sp)
  lw $t1, -72($sp)
  lw $t2, -172($sp)
  add $t0, $t1, $t2
  sw $t0, -176($sp)
  li $t1, 28764
  move $t0, $t1
  lw $s0, -176($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -180($sp)
  lw $t1, -72($sp)
  lw $t2, -180($sp)
  add $t0, $t1, $t2
  sw $t0, -184($sp)
  li $t1, 1860
  move $t0, $t1
  lw $s0, -184($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -188($sp)
  lw $t1, -72($sp)
  lw $t2, -188($sp)
  add $t0, $t1, $t2
  sw $t0, -192($sp)
  li $t1, 46050
  move $t0, $t1
  lw $s0, -192($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -196($sp)
  lw $t1, -72($sp)
  lw $t2, -196($sp)
  add $t0, $t1, $t2
  sw $t0, -200($sp)
  li $t1, 46654
  move $t0, $t1
  lw $s0, -200($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -204($sp)
  lw $t1, -72($sp)
  lw $t2, -204($sp)
  add $t0, $t1, $t2
  sw $t0, -208($sp)
  li $t1, 48179
  move $t0, $t1
  lw $s0, -208($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -212($sp)
  lw $t1, -72($sp)
  lw $t2, -212($sp)
  add $t0, $t1, $t2
  sw $t0, -216($sp)
  li $t1, 28743
  move $t0, $t1
  lw $s0, -216($sp)
  sw $t0, 0($s0)
  li $t1, 0
  lw $t2, -12($sp)
  sub $t0, $t1, $t2
  sw $t0, -220($sp)
  lw $t1, -220($sp)
  li $t2, 0
  bne $t1, $t2, label746
  b label745
  label745:
  li $t0, 1
  sw $t0, -224($sp)
  b label747
  label746:
  li $t0, 0
  sw $t0, -224($sp)
  label747:
  li $t1, 0
  li $t2, 21538
  sub $t0, $t1, $t2
  sw $t0, -228($sp)
  li $t1, 0
  lw $t2, -228($sp)
  sub $t0, $t1, $t2
  sw $t0, -232($sp)
  lw $t1, -232($sp)
  li $t2, 48987
  div $t0, $t1, $t2
  sw $t0, -236($sp)
  li $t1, 0
  li $t2, 57867
  sub $t0, $t1, $t2
  sw $t0, -240($sp)
  lw $t1, -240($sp)
  lw $t2, -20($sp)
  div $t0, $t1, $t2
  sw $t0, -244($sp)
  lw $t1, -236($sp)
  lw $t2, -244($sp)
  add $t0, $t1, $t2
  sw $t0, -248($sp)
  lw $t1, -248($sp)
  li $t2, 0
  bne $t1, $t2, label750
  b label749
label750:
  li $t1, 55297
  lw $t2, -20($sp)
  ble $t1, $t2, label751
  b label752
  label751:
  li $t0, 1
  sw $t0, -252($sp)
  b label753
  label752:
  li $t0, 0
  sw $t0, -252($sp)
  label753:
  lw $t1, -252($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -256($sp)
  lw $t1, -72($sp)
  lw $t2, -256($sp)
  add $t0, $t1, $t2
  sw $t0, -260($sp)
  lw $t1, -260($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label748
  b label749
  label748:
  li $t0, 1
  sw $t0, -264($sp)
  b label754
  label749:
  li $t0, 0
  sw $t0, -264($sp)
  label754:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -268($sp)
  lw $t1, -28($sp)
  lw $t2, -268($sp)
  add $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -272($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -276($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -280($sp)
  lw $t1, -28($sp)
  lw $t2, -280($sp)
  add $t0, $t1, $t2
  sw $t0, -284($sp)
  lw $t1, -284($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -288($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -292($sp)
  lw $t1, -28($sp)
  lw $t2, -292($sp)
  add $t0, $t1, $t2
  sw $t0, -296($sp)
  lw $t1, -296($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -300($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -304($sp)
  lw $t1, -28($sp)
  lw $t2, -304($sp)
  add $t0, $t1, $t2
  sw $t0, -308($sp)
  lw $t1, -308($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -312($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -316($sp)
  lw $t1, -28($sp)
  lw $t2, -316($sp)
  add $t0, $t1, $t2
  sw $t0, -320($sp)
  lw $t1, -320($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -324($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -328($sp)
  lw $t1, -28($sp)
  lw $t2, -328($sp)
  add $t0, $t1, $t2
  sw $t0, -332($sp)
  lw $t1, -332($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -336($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -340($sp)
  lw $t1, -28($sp)
  lw $t2, -340($sp)
  add $t0, $t1, $t2
  sw $t0, -344($sp)
  lw $t1, -344($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -348($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -352($sp)
  lw $t1, -28($sp)
  lw $t2, -352($sp)
  add $t0, $t1, $t2
  sw $t0, -356($sp)
  lw $t1, -356($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -360($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -364($sp)
  lw $t1, -28($sp)
  lw $t2, -364($sp)
  add $t0, $t1, $t2
  sw $t0, -368($sp)
  lw $t1, -368($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -372($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -376($sp)
  lw $t1, -72($sp)
  lw $t2, -376($sp)
  add $t0, $t1, $t2
  sw $t0, -380($sp)
  lw $t1, -380($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -384($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -388($sp)
  lw $t1, -72($sp)
  lw $t2, -388($sp)
  add $t0, $t1, $t2
  sw $t0, -392($sp)
  lw $t1, -392($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -396($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -400($sp)
  lw $t1, -72($sp)
  lw $t2, -400($sp)
  add $t0, $t1, $t2
  sw $t0, -404($sp)
  lw $t1, -404($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -408($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -412($sp)
  lw $t1, -72($sp)
  lw $t2, -412($sp)
  add $t0, $t1, $t2
  sw $t0, -416($sp)
  lw $t1, -416($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -420($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -424($sp)
  lw $t1, -72($sp)
  lw $t2, -424($sp)
  add $t0, $t1, $t2
  sw $t0, -428($sp)
  lw $t1, -428($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -432($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -436($sp)
  lw $t1, -72($sp)
  lw $t2, -436($sp)
  add $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -440($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -444($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -448($sp)
  lw $t1, -72($sp)
  lw $t2, -448($sp)
  add $t0, $t1, $t2
  sw $t0, -452($sp)
  lw $t1, -16($sp)
  li $t2, 0
  bne $t1, $t2, label760
  b label761
  label760:
  li $t0, 1
  sw $t0, -456($sp)
  b label762
  label761:
  li $t0, 0
  sw $t0, -456($sp)
  label762:
  li $t1, 21582
  move $t0, $t1
  sw $t0, -20($sp)
  lw $t1, -20($sp)
  sw $t1, -532($sp)
  lw $t1, -456($sp)
  sw $t1, -536($sp)
  sub $sp, $sp, 528
  jal func_id_B
  add $sp, $sp, 528
  move $t0, $v0
  sw $t0, -460($sp)
  lw $t1, -460($sp)
  li $t2, 24636
  ble $t1, $t2, label758
  b label759
  label758:
  li $t0, 1
  sw $t0, -464($sp)
  b label763
  label759:
  li $t0, 0
  sw $t0, -464($sp)
  label763:
  li $t1, 0
  li $t2, 6917
  sub $t0, $t1, $t2
  sw $t0, -468($sp)
  lw $t1, -468($sp)
  lw $t2, -12($sp)
  div $t0, $t1, $t2
  sw $t0, -472($sp)
  li $t1, 45214
  sw $t1, -532($sp)
  lw $t1, -472($sp)
  sw $t1, -536($sp)
  sub $sp, $sp, 528
  jal func_id_B
  add $sp, $sp, 528
  move $t0, $v0
  sw $t0, -476($sp)
  lw $t1, -476($sp)
  lw $t2, -12($sp)
  mulo $t0, $t1, $t2
  sw $t0, -480($sp)
  li $t1, 0
  li $t2, 27631
  sub $t0, $t1, $t2
  sw $t0, -484($sp)
  lw $t1, -484($sp)
  li $t2, 44829
  mulo $t0, $t1, $t2
  sw $t0, -488($sp)
  li $t1, 48416
  li $t2, 23185
  mulo $t0, $t1, $t2
  sw $t0, -492($sp)
  lw $t1, -492($sp)
  lw $t2, -12($sp)
  add $t0, $t1, $t2
  sw $t0, -496($sp)
  lw $t1, -496($sp)
  sw $t1, -532($sp)
  lw $t1, -488($sp)
  sw $t1, -536($sp)
  lw $t1, -480($sp)
  sw $t1, -540($sp)
  lw $t1, -464($sp)
  sw $t1, -544($sp)
  lw $t1, -452($sp)
  lw $t1, 0($t1)
  sw $t1, -548($sp)
  sub $sp, $sp, 528
  jal func_id_cr3Ra
  add $sp, $sp, 528
  move $t0, $v0
  sw $t0, -500($sp)
  lw $t1, -500($sp)
  li $t2, 0
  bne $t1, $t2, label757
  b label756
label757:
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -504($sp)
  lw $t1, -28($sp)
  lw $t2, -504($sp)
  add $t0, $t1, $t2
  sw $t0, -508($sp)
  lw $t1, -508($sp)
  lw $t1, 0($t1)
  lw $t2, -12($sp)
  bgt $t1, $t2, label764
  b label765
  label764:
  li $t0, 1
  sw $t0, -512($sp)
  b label766
  label765:
  li $t0, 0
  sw $t0, -512($sp)
  label766:
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -516($sp)
  lw $t1, -72($sp)
  lw $t2, -516($sp)
  add $t0, $t1, $t2
  sw $t0, -520($sp)
  lw $t1, -512($sp)
  lw $t2, -520($sp)
  lw $t2, 0($t2)
  blt $t1, $t2, label755
  b label756
  label755:
  li $t0, 1
  sw $t0, -524($sp)
  b label767
  label756:
  li $t0, 0
  sw $t0, -524($sp)
  label767:
  lw $t1, -524($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_i2EeIQ2lAh:
  sw $ra, 0($sp)
  sub $t0, $sp, 60
  sw $t0, -20($sp)
  sub $t0, $sp, 100
  sw $t0, -68($sp)
  sub $t0, $sp, 120
  sw $t0, -108($sp)
  sub $t0, $sp, 144
  sw $t0, -128($sp)
  sub $t0, $sp, 176
  sw $t0, -152($sp)
  sub $t0, $sp, 192
  sw $t0, -184($sp)
  sub $t0, $sp, 240
  sw $t0, -200($sp)
  sub $t0, $sp, 256
  sw $t0, -248($sp)
  sub $t0, $sp, 268
  sw $t0, -264($sp)
  sub $t0, $sp, 316
  sw $t0, -276($sp)
  sub $t0, $sp, 336
  sw $t0, -324($sp)
  li $t1, 28384
  move $t0, $t1
  sw $t0, -340($sp)
  li $t1, 49252
  move $t0, $t1
  sw $t0, -344($sp)
  li $t1, 55787
  move $t0, $t1
  sw $t0, -348($sp)
  li $t1, 10807
  move $t0, $t1
  sw $t0, -352($sp)
  li $t1, 63311
  move $t0, $t1
  sw $t0, -356($sp)
  li $t1, 2509
  move $t0, $t1
  sw $t0, -360($sp)
  li $t1, 39572
  move $t0, $t1
  sw $t0, -364($sp)
  li $t1, 65172
  move $t0, $t1
  sw $t0, -368($sp)
  li $t1, 48560
  move $t0, $t1
  sw $t0, -372($sp)
  li $t1, 20690
  move $t0, $t1
  sw $t0, -376($sp)
  li $t1, 47815
  move $t0, $t1
  sw $t0, -380($sp)
  li $t1, 11767
  move $t0, $t1
  sw $t0, -384($sp)
  li $t1, 42228
  move $t0, $t1
  sw $t0, -388($sp)
  li $t1, 31753
  move $t0, $t1
  sw $t0, -392($sp)
  li $t1, 60753
  move $t0, $t1
  sw $t0, -396($sp)
  li $t1, 34560
  move $t0, $t1
  sw $t0, -400($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -404($sp)
  lw $t1, -20($sp)
  lw $t2, -404($sp)
  add $t0, $t1, $t2
  sw $t0, -408($sp)
  li $t1, 21514
  move $t0, $t1
  lw $s0, -408($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -412($sp)
  lw $t1, -20($sp)
  lw $t2, -412($sp)
  add $t0, $t1, $t2
  sw $t0, -416($sp)
  li $t1, 6144
  move $t0, $t1
  lw $s0, -416($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -420($sp)
  lw $t1, -20($sp)
  lw $t2, -420($sp)
  add $t0, $t1, $t2
  sw $t0, -424($sp)
  li $t1, 17231
  move $t0, $t1
  lw $s0, -424($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -428($sp)
  lw $t1, -20($sp)
  lw $t2, -428($sp)
  add $t0, $t1, $t2
  sw $t0, -432($sp)
  li $t1, 43096
  move $t0, $t1
  lw $s0, -432($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -436($sp)
  lw $t1, -20($sp)
  lw $t2, -436($sp)
  add $t0, $t1, $t2
  sw $t0, -440($sp)
  li $t1, 30780
  move $t0, $t1
  lw $s0, -440($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -444($sp)
  lw $t1, -20($sp)
  lw $t2, -444($sp)
  add $t0, $t1, $t2
  sw $t0, -448($sp)
  li $t1, 24149
  move $t0, $t1
  lw $s0, -448($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -452($sp)
  lw $t1, -20($sp)
  lw $t2, -452($sp)
  add $t0, $t1, $t2
  sw $t0, -456($sp)
  li $t1, 22774
  move $t0, $t1
  lw $s0, -456($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -460($sp)
  lw $t1, -20($sp)
  lw $t2, -460($sp)
  add $t0, $t1, $t2
  sw $t0, -464($sp)
  li $t1, 58411
  move $t0, $t1
  lw $s0, -464($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -468($sp)
  lw $t1, -20($sp)
  lw $t2, -468($sp)
  add $t0, $t1, $t2
  sw $t0, -472($sp)
  li $t1, 3442
  move $t0, $t1
  lw $s0, -472($sp)
  sw $t0, 0($s0)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -476($sp)
  lw $t1, -20($sp)
  lw $t2, -476($sp)
  add $t0, $t1, $t2
  sw $t0, -480($sp)
  li $t1, 5654
  move $t0, $t1
  lw $s0, -480($sp)
  sw $t0, 0($s0)
  li $t1, 16060
  move $t0, $t1
  sw $t0, -484($sp)
  li $t1, 59987
  move $t0, $t1
  sw $t0, -488($sp)
  li $t1, 31968
  move $t0, $t1
  sw $t0, -492($sp)
  li $t1, 48551
  move $t0, $t1
  sw $t0, -496($sp)
  li $t1, 15294
  move $t0, $t1
  sw $t0, -500($sp)
  li $t1, 60353
  move $t0, $t1
  sw $t0, -504($sp)
  li $t1, 32267
  move $t0, $t1
  sw $t0, -508($sp)
  li $t1, 5546
  move $t0, $t1
  sw $t0, -512($sp)
  li $t1, 5624
  move $t0, $t1
  sw $t0, -516($sp)
  li $t1, 30043
  move $t0, $t1
  sw $t0, -520($sp)
  li $t1, 8055
  move $t0, $t1
  sw $t0, -524($sp)
  li $t1, 45196
  move $t0, $t1
  sw $t0, -528($sp)
  li $t1, 29679
  move $t0, $t1
  sw $t0, -532($sp)
  li $t1, 56615
  move $t0, $t1
  sw $t0, -536($sp)
  li $t1, 351
  move $t0, $t1
  sw $t0, -540($sp)
  li $t1, 11958
  move $t0, $t1
  sw $t0, -544($sp)
  li $t1, 2847
  move $t0, $t1
  sw $t0, -548($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -552($sp)
  lw $t1, -68($sp)
  lw $t2, -552($sp)
  add $t0, $t1, $t2
  sw $t0, -556($sp)
  li $t1, 42579
  move $t0, $t1
  lw $s0, -556($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -560($sp)
  lw $t1, -68($sp)
  lw $t2, -560($sp)
  add $t0, $t1, $t2
  sw $t0, -564($sp)
  li $t1, 43711
  move $t0, $t1
  lw $s0, -564($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -568($sp)
  lw $t1, -68($sp)
  lw $t2, -568($sp)
  add $t0, $t1, $t2
  sw $t0, -572($sp)
  li $t1, 63600
  move $t0, $t1
  lw $s0, -572($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -576($sp)
  lw $t1, -68($sp)
  lw $t2, -576($sp)
  add $t0, $t1, $t2
  sw $t0, -580($sp)
  li $t1, 11603
  move $t0, $t1
  lw $s0, -580($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -584($sp)
  lw $t1, -68($sp)
  lw $t2, -584($sp)
  add $t0, $t1, $t2
  sw $t0, -588($sp)
  li $t1, 65225
  move $t0, $t1
  lw $s0, -588($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -592($sp)
  lw $t1, -68($sp)
  lw $t2, -592($sp)
  add $t0, $t1, $t2
  sw $t0, -596($sp)
  li $t1, 4208
  move $t0, $t1
  lw $s0, -596($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -600($sp)
  lw $t1, -68($sp)
  lw $t2, -600($sp)
  add $t0, $t1, $t2
  sw $t0, -604($sp)
  li $t1, 28835
  move $t0, $t1
  lw $s0, -604($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -608($sp)
  lw $t1, -68($sp)
  lw $t2, -608($sp)
  add $t0, $t1, $t2
  sw $t0, -612($sp)
  li $t1, 42785
  move $t0, $t1
  lw $s0, -612($sp)
  sw $t0, 0($s0)
  li $t1, 34989
  move $t0, $t1
  sw $t0, -616($sp)
  li $t1, 52984
  move $t0, $t1
  sw $t0, -620($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -624($sp)
  lw $t1, -108($sp)
  lw $t2, -624($sp)
  add $t0, $t1, $t2
  sw $t0, -628($sp)
  li $t1, 23
  move $t0, $t1
  lw $s0, -628($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -632($sp)
  lw $t1, -108($sp)
  lw $t2, -632($sp)
  add $t0, $t1, $t2
  sw $t0, -636($sp)
  li $t1, 27864
  move $t0, $t1
  lw $s0, -636($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -640($sp)
  lw $t1, -108($sp)
  lw $t2, -640($sp)
  add $t0, $t1, $t2
  sw $t0, -644($sp)
  li $t1, 56426
  move $t0, $t1
  lw $s0, -644($sp)
  sw $t0, 0($s0)
  li $t1, 5677
  move $t0, $t1
  sw $t0, -648($sp)
  li $t1, 43925
  move $t0, $t1
  sw $t0, -652($sp)
  li $t1, 50877
  move $t0, $t1
  sw $t0, -656($sp)
  li $t1, 37646
  move $t0, $t1
  sw $t0, -660($sp)
  li $t1, 26940
  move $t0, $t1
  sw $t0, -664($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -668($sp)
  lw $t1, -128($sp)
  lw $t2, -668($sp)
  add $t0, $t1, $t2
  sw $t0, -672($sp)
  li $t1, 636
  move $t0, $t1
  lw $s0, -672($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -676($sp)
  lw $t1, -128($sp)
  lw $t2, -676($sp)
  add $t0, $t1, $t2
  sw $t0, -680($sp)
  li $t1, 32463
  move $t0, $t1
  lw $s0, -680($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -684($sp)
  lw $t1, -128($sp)
  lw $t2, -684($sp)
  add $t0, $t1, $t2
  sw $t0, -688($sp)
  li $t1, 59207
  move $t0, $t1
  lw $s0, -688($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -692($sp)
  lw $t1, -128($sp)
  lw $t2, -692($sp)
  add $t0, $t1, $t2
  sw $t0, -696($sp)
  li $t1, 6182
  move $t0, $t1
  lw $s0, -696($sp)
  sw $t0, 0($s0)
  li $t1, 38087
  move $t0, $t1
  sw $t0, -700($sp)
  li $t1, 23714
  move $t0, $t1
  sw $t0, -704($sp)
  li $t1, 14237
  move $t0, $t1
  sw $t0, -708($sp)
  li $t1, 17748
  move $t0, $t1
  sw $t0, -712($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -716($sp)
  lw $t1, -152($sp)
  lw $t2, -716($sp)
  add $t0, $t1, $t2
  sw $t0, -720($sp)
  li $t1, 53393
  move $t0, $t1
  lw $s0, -720($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -724($sp)
  lw $t1, -152($sp)
  lw $t2, -724($sp)
  add $t0, $t1, $t2
  sw $t0, -728($sp)
  li $t1, 5317
  move $t0, $t1
  lw $s0, -728($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -732($sp)
  lw $t1, -152($sp)
  lw $t2, -732($sp)
  add $t0, $t1, $t2
  sw $t0, -736($sp)
  li $t1, 18099
  move $t0, $t1
  lw $s0, -736($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -740($sp)
  lw $t1, -152($sp)
  lw $t2, -740($sp)
  add $t0, $t1, $t2
  sw $t0, -744($sp)
  li $t1, 65351
  move $t0, $t1
  lw $s0, -744($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -748($sp)
  lw $t1, -152($sp)
  lw $t2, -748($sp)
  add $t0, $t1, $t2
  sw $t0, -752($sp)
  li $t1, 8164
  move $t0, $t1
  lw $s0, -752($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -756($sp)
  lw $t1, -152($sp)
  lw $t2, -756($sp)
  add $t0, $t1, $t2
  sw $t0, -760($sp)
  li $t1, 60678
  move $t0, $t1
  lw $s0, -760($sp)
  sw $t0, 0($s0)
  li $t1, 43526
  move $t0, $t1
  sw $t0, -764($sp)
  li $t1, 6228
  move $t0, $t1
  sw $t0, -768($sp)
  li $t1, 6746
  move $t0, $t1
  sw $t0, -772($sp)
  li $t1, 43215
  move $t0, $t1
  sw $t0, -776($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -780($sp)
  lw $t1, -184($sp)
  lw $t2, -780($sp)
  add $t0, $t1, $t2
  sw $t0, -784($sp)
  li $t1, 10437
  move $t0, $t1
  lw $s0, -784($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -788($sp)
  lw $t1, -184($sp)
  lw $t2, -788($sp)
  add $t0, $t1, $t2
  sw $t0, -792($sp)
  li $t1, 35581
  move $t0, $t1
  lw $s0, -792($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -796($sp)
  lw $t1, -200($sp)
  lw $t2, -796($sp)
  add $t0, $t1, $t2
  sw $t0, -800($sp)
  li $t1, 20464
  move $t0, $t1
  lw $s0, -800($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -804($sp)
  lw $t1, -200($sp)
  lw $t2, -804($sp)
  add $t0, $t1, $t2
  sw $t0, -808($sp)
  li $t1, 45426
  move $t0, $t1
  lw $s0, -808($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -812($sp)
  lw $t1, -200($sp)
  lw $t2, -812($sp)
  add $t0, $t1, $t2
  sw $t0, -816($sp)
  li $t1, 23029
  move $t0, $t1
  lw $s0, -816($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -820($sp)
  lw $t1, -200($sp)
  lw $t2, -820($sp)
  add $t0, $t1, $t2
  sw $t0, -824($sp)
  li $t1, 20487
  move $t0, $t1
  lw $s0, -824($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -828($sp)
  lw $t1, -200($sp)
  lw $t2, -828($sp)
  add $t0, $t1, $t2
  sw $t0, -832($sp)
  li $t1, 7754
  move $t0, $t1
  lw $s0, -832($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -836($sp)
  lw $t1, -200($sp)
  lw $t2, -836($sp)
  add $t0, $t1, $t2
  sw $t0, -840($sp)
  li $t1, 13919
  move $t0, $t1
  lw $s0, -840($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -844($sp)
  lw $t1, -200($sp)
  lw $t2, -844($sp)
  add $t0, $t1, $t2
  sw $t0, -848($sp)
  li $t1, 26165
  move $t0, $t1
  lw $s0, -848($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -852($sp)
  lw $t1, -200($sp)
  lw $t2, -852($sp)
  add $t0, $t1, $t2
  sw $t0, -856($sp)
  li $t1, 51679
  move $t0, $t1
  lw $s0, -856($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -860($sp)
  lw $t1, -200($sp)
  lw $t2, -860($sp)
  add $t0, $t1, $t2
  sw $t0, -864($sp)
  li $t1, 64797
  move $t0, $t1
  lw $s0, -864($sp)
  sw $t0, 0($s0)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -868($sp)
  lw $t1, -200($sp)
  lw $t2, -868($sp)
  add $t0, $t1, $t2
  sw $t0, -872($sp)
  li $t1, 63811
  move $t0, $t1
  lw $s0, -872($sp)
  sw $t0, 0($s0)
  li $t1, 13083
  move $t0, $t1
  sw $t0, -876($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -880($sp)
  lw $t1, -248($sp)
  lw $t2, -880($sp)
  add $t0, $t1, $t2
  sw $t0, -884($sp)
  li $t1, 65433
  move $t0, $t1
  lw $s0, -884($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -888($sp)
  lw $t1, -248($sp)
  lw $t2, -888($sp)
  add $t0, $t1, $t2
  sw $t0, -892($sp)
  li $t1, 30738
  move $t0, $t1
  lw $s0, -892($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -896($sp)
  lw $t1, -264($sp)
  lw $t2, -896($sp)
  add $t0, $t1, $t2
  sw $t0, -900($sp)
  li $t1, 6755
  move $t0, $t1
  lw $s0, -900($sp)
  sw $t0, 0($s0)
  li $t1, 6079
  move $t0, $t1
  sw $t0, -904($sp)
  li $t1, 3289
  move $t0, $t1
  sw $t0, -908($sp)
  li $t1, 30469
  move $t0, $t1
  sw $t0, -912($sp)
  li $t1, 20316
  move $t0, $t1
  sw $t0, -916($sp)
  li $t1, 21037
  move $t0, $t1
  sw $t0, -920($sp)
  li $t1, 18327
  move $t0, $t1
  sw $t0, -924($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -928($sp)
  lw $t1, -276($sp)
  lw $t2, -928($sp)
  add $t0, $t1, $t2
  sw $t0, -932($sp)
  li $t1, 25633
  move $t0, $t1
  lw $s0, -932($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -936($sp)
  lw $t1, -276($sp)
  lw $t2, -936($sp)
  add $t0, $t1, $t2
  sw $t0, -940($sp)
  li $t1, 39136
  move $t0, $t1
  lw $s0, -940($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -944($sp)
  lw $t1, -276($sp)
  lw $t2, -944($sp)
  add $t0, $t1, $t2
  sw $t0, -948($sp)
  li $t1, 18142
  move $t0, $t1
  lw $s0, -948($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -952($sp)
  lw $t1, -276($sp)
  lw $t2, -952($sp)
  add $t0, $t1, $t2
  sw $t0, -956($sp)
  li $t1, 33797
  move $t0, $t1
  lw $s0, -956($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -960($sp)
  lw $t1, -276($sp)
  lw $t2, -960($sp)
  add $t0, $t1, $t2
  sw $t0, -964($sp)
  li $t1, 34279
  move $t0, $t1
  lw $s0, -964($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -968($sp)
  lw $t1, -276($sp)
  lw $t2, -968($sp)
  add $t0, $t1, $t2
  sw $t0, -972($sp)
  li $t1, 61669
  move $t0, $t1
  lw $s0, -972($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -976($sp)
  lw $t1, -276($sp)
  lw $t2, -976($sp)
  add $t0, $t1, $t2
  sw $t0, -980($sp)
  li $t1, 40026
  move $t0, $t1
  lw $s0, -980($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -984($sp)
  lw $t1, -276($sp)
  lw $t2, -984($sp)
  add $t0, $t1, $t2
  sw $t0, -988($sp)
  li $t1, 41025
  move $t0, $t1
  lw $s0, -988($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -992($sp)
  lw $t1, -276($sp)
  lw $t2, -992($sp)
  add $t0, $t1, $t2
  sw $t0, -996($sp)
  li $t1, 39348
  move $t0, $t1
  lw $s0, -996($sp)
  sw $t0, 0($s0)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1000($sp)
  lw $t1, -276($sp)
  lw $t2, -1000($sp)
  add $t0, $t1, $t2
  sw $t0, -1004($sp)
  li $t1, 50463
  move $t0, $t1
  lw $s0, -1004($sp)
  sw $t0, 0($s0)
  li $t1, 11070
  move $t0, $t1
  sw $t0, -1008($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1012($sp)
  lw $t1, -324($sp)
  lw $t2, -1012($sp)
  add $t0, $t1, $t2
  sw $t0, -1016($sp)
  li $t1, 59813
  move $t0, $t1
  lw $s0, -1016($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1020($sp)
  lw $t1, -324($sp)
  lw $t2, -1020($sp)
  add $t0, $t1, $t2
  sw $t0, -1024($sp)
  li $t1, 30353
  move $t0, $t1
  lw $s0, -1024($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1028($sp)
  lw $t1, -324($sp)
  lw $t2, -1028($sp)
  add $t0, $t1, $t2
  sw $t0, -1032($sp)
  li $t1, 34099
  move $t0, $t1
  lw $s0, -1032($sp)
  sw $t0, 0($s0)
  li $t1, 14764
  move $t0, $t1
  sw $t0, -1036($sp)
  li $t1, 38107
  move $t0, $t1
  sw $t0, -1040($sp)
  li $t1, 48018
  move $t0, $t1
  sw $t0, -1044($sp)
  li $t1, 40929
  move $t0, $t1
  sw $t0, -1048($sp)
  li $t1, 24251
  move $t0, $t1
  sw $t0, -1052($sp)
  li $t1, 47279
  move $t0, $t1
  sw $t0, -1056($sp)
  li $t1, 39204
  move $t0, $t1
  sw $t0, -1060($sp)
  lw $t1, -340($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1064($sp)
  lw $t1, -344($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1068($sp)
  lw $t1, -348($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1072($sp)
  lw $t1, -352($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1076($sp)
  lw $t1, -356($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1080($sp)
  lw $t1, -360($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1084($sp)
  lw $t1, -364($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1088($sp)
  lw $t1, -368($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1092($sp)
  lw $t1, -372($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1096($sp)
  lw $t1, -376($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1100($sp)
  lw $t1, -380($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1104($sp)
  lw $t1, -384($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1108($sp)
  lw $t1, -388($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1112($sp)
  lw $t1, -392($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1116($sp)
  lw $t1, -396($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1120($sp)
  lw $t1, -400($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1124($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1128($sp)
  lw $t1, -20($sp)
  lw $t2, -1128($sp)
  add $t0, $t1, $t2
  sw $t0, -1132($sp)
  lw $t1, -1132($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1136($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1140($sp)
  lw $t1, -20($sp)
  lw $t2, -1140($sp)
  add $t0, $t1, $t2
  sw $t0, -1144($sp)
  lw $t1, -1144($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1148($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1152($sp)
  lw $t1, -20($sp)
  lw $t2, -1152($sp)
  add $t0, $t1, $t2
  sw $t0, -1156($sp)
  lw $t1, -1156($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1160($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1164($sp)
  lw $t1, -20($sp)
  lw $t2, -1164($sp)
  add $t0, $t1, $t2
  sw $t0, -1168($sp)
  lw $t1, -1168($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1172($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1176($sp)
  lw $t1, -20($sp)
  lw $t2, -1176($sp)
  add $t0, $t1, $t2
  sw $t0, -1180($sp)
  lw $t1, -1180($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1184($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1188($sp)
  lw $t1, -20($sp)
  lw $t2, -1188($sp)
  add $t0, $t1, $t2
  sw $t0, -1192($sp)
  lw $t1, -1192($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1196($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1200($sp)
  lw $t1, -20($sp)
  lw $t2, -1200($sp)
  add $t0, $t1, $t2
  sw $t0, -1204($sp)
  lw $t1, -1204($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1208($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1212($sp)
  lw $t1, -20($sp)
  lw $t2, -1212($sp)
  add $t0, $t1, $t2
  sw $t0, -1216($sp)
  lw $t1, -1216($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1220($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1224($sp)
  lw $t1, -20($sp)
  lw $t2, -1224($sp)
  add $t0, $t1, $t2
  sw $t0, -1228($sp)
  lw $t1, -1228($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1232($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1236($sp)
  lw $t1, -20($sp)
  lw $t2, -1236($sp)
  add $t0, $t1, $t2
  sw $t0, -1240($sp)
  lw $t1, -1240($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1244($sp)
  lw $t1, -484($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1248($sp)
  lw $t1, -488($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1252($sp)
  lw $t1, -492($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1256($sp)
  lw $t1, -496($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1260($sp)
  lw $t1, -500($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1264($sp)
  lw $t1, -504($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1268($sp)
  lw $t1, -508($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1272($sp)
  lw $t1, -512($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1276($sp)
  lw $t1, -516($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1280($sp)
  lw $t1, -520($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1284($sp)
  lw $t1, -524($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1288($sp)
  lw $t1, -528($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1292($sp)
  lw $t1, -532($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1296($sp)
  lw $t1, -536($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1300($sp)
  lw $t1, -540($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1304($sp)
  lw $t1, -544($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1308($sp)
  lw $t1, -548($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1312($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1316($sp)
  lw $t1, -68($sp)
  lw $t2, -1316($sp)
  add $t0, $t1, $t2
  sw $t0, -1320($sp)
  lw $t1, -1320($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1324($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1328($sp)
  lw $t1, -68($sp)
  lw $t2, -1328($sp)
  add $t0, $t1, $t2
  sw $t0, -1332($sp)
  lw $t1, -1332($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1336($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1340($sp)
  lw $t1, -68($sp)
  lw $t2, -1340($sp)
  add $t0, $t1, $t2
  sw $t0, -1344($sp)
  lw $t1, -1344($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1348($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1352($sp)
  lw $t1, -68($sp)
  lw $t2, -1352($sp)
  add $t0, $t1, $t2
  sw $t0, -1356($sp)
  lw $t1, -1356($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1360($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1364($sp)
  lw $t1, -68($sp)
  lw $t2, -1364($sp)
  add $t0, $t1, $t2
  sw $t0, -1368($sp)
  lw $t1, -1368($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1372($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1376($sp)
  lw $t1, -68($sp)
  lw $t2, -1376($sp)
  add $t0, $t1, $t2
  sw $t0, -1380($sp)
  lw $t1, -1380($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1384($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1388($sp)
  lw $t1, -68($sp)
  lw $t2, -1388($sp)
  add $t0, $t1, $t2
  sw $t0, -1392($sp)
  lw $t1, -1392($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1396($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1400($sp)
  lw $t1, -68($sp)
  lw $t2, -1400($sp)
  add $t0, $t1, $t2
  sw $t0, -1404($sp)
  lw $t1, -1404($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1408($sp)
  lw $t1, -616($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1412($sp)
  lw $t1, -620($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1416($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1420($sp)
  lw $t1, -108($sp)
  lw $t2, -1420($sp)
  add $t0, $t1, $t2
  sw $t0, -1424($sp)
  lw $t1, -1424($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1428($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1432($sp)
  lw $t1, -108($sp)
  lw $t2, -1432($sp)
  add $t0, $t1, $t2
  sw $t0, -1436($sp)
  lw $t1, -1436($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1440($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1444($sp)
  lw $t1, -108($sp)
  lw $t2, -1444($sp)
  add $t0, $t1, $t2
  sw $t0, -1448($sp)
  lw $t1, -1448($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1452($sp)
  lw $t1, -648($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1456($sp)
  lw $t1, -652($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1460($sp)
  lw $t1, -656($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1464($sp)
  lw $t1, -660($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1468($sp)
  lw $t1, -664($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1472($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1476($sp)
  lw $t1, -128($sp)
  lw $t2, -1476($sp)
  add $t0, $t1, $t2
  sw $t0, -1480($sp)
  lw $t1, -1480($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1484($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1488($sp)
  lw $t1, -128($sp)
  lw $t2, -1488($sp)
  add $t0, $t1, $t2
  sw $t0, -1492($sp)
  lw $t1, -1492($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1496($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1500($sp)
  lw $t1, -128($sp)
  lw $t2, -1500($sp)
  add $t0, $t1, $t2
  sw $t0, -1504($sp)
  lw $t1, -1504($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1508($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1512($sp)
  lw $t1, -128($sp)
  lw $t2, -1512($sp)
  add $t0, $t1, $t2
  sw $t0, -1516($sp)
  lw $t1, -1516($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1520($sp)
  lw $t1, -700($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1524($sp)
  lw $t1, -704($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1528($sp)
  lw $t1, -708($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1532($sp)
  lw $t1, -712($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1536($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1540($sp)
  lw $t1, -152($sp)
  lw $t2, -1540($sp)
  add $t0, $t1, $t2
  sw $t0, -1544($sp)
  lw $t1, -1544($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1548($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1552($sp)
  lw $t1, -152($sp)
  lw $t2, -1552($sp)
  add $t0, $t1, $t2
  sw $t0, -1556($sp)
  lw $t1, -1556($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1560($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1564($sp)
  lw $t1, -152($sp)
  lw $t2, -1564($sp)
  add $t0, $t1, $t2
  sw $t0, -1568($sp)
  lw $t1, -1568($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1572($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1576($sp)
  lw $t1, -152($sp)
  lw $t2, -1576($sp)
  add $t0, $t1, $t2
  sw $t0, -1580($sp)
  lw $t1, -1580($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1584($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1588($sp)
  lw $t1, -152($sp)
  lw $t2, -1588($sp)
  add $t0, $t1, $t2
  sw $t0, -1592($sp)
  lw $t1, -1592($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1596($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1600($sp)
  lw $t1, -152($sp)
  lw $t2, -1600($sp)
  add $t0, $t1, $t2
  sw $t0, -1604($sp)
  lw $t1, -1604($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1608($sp)
  lw $t1, -764($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1612($sp)
  lw $t1, -768($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1616($sp)
  lw $t1, -772($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1620($sp)
  lw $t1, -776($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1624($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1628($sp)
  lw $t1, -184($sp)
  lw $t2, -1628($sp)
  add $t0, $t1, $t2
  sw $t0, -1632($sp)
  lw $t1, -1632($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1636($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1640($sp)
  lw $t1, -184($sp)
  lw $t2, -1640($sp)
  add $t0, $t1, $t2
  sw $t0, -1644($sp)
  lw $t1, -1644($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1648($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1652($sp)
  lw $t1, -200($sp)
  lw $t2, -1652($sp)
  add $t0, $t1, $t2
  sw $t0, -1656($sp)
  lw $t1, -1656($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1660($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1664($sp)
  lw $t1, -200($sp)
  lw $t2, -1664($sp)
  add $t0, $t1, $t2
  sw $t0, -1668($sp)
  lw $t1, -1668($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1672($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1676($sp)
  lw $t1, -200($sp)
  lw $t2, -1676($sp)
  add $t0, $t1, $t2
  sw $t0, -1680($sp)
  lw $t1, -1680($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1684($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1688($sp)
  lw $t1, -200($sp)
  lw $t2, -1688($sp)
  add $t0, $t1, $t2
  sw $t0, -1692($sp)
  lw $t1, -1692($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1696($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1700($sp)
  lw $t1, -200($sp)
  lw $t2, -1700($sp)
  add $t0, $t1, $t2
  sw $t0, -1704($sp)
  lw $t1, -1704($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1708($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1712($sp)
  lw $t1, -200($sp)
  lw $t2, -1712($sp)
  add $t0, $t1, $t2
  sw $t0, -1716($sp)
  lw $t1, -1716($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1720($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1724($sp)
  lw $t1, -200($sp)
  lw $t2, -1724($sp)
  add $t0, $t1, $t2
  sw $t0, -1728($sp)
  lw $t1, -1728($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1732($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1736($sp)
  lw $t1, -200($sp)
  lw $t2, -1736($sp)
  add $t0, $t1, $t2
  sw $t0, -1740($sp)
  lw $t1, -1740($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1744($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1748($sp)
  lw $t1, -200($sp)
  lw $t2, -1748($sp)
  add $t0, $t1, $t2
  sw $t0, -1752($sp)
  lw $t1, -1752($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1756($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1760($sp)
  lw $t1, -200($sp)
  lw $t2, -1760($sp)
  add $t0, $t1, $t2
  sw $t0, -1764($sp)
  lw $t1, -1764($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1768($sp)
  lw $t1, -876($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1772($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1776($sp)
  lw $t1, -248($sp)
  lw $t2, -1776($sp)
  add $t0, $t1, $t2
  sw $t0, -1780($sp)
  lw $t1, -1780($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1784($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1788($sp)
  lw $t1, -248($sp)
  lw $t2, -1788($sp)
  add $t0, $t1, $t2
  sw $t0, -1792($sp)
  lw $t1, -1792($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1796($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1800($sp)
  lw $t1, -264($sp)
  lw $t2, -1800($sp)
  add $t0, $t1, $t2
  sw $t0, -1804($sp)
  lw $t1, -1804($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1808($sp)
  lw $t1, -904($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1812($sp)
  lw $t1, -908($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1816($sp)
  lw $t1, -912($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1820($sp)
  lw $t1, -916($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1824($sp)
  lw $t1, -920($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1828($sp)
  lw $t1, -924($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1832($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1836($sp)
  lw $t1, -276($sp)
  lw $t2, -1836($sp)
  add $t0, $t1, $t2
  sw $t0, -1840($sp)
  lw $t1, -1840($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1844($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1848($sp)
  lw $t1, -276($sp)
  lw $t2, -1848($sp)
  add $t0, $t1, $t2
  sw $t0, -1852($sp)
  lw $t1, -1852($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1856($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1860($sp)
  lw $t1, -276($sp)
  lw $t2, -1860($sp)
  add $t0, $t1, $t2
  sw $t0, -1864($sp)
  lw $t1, -1864($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1868($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1872($sp)
  lw $t1, -276($sp)
  lw $t2, -1872($sp)
  add $t0, $t1, $t2
  sw $t0, -1876($sp)
  lw $t1, -1876($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1880($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1884($sp)
  lw $t1, -276($sp)
  lw $t2, -1884($sp)
  add $t0, $t1, $t2
  sw $t0, -1888($sp)
  lw $t1, -1888($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1892($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1896($sp)
  lw $t1, -276($sp)
  lw $t2, -1896($sp)
  add $t0, $t1, $t2
  sw $t0, -1900($sp)
  lw $t1, -1900($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1904($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1908($sp)
  lw $t1, -276($sp)
  lw $t2, -1908($sp)
  add $t0, $t1, $t2
  sw $t0, -1912($sp)
  lw $t1, -1912($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1916($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1920($sp)
  lw $t1, -276($sp)
  lw $t2, -1920($sp)
  add $t0, $t1, $t2
  sw $t0, -1924($sp)
  lw $t1, -1924($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1928($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1932($sp)
  lw $t1, -276($sp)
  lw $t2, -1932($sp)
  add $t0, $t1, $t2
  sw $t0, -1936($sp)
  lw $t1, -1936($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1940($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1944($sp)
  lw $t1, -276($sp)
  lw $t2, -1944($sp)
  add $t0, $t1, $t2
  sw $t0, -1948($sp)
  lw $t1, -1948($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1952($sp)
  lw $t1, -1008($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1956($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1960($sp)
  lw $t1, -324($sp)
  lw $t2, -1960($sp)
  add $t0, $t1, $t2
  sw $t0, -1964($sp)
  lw $t1, -1964($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1968($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1972($sp)
  lw $t1, -324($sp)
  lw $t2, -1972($sp)
  add $t0, $t1, $t2
  sw $t0, -1976($sp)
  lw $t1, -1976($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1980($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -1984($sp)
  lw $t1, -324($sp)
  lw $t2, -1984($sp)
  add $t0, $t1, $t2
  sw $t0, -1988($sp)
  lw $t1, -1988($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1992($sp)
  lw $t1, -1036($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -1996($sp)
  lw $t1, -1040($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2000($sp)
  lw $t1, -1044($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2004($sp)
  lw $t1, -1048($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2008($sp)
  lw $t1, -1052($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2012($sp)
  lw $t1, -1056($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2016($sp)
  lw $t1, -1060($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2020($sp)
  li $t1, 47176
  sw $t1, -6228($sp)
  lw $t1, -380($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2024($sp)
  lw $t1, -2024($sp)
  li $t2, 0
  bne $t1, $t2, label769
  b label768
  label768:
  li $t0, 1
  sw $t0, -2028($sp)
  b label770
  label769:
  li $t0, 0
  sw $t0, -2028($sp)
  label770:
  li $t1, 0
  lw $t2, -2028($sp)
  sub $t0, $t1, $t2
  sw $t0, -2032($sp)
  lw $t1, -2032($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  li $t1, 4406
  li $t2, 44089
  div $t0, $t1, $t2
  sw $t0, -2036($sp)
  lw $t1, -2036($sp)
  li $t2, 53255
  ble $t1, $t2, label775
  b label776
  label775:
  li $t0, 1
  sw $t0, -2040($sp)
  b label777
  label776:
  li $t0, 0
  sw $t0, -2040($sp)
  label777:
  li $t1, 7696
  lw $t2, -540($sp)
  add $t0, $t1, $t2
  sw $t0, -2044($sp)
  lw $t1, -2044($sp)
  li $t2, 9023
  bge $t1, $t2, label778
  b label779
  label778:
  li $t0, 1
  sw $t0, -2048($sp)
  b label780
  label779:
  li $t0, 0
  sw $t0, -2048($sp)
  label780:
  lw $t1, -2048($sp)
  sw $t1, -6228($sp)
  lw $t1, -2040($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2052($sp)
  lw $t1, -2052($sp)
  li $t2, 0
  bne $t1, $t2, label774
  b label771
label774:
  lw $t1, -360($sp)
  li $t2, 8036
  sub $t0, $t1, $t2
  sw $t0, -2056($sp)
  lw $t1, -2056($sp)
  li $t2, 28733
  beq $t1, $t2, label781
  b label782
  label781:
  li $t0, 1
  sw $t0, -2060($sp)
  b label783
  label782:
  li $t0, 0
  sw $t0, -2060($sp)
  label783:
  li $t1, 33669
  li $t2, 0
  bne $t1, $t2, label785
  b label784
  label784:
  li $t0, 1
  sw $t0, -2064($sp)
  b label786
  label785:
  li $t0, 0
  sw $t0, -2064($sp)
  label786:
  lw $t1, -2064($sp)
  lw $t2, -1060($sp)
  add $t0, $t1, $t2
  sw $t0, -2068($sp)
  lw $t1, -916($sp)
  move $t0, $t1
  sw $t0, -648($sp)
  lw $t1, -648($sp)
  sw $t1, -6228($sp)
  lw $t1, -2068($sp)
  sw $t1, -6232($sp)
  li $t1, 27350
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2072($sp)
  lw $t1, -2060($sp)
  lw $t2, -2072($sp)
  bne $t1, $t2, label771
  b label772
label771:
  li $t1, 2334
  move $t0, $t1
  sw $t0, -2076($sp)
  li $t1, 45492
  move $t0, $t1
  sw $t0, -2080($sp)
label787:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2084($sp)
  lw $t1, -2084($sp)
  move $t0, $t1
  sw $t0, -620($sp)
  lw $t1, -620($sp)
  li $t2, 0
  bne $t1, $t2, label788
  b label789
label788:
label790:
  lw $t1, -1036($sp)
  li $t2, 0
  bne $t1, $t2, label795
  b label796
label796:
  li $t1, 1931
  li $t2, 0
  bne $t1, $t2, label794
  b label795
  label794:
  li $t0, 1
  sw $t0, -2088($sp)
  b label797
  label795:
  li $t0, 0
  sw $t0, -2088($sp)
  label797:
  lw $t1, -2088($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2092($sp)
  lw $t1, -264($sp)
  lw $t2, -2092($sp)
  add $t0, $t1, $t2
  sw $t0, -2096($sp)
  lw $t1, -2096($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label793
  b label792
label793:
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2100($sp)
  lw $t1, -128($sp)
  lw $t2, -2100($sp)
  add $t0, $t1, $t2
  sw $t0, -2104($sp)
  li $t1, 36613
  lw $t2, -2104($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -2108($sp)
  lw $t1, -2108($sp)
  li $t2, 0
  bne $t1, $t2, label791
  b label792
label791:
label798:
  lw $t1, -524($sp)
  li $t2, 0
  bne $t1, $t2, label799
  b label800
label799:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2112($sp)
  lw $t1, -2112($sp)
  lw $t2, -2076($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2116($sp)
  lw $t1, -2116($sp)
  li $t2, 0
  bne $t1, $t2, label804
  b label802
label804:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2120($sp)
  lw $t1, -2120($sp)
  lw $t2, -536($sp)
  div $t0, $t1, $t2
  sw $t0, -2124($sp)
  lw $t1, -2124($sp)
  li $t2, 0
  bne $t1, $t2, label801
  b label802
label801:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2128($sp)
  lw $t1, -128($sp)
  lw $t2, -2128($sp)
  add $t0, $t1, $t2
  sw $t0, -2132($sp)
  li $t1, 0
  lw $t2, -2132($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -2136($sp)
  lw $t1, -2136($sp)
  li $t2, 23173
  div $t0, $t1, $t2
  sw $t0, -2140($sp)
  li $t1, 9715
  li $t2, 0
  bne $t1, $t2, label809
  b label808
  label808:
  li $t0, 1
  sw $t0, -2144($sp)
  b label810
  label809:
  li $t0, 0
  sw $t0, -2144($sp)
  label810:
  lw $t1, -2140($sp)
  lw $t2, -2144($sp)
  add $t0, $t1, $t2
  sw $t0, -2148($sp)
  lw $t1, -2148($sp)
  li $t2, 0
  bne $t1, $t2, label805
  b label807
label807:
  lw $t1, -360($sp)
  lw $t2, -904($sp)
  add $t0, $t1, $t2
  sw $t0, -2152($sp)
  li $t1, 57237
  lw $t2, -2152($sp)
  bgt $t1, $t2, label805
  b label806
  label805:
  li $t0, 1
  sw $t0, -2156($sp)
  b label811
  label806:
  li $t0, 0
  sw $t0, -2156($sp)
  label811:
  b label803
label802:
  li $t1, 0
  li $t2, 57271
  sub $t0, $t1, $t2
  sw $t0, -2160($sp)
  lw $t1, -2160($sp)
  li $t2, 0
  bne $t1, $t2, label814
  b label813
label814:
  li $t1, 0
  lw $t2, -2080($sp)
  sub $t0, $t1, $t2
  sw $t0, -2164($sp)
  lw $t1, -2164($sp)
  li $t2, 0
  bne $t1, $t2, label812
  b label813
  label812:
  li $t0, 1
  sw $t0, -2168($sp)
  b label815
  label813:
  li $t0, 0
  sw $t0, -2168($sp)
  label815:
label803:
  b label798
label800:
  b label790
label792:
  b label787
label789:
  lw $t1, -2076($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2172($sp)
  lw $t1, -2080($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -2176($sp)
  li $t1, 24479
  li $t2, 0
  bne $t1, $t2, label818
  b label816
label818:
  li $t1, 29808
  lw $t2, -876($sp)
  bne $t1, $t2, label819
  b label820
  label819:
  li $t0, 1
  sw $t0, -2180($sp)
  b label821
  label820:
  li $t0, 0
  sw $t0, -2180($sp)
  label821:
  lw $t1, -2180($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2184($sp)
  lw $t1, -20($sp)
  lw $t2, -2184($sp)
  add $t0, $t1, $t2
  sw $t0, -2188($sp)
  lw $t1, -2188($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label816
  b label817
  label816:
  li $t0, 1
  sw $t0, -2192($sp)
  b label822
  label817:
  li $t0, 0
  sw $t0, -2192($sp)
  label822:
  lw $t1, -2192($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  sub $t0, $sp, 2212
  sw $t0, -2200($sp)
  sub $t0, $sp, 2244
  sw $t0, -2220($sp)
  sub $t0, $sp, 2268
  sw $t0, -2252($sp)
  li $t1, 39753
  move $t0, $t1
  sw $t0, -2272($sp)
  li $t1, 65409
  move $t0, $t1
  sw $t0, -2276($sp)
  li $t1, 54059
  move $t0, $t1
  sw $t0, -2280($sp)
  li $t1, 21497
  move $t0, $t1
  sw $t0, -2284($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2288($sp)
  lw $t1, -2200($sp)
  lw $t2, -2288($sp)
  add $t0, $t1, $t2
  sw $t0, -2292($sp)
  li $t1, 39077
  move $t0, $t1
  lw $s0, -2292($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2296($sp)
  lw $t1, -2200($sp)
  lw $t2, -2296($sp)
  add $t0, $t1, $t2
  sw $t0, -2300($sp)
  li $t1, 25858
  move $t0, $t1
  lw $s0, -2300($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2304($sp)
  lw $t1, -2200($sp)
  lw $t2, -2304($sp)
  add $t0, $t1, $t2
  sw $t0, -2308($sp)
  li $t1, 3137
  move $t0, $t1
  lw $s0, -2308($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2312($sp)
  lw $t1, -2220($sp)
  lw $t2, -2312($sp)
  add $t0, $t1, $t2
  sw $t0, -2316($sp)
  li $t1, 43484
  move $t0, $t1
  lw $s0, -2316($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2320($sp)
  lw $t1, -2220($sp)
  lw $t2, -2320($sp)
  add $t0, $t1, $t2
  sw $t0, -2324($sp)
  li $t1, 4411
  move $t0, $t1
  lw $s0, -2324($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2328($sp)
  lw $t1, -2220($sp)
  lw $t2, -2328($sp)
  add $t0, $t1, $t2
  sw $t0, -2332($sp)
  li $t1, 56393
  move $t0, $t1
  lw $s0, -2332($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2336($sp)
  lw $t1, -2220($sp)
  lw $t2, -2336($sp)
  add $t0, $t1, $t2
  sw $t0, -2340($sp)
  li $t1, 51180
  move $t0, $t1
  lw $s0, -2340($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2344($sp)
  lw $t1, -2220($sp)
  lw $t2, -2344($sp)
  add $t0, $t1, $t2
  sw $t0, -2348($sp)
  li $t1, 13434
  move $t0, $t1
  lw $s0, -2348($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2352($sp)
  lw $t1, -2220($sp)
  lw $t2, -2352($sp)
  add $t0, $t1, $t2
  sw $t0, -2356($sp)
  li $t1, 64429
  move $t0, $t1
  lw $s0, -2356($sp)
  sw $t0, 0($s0)
  li $t1, 14377
  move $t0, $t1
  sw $t0, -2360($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2364($sp)
  lw $t1, -2252($sp)
  lw $t2, -2364($sp)
  add $t0, $t1, $t2
  sw $t0, -2368($sp)
  li $t1, 40784
  move $t0, $t1
  lw $s0, -2368($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2372($sp)
  lw $t1, -2252($sp)
  lw $t2, -2372($sp)
  add $t0, $t1, $t2
  sw $t0, -2376($sp)
  li $t1, 32562
  move $t0, $t1
  lw $s0, -2376($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2380($sp)
  lw $t1, -2252($sp)
  lw $t2, -2380($sp)
  add $t0, $t1, $t2
  sw $t0, -2384($sp)
  li $t1, 16711
  move $t0, $t1
  lw $s0, -2384($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2388($sp)
  lw $t1, -2252($sp)
  lw $t2, -2388($sp)
  add $t0, $t1, $t2
  sw $t0, -2392($sp)
  li $t1, 20741
  move $t0, $t1
  lw $s0, -2392($sp)
  sw $t0, 0($s0)
  li $t1, 34493
  move $t0, $t1
  sw $t0, -2396($sp)
label823:
  li $t1, 53324
  li $t2, 0
  bne $t1, $t2, label826
  b label828
label828:
  li $t1, 62366
  li $t2, 0
  bne $t1, $t2, label826
  b label827
  label826:
  li $t0, 1
  sw $t0, -2400($sp)
  b label829
  label827:
  li $t0, 0
  sw $t0, -2400($sp)
  label829:
  lw $t1, -2400($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2404($sp)
  lw $t1, -2200($sp)
  lw $t2, -2404($sp)
  add $t0, $t1, $t2
  sw $t0, -2408($sp)
  lw $t1, -2408($sp)
  lw $t1, 0($t1)
  lw $t2, -524($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2412($sp)
  lw $t1, -2412($sp)
  li $t2, 10914
  bgt $t1, $t2, label824
  b label825
label824:
  li $t1, 65426
  lw $t2, -500($sp)
  beq $t1, $t2, label830
  b label831
  label830:
  li $t0, 1
  sw $t0, -2416($sp)
  b label832
  label831:
  li $t0, 0
  sw $t0, -2416($sp)
  label832:
  lw $t1, -2416($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label823
label825:
label833:
  li $t1, 12268
  li $t2, 0
  bne $t1, $t2, label838
  b label837
label838:
  li $t1, 37798
  li $t2, 0
  bne $t1, $t2, label836
  b label837
  label836:
  li $t0, 1
  sw $t0, -2420($sp)
  b label839
  label837:
  li $t0, 0
  sw $t0, -2420($sp)
  label839:
  li $t1, 23062
  lw $t2, -344($sp)
  beq $t1, $t2, label842
  b label841
label842:
  lw $t1, -384($sp)
  li $t2, 0
  bne $t1, $t2, label840
  b label841
  label840:
  li $t0, 1
  sw $t0, -2424($sp)
  b label843
  label841:
  li $t0, 0
  sw $t0, -2424($sp)
  label843:
  lw $t1, -2424($sp)
  sw $t1, -6228($sp)
  lw $t1, -2420($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2428($sp)
  lw $t1, -2428($sp)
  move $t0, $t1
  sw $t0, -388($sp)
  lw $t1, -388($sp)
  li $t2, 0
  bne $t1, $t2, label834
  b label835
label834:
  li $t1, 21983
  lw $t2, -1040($sp)
  bgt $t1, $t2, label848
  b label850
label850:
  li $t1, 29499
  li $t2, 0
  bne $t1, $t2, label848
  b label849
  label848:
  li $t0, 1
  sw $t0, -2432($sp)
  b label851
  label849:
  li $t0, 0
  sw $t0, -2432($sp)
  label851:
  li $t1, 14797
  li $t2, 46463
  beq $t1, $t2, label852
  b label854
label854:
  lw $t1, -2080($sp)
  li $t2, 0
  bne $t1, $t2, label852
  b label853
  label852:
  li $t0, 1
  sw $t0, -2436($sp)
  b label855
  label853:
  li $t0, 0
  sw $t0, -2436($sp)
  label855:
  li $t1, 0
  lw $t2, -520($sp)
  sub $t0, $t1, $t2
  sw $t0, -2440($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2444($sp)
  lw $t1, -128($sp)
  lw $t2, -2444($sp)
  add $t0, $t1, $t2
  sw $t0, -2448($sp)
  li $t1, 46336
  li $t2, 47831
  bgt $t1, $t2, label860
  b label861
  label860:
  li $t0, 1
  sw $t0, -2452($sp)
  b label862
  label861:
  li $t0, 0
  sw $t0, -2452($sp)
  label862:
  lw $t1, -2452($sp)
  lw $t2, -356($sp)
  ble $t1, $t2, label858
  b label859
  label858:
  li $t0, 1
  sw $t0, -2456($sp)
  b label863
  label859:
  li $t0, 0
  sw $t0, -2456($sp)
  label863:
  lw $t1, -388($sp)
  li $t2, 0
  bne $t1, $t2, label864
  b label866
label866:
  lw $t1, -512($sp)
  li $t2, 0
  bne $t1, $t2, label864
  b label865
  label864:
  li $t0, 1
  sw $t0, -2460($sp)
  b label867
  label865:
  li $t0, 0
  sw $t0, -2460($sp)
  label867:
  lw $t1, -2460($sp)
  sw $t1, -6228($sp)
  lw $t1, -2456($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_eZzKtHKigb
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2464($sp)
  lw $t1, -2464($sp)
  li $t2, 10512
  beq $t1, $t2, label856
  b label857
  label856:
  li $t0, 1
  sw $t0, -2468($sp)
  b label868
  label857:
  li $t0, 0
  sw $t0, -2468($sp)
  label868:
  lw $t1, -2468($sp)
  sw $t1, -6228($sp)
  lw $t1, -2448($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  lw $t1, -2440($sp)
  sw $t1, -6236($sp)
  lw $t1, -2436($sp)
  sw $t1, -6240($sp)
  lw $t1, -2432($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2472($sp)
  li $t1, 0
  li $t2, 19877
  sub $t0, $t1, $t2
  sw $t0, -2476($sp)
  lw $t1, -2472($sp)
  lw $t2, -2476($sp)
  bne $t1, $t2, label846
  b label847
  label846:
  li $t0, 1
  sw $t0, -2480($sp)
  b label869
  label847:
  li $t0, 0
  sw $t0, -2480($sp)
  label869:
  li $t1, 8153
  lw $t2, -488($sp)
  add $t0, $t1, $t2
  sw $t0, -2484($sp)
  lw $t1, -2484($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2488($sp)
  lw $t1, -200($sp)
  lw $t2, -2488($sp)
  add $t0, $t1, $t2
  sw $t0, -2492($sp)
  lw $t1, -2480($sp)
  lw $t2, -2492($sp)
  lw $t2, 0($t2)
  beq $t1, $t2, label844
  b label845
  label844:
  li $t0, 1
  sw $t0, -2496($sp)
  b label870
  label845:
  li $t0, 0
  sw $t0, -2496($sp)
  label870:
  li $t1, 13649
  li $t2, 63361
  mulo $t0, $t1, $t2
  sw $t0, -2500($sp)
  lw $t1, -2500($sp)
  lw $t2, -712($sp)
  div $t0, $t1, $t2
  sw $t0, -2504($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2508($sp)
  lw $t1, -108($sp)
  lw $t2, -2508($sp)
  add $t0, $t1, $t2
  sw $t0, -2512($sp)
  li $t1, 49005
  li $t2, 25999
  bgt $t1, $t2, label878
  b label879
  label878:
  li $t0, 1
  sw $t0, -2516($sp)
  b label880
  label879:
  li $t0, 0
  sw $t0, -2516($sp)
  label880:
  lw $t1, -2516($sp)
  lw $t2, -1036($sp)
  bne $t1, $t2, label876
  b label877
  label876:
  li $t0, 1
  sw $t0, -2520($sp)
  b label881
  label877:
  li $t0, 0
  sw $t0, -2520($sp)
  label881:
  lw $t1, -2520($sp)
  sw $t1, -6228($sp)
  lw $t1, -2512($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  lw $t1, -2504($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2524($sp)
  lw $t1, -2524($sp)
  li $t2, 0
  bne $t1, $t2, label875
  b label874
label875:
  li $t1, 3399
  li $t2, 0
  bne $t1, $t2, label873
  b label874
  label873:
  li $t0, 1
  sw $t0, -2528($sp)
  b label882
  label874:
  li $t0, 0
  sw $t0, -2528($sp)
  label882:
  li $t1, 1248
  li $t2, 35962
  bne $t1, $t2, label885
  b label886
  label885:
  li $t0, 1
  sw $t0, -2532($sp)
  b label887
  label886:
  li $t0, 0
  sw $t0, -2532($sp)
  label887:
  lw $t1, -2532($sp)
  lw $t2, -912($sp)
  bne $t1, $t2, label883
  b label884
  label883:
  li $t0, 1
  sw $t0, -2536($sp)
  b label888
  label884:
  li $t0, 0
  sw $t0, -2536($sp)
  label888:
  lw $t1, -2536($sp)
  sw $t1, -6228($sp)
  li $t1, 63383
  sw $t1, -6232($sp)
  lw $t1, -2528($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2540($sp)
  lw $t1, -2540($sp)
  li $t2, 0
  bne $t1, $t2, label872
  b label871
  label871:
  li $t0, 1
  sw $t0, -2544($sp)
  b label889
  label872:
  li $t0, 0
  sw $t0, -2544($sp)
  label889:
  lw $t1, -768($sp)
  lw $t2, -8($sp)
  add $t0, $t1, $t2
  sw $t0, -2548($sp)
  lw $t1, -916($sp)
  sw $t1, -6228($sp)
  lw $t1, -2548($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2552($sp)
  lw $t1, -2544($sp)
  lw $t2, -2552($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2556($sp)
  b label833
label835:
  lw $t1, -508($sp)
  move $t0, $t1
  sw $t0, -2272($sp)
  lw $t1, -2272($sp)
  li $t2, 0
  bne $t1, $t2, label890
  b label891
label890:
label893:
  lw $t1, -776($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2560($sp)
  lw $t1, -2252($sp)
  lw $t2, -2560($sp)
  add $t0, $t1, $t2
  sw $t0, -2564($sp)
  li $t1, 14558
  li $t2, 21989
  mulo $t0, $t1, $t2
  sw $t0, -2568($sp)
  lw $t1, -2564($sp)
  lw $t1, 0($t1)
  lw $t2, -2568($sp)
  sub $t0, $t1, $t2
  sw $t0, -2572($sp)
  lw $t1, -2572($sp)
  move $t0, $t1
  sw $t0, -492($sp)
  lw $t1, -492($sp)
  li $t2, 0
  bne $t1, $t2, label894
  b label895
label894:
  li $t1, 0
  li $t2, 4919
  sub $t0, $t1, $t2
  sw $t0, -2576($sp)
  li $t1, 0
  lw $t2, -2576($sp)
  sub $t0, $t1, $t2
  sw $t0, -2580($sp)
  li $t1, 0
  lw $t2, -2580($sp)
  sub $t0, $t1, $t2
  sw $t0, -2584($sp)
  b label893
label895:
  b label892
label891:
  lw $t1, -2396($sp)
  lw $t2, -2396($sp)
  ble $t1, $t2, label901
  b label902
  label901:
  li $t0, 1
  sw $t0, -2588($sp)
  b label903
  label902:
  li $t0, 0
  sw $t0, -2588($sp)
  label903:
  lw $t1, -2588($sp)
  lw $t2, -708($sp)
  bgt $t1, $t2, label899
  b label900
  label899:
  li $t0, 1
  sw $t0, -2592($sp)
  b label904
  label900:
  li $t0, 0
  sw $t0, -2592($sp)
  label904:
  lw $t1, -2592($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2596($sp)
  lw $t1, -184($sp)
  lw $t2, -2596($sp)
  add $t0, $t1, $t2
  sw $t0, -2600($sp)
  li $t1, 0
  li $t2, 2347
  sub $t0, $t1, $t2
  sw $t0, -2604($sp)
  li $t1, 0
  lw $t2, -2604($sp)
  sub $t0, $t1, $t2
  sw $t0, -2608($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2612($sp)
  lw $t1, -248($sp)
  lw $t2, -2612($sp)
  add $t0, $t1, $t2
  sw $t0, -2616($sp)
  lw $t1, -2608($sp)
  lw $t2, -2616($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -2620($sp)
  lw $t1, -2600($sp)
  lw $t1, 0($t1)
  lw $t2, -2620($sp)
  bge $t1, $t2, label896
  b label897
label896:
  lw $t1, -392($sp)
  li $t2, 31088
  div $t0, $t1, $t2
  sw $t0, -2624($sp)
  lw $t1, -2624($sp)
  li $t2, 0
  bne $t1, $t2, label910
  b label909
label910:
  lw $t1, -2284($sp)
  li $t2, 0
  bne $t1, $t2, label908
  b label909
  label908:
  li $t0, 1
  sw $t0, -2628($sp)
  b label911
  label909:
  li $t0, 0
  sw $t0, -2628($sp)
  label911:
  li $t1, 53632
  li $t2, 0
  bne $t1, $t2, label912
  b label915
label915:
  lw $t1, -536($sp)
  li $t2, 0
  bne $t1, $t2, label912
  b label914
label914:
  lw $t1, -356($sp)
  li $t2, 0
  bne $t1, $t2, label912
  b label913
  label912:
  li $t0, 1
  sw $t0, -2632($sp)
  b label916
  label913:
  li $t0, 0
  sw $t0, -2632($sp)
  label916:
  lw $t1, -352($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2636($sp)
  lw $t1, -2252($sp)
  lw $t2, -2636($sp)
  add $t0, $t1, $t2
  sw $t0, -2640($sp)
  li $t1, 25300
  li $t2, 0
  bne $t1, $t2, label918
  b label919
label919:
  li $t1, 53071
  li $t2, 0
  bne $t1, $t2, label917
  b label918
  label917:
  li $t0, 1
  sw $t0, -2644($sp)
  b label920
  label918:
  li $t0, 0
  sw $t0, -2644($sp)
  label920:
  lw $t1, -2644($sp)
  sw $t1, -6228($sp)
  lw $t1, -2640($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  lw $t1, -2632($sp)
  sw $t1, -6236($sp)
  lw $t1, -2628($sp)
  sw $t1, -6240($sp)
  lw $t1, -340($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2648($sp)
  li $t1, 2237
  lw $t2, -2648($sp)
  mulo $t0, $t1, $t2
  sw $t0, -2652($sp)
  lw $t1, -2652($sp)
  li $t2, 0
  bne $t1, $t2, label907
  b label906
label907:
  lw $t1, -1048($sp)
  li $t2, 0
  bne $t1, $t2, label905
  b label906
  label905:
  li $t0, 1
  sw $t0, -2656($sp)
  b label921
  label906:
  li $t0, 0
  sw $t0, -2656($sp)
  label921:
  b label898
label897:
  lw $t1, -500($sp)
  move $t0, $t1
  sw $t0, -708($sp)
  li $t1, 0
  li $t2, 17596
  sub $t0, $t1, $t2
  sw $t0, -2660($sp)
  lw $t1, -2660($sp)
  li $t2, 0
  bne $t1, $t2, label924
  b label923
label924:
  li $t1, 40097
  li $t2, 0
  bne $t1, $t2, label922
  b label923
  label922:
  li $t0, 1
  sw $t0, -2664($sp)
  b label925
  label923:
  li $t0, 0
  sw $t0, -2664($sp)
  label925:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2668($sp)
  lw $t1, -2220($sp)
  lw $t2, -2668($sp)
  add $t0, $t1, $t2
  sw $t0, -2672($sp)
  lw $t1, -2672($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label926
  b label928
label928:
  lw $t1, -764($sp)
  li $t2, 0
  bne $t1, $t2, label926
  b label927
  label926:
  li $t0, 1
  sw $t0, -2676($sp)
  b label929
  label927:
  li $t0, 0
  sw $t0, -2676($sp)
  label929:
  lw $t1, -2276($sp)
  li $t2, 29112
  mulo $t0, $t1, $t2
  sw $t0, -2680($sp)
  lw $t1, -2680($sp)
  li $t2, 14798
  bge $t1, $t2, label932
  b label933
  label932:
  li $t0, 1
  sw $t0, -2684($sp)
  b label934
  label933:
  li $t0, 0
  sw $t0, -2684($sp)
  label934:
  lw $t1, -372($sp)
  move $t0, $t1
  sw $t0, -1056($sp)
  lw $t1, -1056($sp)
  sw $t1, -6228($sp)
  lw $t1, -2684($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2688($sp)
  lw $t1, -2688($sp)
  li $t2, 59199
  bgt $t1, $t2, label930
  b label931
  label930:
  li $t0, 1
  sw $t0, -2692($sp)
  b label935
  label931:
  li $t0, 0
  sw $t0, -2692($sp)
  label935:
  li $t1, 39624
  li $t2, 34676
  beq $t1, $t2, label936
  b label937
  label936:
  li $t0, 1
  sw $t0, -2696($sp)
  b label938
  label937:
  li $t0, 0
  sw $t0, -2696($sp)
  label938:
  lw $t1, -2696($sp)
  sw $t1, -6228($sp)
  lw $t1, -2692($sp)
  sw $t1, -6232($sp)
  lw $t1, -2676($sp)
  sw $t1, -6236($sp)
  lw $t1, -2664($sp)
  sw $t1, -6240($sp)
  lw $t1, -708($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2700($sp)
  lw $t1, -2700($sp)
  li $t2, 1817
  mulo $t0, $t1, $t2
  sw $t0, -2704($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2708($sp)
  lw $t1, -128($sp)
  lw $t2, -2708($sp)
  add $t0, $t1, $t2
  sw $t0, -2712($sp)
  li $t1, 0
  lw $t2, -2712($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -2716($sp)
  li $t1, 0
  lw $t2, -532($sp)
  sub $t0, $t1, $t2
  sw $t0, -2720($sp)
  lw $t1, -2716($sp)
  lw $t2, -2720($sp)
  div $t0, $t1, $t2
  sw $t0, -2724($sp)
  lw $t1, -2704($sp)
  lw $t2, -2724($sp)
  add $t0, $t1, $t2
  sw $t0, -2728($sp)
label898:
label892:
  lw $t1, -396($sp)
  move $t0, $t1
  sw $t0, -532($sp)
  li $t1, 14382
  li $t2, 0
  bne $t1, $t2, label942
  b label941
  label941:
  li $t0, 1
  sw $t0, -2732($sp)
  b label943
  label942:
  li $t0, 0
  sw $t0, -2732($sp)
  label943:
  lw $t1, -2732($sp)
  li $t2, 57780
  add $t0, $t1, $t2
  sw $t0, -2736($sp)
  li $t1, 15971
  li $t2, 40381
  mulo $t0, $t1, $t2
  sw $t0, -2740($sp)
  lw $t1, -2740($sp)
  li $t2, 0
  bne $t1, $t2, label946
  b label945
label946:
  lw $t1, -2360($sp)
  li $t2, 0
  bne $t1, $t2, label944
  b label945
  label944:
  li $t0, 1
  sw $t0, -2744($sp)
  b label947
  label945:
  li $t0, 0
  sw $t0, -2744($sp)
  label947:
  lw $t1, -2744($sp)
  sw $t1, -6228($sp)
  lw $t1, -2736($sp)
  sw $t1, -6232($sp)
  lw $t1, -532($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2748($sp)
  lw $t1, -2748($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2752($sp)
  lw $t1, -2752($sp)
  li $t2, 0
  bne $t1, $t2, label940
  b label939
label939:
  li $t1, 61180
  lw $t2, -920($sp)
  div $t0, $t1, $t2
  sw $t0, -2756($sp)
  lw $t1, -2756($sp)
  li $t2, 13818
  sub $t0, $t1, $t2
  sw $t0, -2760($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2764($sp)
  lw $t1, -184($sp)
  lw $t2, -2764($sp)
  add $t0, $t1, $t2
  sw $t0, -2768($sp)
  lw $t1, -532($sp)
  move $t0, $t1
  sw $t0, -528($sp)
  lw $t1, -528($sp)
  sw $t1, -6228($sp)
  lw $t1, -2768($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2772($sp)
  lw $t1, -2772($sp)
  li $t2, 28376
  bge $t1, $t2, label951
  b label952
  label951:
  li $t0, 1
  sw $t0, -2776($sp)
  b label953
  label952:
  li $t0, 0
  sw $t0, -2776($sp)
  label953:
  li $t1, 0
  li $t2, 63618
  sub $t0, $t1, $t2
  sw $t0, -2780($sp)
  li $t1, 0
  li $t2, 36525
  sub $t0, $t1, $t2
  sw $t0, -2784($sp)
  li $t1, 0
  lw $t2, -2784($sp)
  sub $t0, $t1, $t2
  sw $t0, -2788($sp)
  lw $t1, -544($sp)
  lw $t2, -1060($sp)
  sub $t0, $t1, $t2
  sw $t0, -2792($sp)
  lw $t1, -2792($sp)
  sw $t1, -6228($sp)
  lw $t1, -2788($sp)
  sw $t1, -6232($sp)
  lw $t1, -2780($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2796($sp)
  li $t1, 30723
  li $t2, 0
  bne $t1, $t2, label957
  b label956
  label956:
  li $t0, 1
  sw $t0, -2800($sp)
  b label958
  label957:
  li $t0, 0
  sw $t0, -2800($sp)
  label958:
  lw $t1, -2800($sp)
  li $t2, 16902
  blt $t1, $t2, label954
  b label955
  label954:
  li $t0, 1
  sw $t0, -2804($sp)
  b label959
  label955:
  li $t0, 0
  sw $t0, -2804($sp)
  label959:
  li $t1, 52359
  move $t0, $t1
  sw $t0, -768($sp)
  lw $t1, -768($sp)
  sw $t1, -6228($sp)
  lw $t1, -2804($sp)
  sw $t1, -6232($sp)
  lw $t1, -2796($sp)
  sw $t1, -6236($sp)
  lw $t1, -2776($sp)
  sw $t1, -6240($sp)
  lw $t1, -2760($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2808($sp)
  lw $t1, -2808($sp)
  move $t0, $t1
  sw $t0, -2280($sp)
  lw $t1, -2280($sp)
  li $t2, 0
  bne $t1, $t2, label948
  b label949
label948:
  lw $t1, -368($sp)
  li $t2, 0
  bne $t1, $t2, label962
  b label961
label962:
  li $t1, 32961
  li $t2, 0
  bne $t1, $t2, label960
  b label961
  label960:
  li $t0, 1
  sw $t0, -2812($sp)
  b label963
  label961:
  li $t0, 0
  sw $t0, -2812($sp)
  label963:
  b label950
label949:
label964:
  lw $t1, -488($sp)
  move $t0, $t1
  sw $t0, -356($sp)
  lw $t1, -356($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2816($sp)
  lw $t1, -2816($sp)
  li $t2, 47990
  bgt $t1, $t2, label969
  b label970
  label969:
  li $t0, 1
  sw $t0, -2820($sp)
  b label971
  label970:
  li $t0, 0
  sw $t0, -2820($sp)
  label971:
  li $t1, 40456
  li $t2, 58261
  add $t0, $t1, $t2
  sw $t0, -2824($sp)
  lw $t1, -2820($sp)
  lw $t2, -2824($sp)
  ble $t1, $t2, label967
  b label968
  label967:
  li $t0, 1
  sw $t0, -2828($sp)
  b label972
  label968:
  li $t0, 0
  sw $t0, -2828($sp)
  label972:
  lw $t1, -2828($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2832($sp)
  lw $t1, -2252($sp)
  lw $t2, -2832($sp)
  add $t0, $t1, $t2
  sw $t0, -2836($sp)
  lw $t1, -2836($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label965
  b label966
label965:
  lw $t1, -376($sp)
  lw $t2, -368($sp)
  add $t0, $t1, $t2
  sw $t0, -2840($sp)
  lw $t1, -2840($sp)
  li $t2, 0
  bne $t1, $t2, label979
  b label978
label979:
  li $t1, 35525
  li $t2, 0
  bne $t1, $t2, label977
  b label978
  label977:
  li $t0, 1
  sw $t0, -2844($sp)
  b label980
  label978:
  li $t0, 0
  sw $t0, -2844($sp)
  label980:
  li $t1, 58052
  sw $t1, -6228($sp)
  lw $t1, -2844($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2848($sp)
  li $t1, 32822
  li $t2, 0
  bne $t1, $t2, label982
  b label981
  label981:
  li $t0, 1
  sw $t0, -2852($sp)
  b label983
  label982:
  li $t0, 0
  sw $t0, -2852($sp)
  label983:
  li $t1, 0
  lw $t2, -2852($sp)
  sub $t0, $t1, $t2
  sw $t0, -2856($sp)
  lw $t1, -2848($sp)
  lw $t2, -2856($sp)
  beq $t1, $t2, label975
  b label976
  label975:
  li $t0, 1
  sw $t0, -2860($sp)
  b label984
  label976:
  li $t0, 0
  sw $t0, -2860($sp)
  label984:
  lw $t1, -396($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2864($sp)
  lw $t1, -20($sp)
  lw $t2, -2864($sp)
  add $t0, $t1, $t2
  sw $t0, -2868($sp)
  lw $t1, -2860($sp)
  lw $t2, -2868($sp)
  lw $t2, 0($t2)
  ble $t1, $t2, label973
  b label974
  label973:
  li $t0, 1
  sw $t0, -2872($sp)
  b label985
  label974:
  li $t0, 0
  sw $t0, -2872($sp)
  label985:
  b label964
label966:
label950:
label940:
  lw $t1, -708($sp)
  li $t2, 0
  bne $t1, $t2, label989
  b label988
label989:
  lw $t1, -344($sp)
  li $t2, 0
  bne $t1, $t2, label986
  b label988
label988:
  lw $t1, -904($sp)
  li $t2, 0
  bne $t1, $t2, label986
  b label987
  label986:
  li $t0, 1
  sw $t0, -2876($sp)
  b label990
  label987:
  li $t0, 0
  sw $t0, -2876($sp)
  label990:
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2880($sp)
  lw $t1, -20($sp)
  lw $t2, -2880($sp)
  add $t0, $t1, $t2
  sw $t0, -2884($sp)
  lw $t1, -2884($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label991
  b label993
label993:
  lw $t1, -12($sp)
  li $t2, 0
  bne $t1, $t2, label991
  b label992
  label991:
  li $t0, 1
  sw $t0, -2888($sp)
  b label994
  label992:
  li $t0, 0
  sw $t0, -2888($sp)
  label994:
  lw $t1, -2888($sp)
  sw $t1, -6228($sp)
  lw $t1, -2876($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2892($sp)
  b label773
label772:
label995:
  li $t1, 61935
  lw $t2, -516($sp)
  blt $t1, $t2, label998
  b label999
  label998:
  li $t0, 1
  sw $t0, -2896($sp)
  b label1000
  label999:
  li $t0, 0
  sw $t0, -2896($sp)
  label1000:
  lw $t1, -2896($sp)
  move $t0, $t1
  sw $t0, -1056($sp)
  lw $t1, -1056($sp)
  move $t0, $t1
  sw $t0, -660($sp)
  lw $t1, -660($sp)
  li $t2, 0
  bne $t1, $t2, label996
  b label997
label996:
  sub $t0, $sp, 2924
  sw $t0, -2904($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2928($sp)
  lw $t1, -2904($sp)
  lw $t2, -2928($sp)
  add $t0, $t1, $t2
  sw $t0, -2932($sp)
  li $t1, 18786
  move $t0, $t1
  lw $s0, -2932($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2936($sp)
  lw $t1, -2904($sp)
  lw $t2, -2936($sp)
  add $t0, $t1, $t2
  sw $t0, -2940($sp)
  li $t1, 63083
  move $t0, $t1
  lw $s0, -2940($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2944($sp)
  lw $t1, -2904($sp)
  lw $t2, -2944($sp)
  add $t0, $t1, $t2
  sw $t0, -2948($sp)
  li $t1, 36023
  move $t0, $t1
  lw $s0, -2948($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2952($sp)
  lw $t1, -2904($sp)
  lw $t2, -2952($sp)
  add $t0, $t1, $t2
  sw $t0, -2956($sp)
  li $t1, 53462
  move $t0, $t1
  lw $s0, -2956($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -2960($sp)
  lw $t1, -2904($sp)
  lw $t2, -2960($sp)
  add $t0, $t1, $t2
  sw $t0, -2964($sp)
  li $t1, 64900
  move $t0, $t1
  lw $s0, -2964($sp)
  sw $t0, 0($s0)
  li $t1, 23761
  move $t0, $t1
  sw $t0, -2968($sp)
  li $t1, 20428
  move $t0, $t1
  sw $t0, -2972($sp)
  li $t1, 13746
  move $t0, $t1
  sw $t0, -2976($sp)
  li $t1, 16006
  move $t0, $t1
  sw $t0, -2980($sp)
  li $t1, 36399
  move $t0, $t1
  sw $t0, -2984($sp)
  li $t1, 54128
  move $t0, $t1
  sw $t0, -2988($sp)
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -2992($sp)
  li $t1, 0
  lw $t2, -2992($sp)
  sub $t0, $t1, $t2
  sw $t0, -2996($sp)
  lw $t1, -2996($sp)
  li $t2, 0
  bne $t1, $t2, label1001
  b label1002
label1001:
  sub $t0, $sp, 3040
  sw $t0, -3004($sp)
  sub $t0, $sp, 3084
  sw $t0, -3048($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3088($sp)
  lw $t1, -3004($sp)
  lw $t2, -3088($sp)
  add $t0, $t1, $t2
  sw $t0, -3092($sp)
  li $t1, 11650
  move $t0, $t1
  lw $s0, -3092($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3096($sp)
  lw $t1, -3004($sp)
  lw $t2, -3096($sp)
  add $t0, $t1, $t2
  sw $t0, -3100($sp)
  li $t1, 50217
  move $t0, $t1
  lw $s0, -3100($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3104($sp)
  lw $t1, -3004($sp)
  lw $t2, -3104($sp)
  add $t0, $t1, $t2
  sw $t0, -3108($sp)
  li $t1, 30221
  move $t0, $t1
  lw $s0, -3108($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3112($sp)
  lw $t1, -3004($sp)
  lw $t2, -3112($sp)
  add $t0, $t1, $t2
  sw $t0, -3116($sp)
  li $t1, 43256
  move $t0, $t1
  lw $s0, -3116($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3120($sp)
  lw $t1, -3004($sp)
  lw $t2, -3120($sp)
  add $t0, $t1, $t2
  sw $t0, -3124($sp)
  li $t1, 13057
  move $t0, $t1
  lw $s0, -3124($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3128($sp)
  lw $t1, -3004($sp)
  lw $t2, -3128($sp)
  add $t0, $t1, $t2
  sw $t0, -3132($sp)
  li $t1, 28304
  move $t0, $t1
  lw $s0, -3132($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3136($sp)
  lw $t1, -3004($sp)
  lw $t2, -3136($sp)
  add $t0, $t1, $t2
  sw $t0, -3140($sp)
  li $t1, 14245
  move $t0, $t1
  lw $s0, -3140($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3144($sp)
  lw $t1, -3004($sp)
  lw $t2, -3144($sp)
  add $t0, $t1, $t2
  sw $t0, -3148($sp)
  li $t1, 43781
  move $t0, $t1
  lw $s0, -3148($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3152($sp)
  lw $t1, -3004($sp)
  lw $t2, -3152($sp)
  add $t0, $t1, $t2
  sw $t0, -3156($sp)
  li $t1, 45206
  move $t0, $t1
  lw $s0, -3156($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3160($sp)
  lw $t1, -3048($sp)
  lw $t2, -3160($sp)
  add $t0, $t1, $t2
  sw $t0, -3164($sp)
  li $t1, 1069
  move $t0, $t1
  lw $s0, -3164($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3168($sp)
  lw $t1, -3048($sp)
  lw $t2, -3168($sp)
  add $t0, $t1, $t2
  sw $t0, -3172($sp)
  li $t1, 11206
  move $t0, $t1
  lw $s0, -3172($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3176($sp)
  lw $t1, -3048($sp)
  lw $t2, -3176($sp)
  add $t0, $t1, $t2
  sw $t0, -3180($sp)
  li $t1, 27660
  move $t0, $t1
  lw $s0, -3180($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3184($sp)
  lw $t1, -3048($sp)
  lw $t2, -3184($sp)
  add $t0, $t1, $t2
  sw $t0, -3188($sp)
  li $t1, 41525
  move $t0, $t1
  lw $s0, -3188($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3192($sp)
  lw $t1, -3048($sp)
  lw $t2, -3192($sp)
  add $t0, $t1, $t2
  sw $t0, -3196($sp)
  li $t1, 3931
  move $t0, $t1
  lw $s0, -3196($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3200($sp)
  lw $t1, -3048($sp)
  lw $t2, -3200($sp)
  add $t0, $t1, $t2
  sw $t0, -3204($sp)
  li $t1, 63185
  move $t0, $t1
  lw $s0, -3204($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3208($sp)
  lw $t1, -3048($sp)
  lw $t2, -3208($sp)
  add $t0, $t1, $t2
  sw $t0, -3212($sp)
  li $t1, 34041
  move $t0, $t1
  lw $s0, -3212($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3216($sp)
  lw $t1, -3048($sp)
  lw $t2, -3216($sp)
  add $t0, $t1, $t2
  sw $t0, -3220($sp)
  li $t1, 36753
  move $t0, $t1
  lw $s0, -3220($sp)
  sw $t0, 0($s0)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3224($sp)
  lw $t1, -3048($sp)
  lw $t2, -3224($sp)
  add $t0, $t1, $t2
  sw $t0, -3228($sp)
  li $t1, 1637
  move $t0, $t1
  lw $s0, -3228($sp)
  sw $t0, 0($s0)
  li $t1, 37925
  li $t2, 33152
  mulo $t0, $t1, $t2
  sw $t0, -3232($sp)
  lw $t1, -3232($sp)
  li $t2, 20424
  div $t0, $t1, $t2
  sw $t0, -3236($sp)
  lw $t1, -504($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3240($sp)
  lw $t1, -3004($sp)
  lw $t2, -3240($sp)
  add $t0, $t1, $t2
  sw $t0, -3244($sp)
  lw $t1, -3236($sp)
  lw $t2, -3244($sp)
  lw $t2, 0($t2)
  div $t0, $t1, $t2
  sw $t0, -3248($sp)
  lw $t1, -3248($sp)
  li $t2, 35472
  div $t0, $t1, $t2
  sw $t0, -3252($sp)
  lw $t1, -3252($sp)
  li $t2, 0
  bne $t1, $t2, label1004
  b label1006
label1006:
  lw $t1, -768($sp)
  li $t2, 0
  bne $t1, $t2, label1007
  b label1005
label1007:
  li $t1, 3640
  li $t2, 0
  bne $t1, $t2, label1004
  b label1005
  label1004:
  li $t0, 1
  sw $t0, -3256($sp)
  b label1008
  label1005:
  li $t0, 0
  sw $t0, -3256($sp)
  label1008:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3260($sp)
  li $t1, 0
  lw $t2, -3260($sp)
  sub $t0, $t1, $t2
  sw $t0, -3264($sp)
  lw $t1, -540($sp)
  lw $t2, -908($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3268($sp)
  lw $t1, -3264($sp)
  lw $t2, -3268($sp)
  sub $t0, $t1, $t2
  sw $t0, -3272($sp)
  lw $t1, -2980($sp)
  li $t2, 8350
  mulo $t0, $t1, $t2
  sw $t0, -3276($sp)
  lw $t1, -3272($sp)
  lw $t2, -3276($sp)
  sub $t0, $t1, $t2
  sw $t0, -3280($sp)
  lw $t1, -3280($sp)
  li $t2, 0
  bne $t1, $t2, label1011
  b label1010
label1011:
  li $t1, 34837
  li $t2, 0
  bne $t1, $t2, label1009
  b label1010
  label1009:
  li $t0, 1
  sw $t0, -3284($sp)
  b label1012
  label1010:
  li $t0, 0
  sw $t0, -3284($sp)
  label1012:
  li $t1, 27401
  li $t2, 28778
  sub $t0, $t1, $t2
  sw $t0, -3288($sp)
  lw $t1, -3288($sp)
  li $t2, 48583
  add $t0, $t1, $t2
  sw $t0, -3292($sp)
  lw $t1, -3292($sp)
  li $t2, 0
  bne $t1, $t2, label1015
  b label1014
label1015:
  li $t1, 43407
  lw $t2, -1036($sp)
  div $t0, $t1, $t2
  sw $t0, -3296($sp)
  lw $t1, -3296($sp)
  li $t2, 65177
  add $t0, $t1, $t2
  sw $t0, -3300($sp)
  lw $t1, -920($sp)
  move $t0, $t1
  sw $t0, -616($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3304($sp)
  lw $t1, -128($sp)
  lw $t2, -3304($sp)
  add $t0, $t1, $t2
  sw $t0, -3308($sp)
  lw $t1, -3308($sp)
  lw $t1, 0($t1)
  li $t2, 49858
  div $t0, $t1, $t2
  sw $t0, -3312($sp)
  lw $t1, -512($sp)
  lw $t2, -704($sp)
  bgt $t1, $t2, label1018
  b label1017
label1018:
  lw $t1, -536($sp)
  li $t2, 0
  bne $t1, $t2, label1016
  b label1017
  label1016:
  li $t0, 1
  sw $t0, -3316($sp)
  b label1019
  label1017:
  li $t0, 0
  sw $t0, -3316($sp)
  label1019:
  lw $t1, -360($sp)
  sw $t1, -6228($sp)
  lw $t1, -3316($sp)
  sw $t1, -6232($sp)
  lw $t1, -3312($sp)
  sw $t1, -6236($sp)
  lw $t1, -616($sp)
  sw $t1, -6240($sp)
  lw $t1, -3300($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3320($sp)
  lw $t1, -3320($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3324($sp)
  lw $t1, -3048($sp)
  lw $t2, -3324($sp)
  add $t0, $t1, $t2
  sw $t0, -3328($sp)
  lw $t1, -3328($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1013
  b label1014
  label1013:
  li $t0, 1
  sw $t0, -3332($sp)
  b label1020
  label1014:
  li $t0, 0
  sw $t0, -3332($sp)
  label1020:
  b label1003
label1002:
  lw $t1, -400($sp)
  lw $t2, -916($sp)
  div $t0, $t1, $t2
  sw $t0, -3336($sp)
  lw $t1, -3336($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3340($sp)
  lw $t1, -3340($sp)
  lw $t2, -700($sp)
  sub $t0, $t1, $t2
  sw $t0, -3344($sp)
  lw $t1, -3344($sp)
  li $t2, 0
  bne $t1, $t2, label1021
  b label1022
label1021:
label1024:
  lw $t1, -1040($sp)
  li $t2, 0
  bne $t1, $t2, label1027
  b label1029
label1029:
  li $t1, 1861
  li $t2, 32777
  sub $t0, $t1, $t2
  sw $t0, -3348($sp)
  lw $t1, -3348($sp)
  li $t2, 0
  bne $t1, $t2, label1027
  b label1028
  label1027:
  li $t0, 1
  sw $t0, -3352($sp)
  b label1030
  label1028:
  li $t0, 0
  sw $t0, -3352($sp)
  label1030:
  lw $t1, -3352($sp)
  move $t0, $t1
  sw $t0, -488($sp)
  lw $t1, -488($sp)
  li $t2, 0
  bne $t1, $t2, label1025
  b label1026
label1025:
  lw $t1, -492($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3356($sp)
  lw $t1, -128($sp)
  lw $t2, -3356($sp)
  add $t0, $t1, $t2
  sw $t0, -3360($sp)
  lw $t1, -3360($sp)
  lw $t1, 0($t1)
  lw $t2, -492($sp)
  add $t0, $t1, $t2
  sw $t0, -3364($sp)
  lw $t1, -496($sp)
  lw $t2, -664($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3368($sp)
  lw $t1, -3364($sp)
  lw $t2, -3368($sp)
  add $t0, $t1, $t2
  sw $t0, -3372($sp)
  lw $t1, -3372($sp)
  lw $t2, -488($sp)
  ble $t1, $t2, label1033
  b label1034
  label1033:
  li $t0, 1
  sw $t0, -3376($sp)
  b label1035
  label1034:
  li $t0, 0
  sw $t0, -3376($sp)
  label1035:
  lw $t1, -3376($sp)
  lw $t2, -348($sp)
  bne $t1, $t2, label1031
  b label1032
  label1031:
  li $t0, 1
  sw $t0, -3380($sp)
  b label1036
  label1032:
  li $t0, 0
  sw $t0, -3380($sp)
  label1036:
  b label1024
label1026:
  b label1023
label1022:
  li $t1, 62916
  li $t2, 30165
  beq $t1, $t2, label1043
  b label1044
  label1043:
  li $t0, 1
  sw $t0, -3384($sp)
  b label1045
  label1044:
  li $t0, 0
  sw $t0, -3384($sp)
  label1045:
  lw $t1, -3384($sp)
  li $t2, 47023
  bne $t1, $t2, label1041
  b label1042
  label1041:
  li $t0, 1
  sw $t0, -3388($sp)
  b label1046
  label1042:
  li $t0, 0
  sw $t0, -3388($sp)
  label1046:
  lw $t1, -2984($sp)
  li $t2, 41161
  bne $t1, $t2, label1049
  b label1050
  label1049:
  li $t0, 1
  sw $t0, -3392($sp)
  b label1051
  label1050:
  li $t0, 0
  sw $t0, -3392($sp)
  label1051:
  lw $t1, -3392($sp)
  li $t2, 9835
  beq $t1, $t2, label1047
  b label1048
  label1047:
  li $t0, 1
  sw $t0, -3396($sp)
  b label1052
  label1048:
  li $t0, 0
  sw $t0, -3396($sp)
  label1052:
  lw $t1, -3396($sp)
  sw $t1, -6228($sp)
  lw $t1, -3388($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3400($sp)
  lw $t1, -3400($sp)
  lw $t2, -500($sp)
  blt $t1, $t2, label1039
  b label1040
  label1039:
  li $t0, 1
  sw $t0, -3404($sp)
  b label1053
  label1040:
  li $t0, 0
  sw $t0, -3404($sp)
  label1053:
  lw $t1, -3404($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3408($sp)
  li $t1, 48092
  li $t2, 1
  mulo $t0, $t1, $t2
  sw $t0, -3412($sp)
  lw $t1, -3408($sp)
  lw $t2, -3412($sp)
  add $t0, $t1, $t2
  sw $t0, -3416($sp)
  lw $t1, -912($sp)
  lw $t2, -3416($sp)
  blt $t1, $t2, label1037
  b label1038
  label1037:
  li $t0, 1
  sw $t0, -3420($sp)
  b label1054
  label1038:
  li $t0, 0
  sw $t0, -3420($sp)
  label1054:
label1023:
label1003:
  li $t1, 24081
  li $t2, 0
  bne $t1, $t2, label1060
  b label1058
label1060:
  li $t1, 56298
  li $t2, 0
  bne $t1, $t2, label1058
  b label1059
  label1058:
  li $t0, 1
  sw $t0, -3424($sp)
  b label1061
  label1059:
  li $t0, 0
  sw $t0, -3424($sp)
  label1061:
  lw $t1, -3424($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3428($sp)
  lw $t1, -128($sp)
  lw $t2, -3428($sp)
  add $t0, $t1, $t2
  sw $t0, -3432($sp)
  lw $t1, -3432($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1057
  b label1056
label1057:
  li $t1, 35144
  li $t2, 0
  bne $t1, $t2, label1055
  b label1056
  label1055:
  li $t0, 1
  sw $t0, -3436($sp)
  b label1062
  label1056:
  li $t0, 0
  sw $t0, -3436($sp)
  label1062:
label1063:
  li $t1, 58122
  li $t2, 0
  bne $t1, $t2, label1064
  b label1065
label1064:
  lw $t1, -1036($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3440($sp)
  lw $t1, -264($sp)
  lw $t2, -3440($sp)
  add $t0, $t1, $t2
  sw $t0, -3444($sp)
  lw $t1, -3444($sp)
  lw $t1, 0($t1)
  li $t2, 27515
  add $t0, $t1, $t2
  sw $t0, -3448($sp)
  lw $t1, -392($sp)
  li $t2, 36782
  add $t0, $t1, $t2
  sw $t0, -3452($sp)
  lw $t1, -3448($sp)
  lw $t2, -3452($sp)
  ble $t1, $t2, label1066
  b label1067
  label1066:
  li $t0, 1
  sw $t0, -3456($sp)
  b label1068
  label1067:
  li $t0, 0
  sw $t0, -3456($sp)
  label1068:
  lw $t1, -3456($sp)
  move $t0, $t1
  sw $t0, -376($sp)
  b label1063
label1065:
label1069:
  lw $t1, -500($sp)
  lw $t2, -2980($sp)
  sub $t0, $t1, $t2
  sw $t0, -3460($sp)
  lw $t1, -2972($sp)
  li $t2, 60668
  mulo $t0, $t1, $t2
  sw $t0, -3464($sp)
  lw $t1, -3464($sp)
  li $t2, 57206
  beq $t1, $t2, label1072
  b label1073
  label1072:
  li $t0, 1
  sw $t0, -3468($sp)
  b label1074
  label1073:
  li $t0, 0
  sw $t0, -3468($sp)
  label1074:
  li $t1, 0
  lw $t2, -2976($sp)
  sub $t0, $t1, $t2
  sw $t0, -3472($sp)
  lw $t1, -3472($sp)
  li $t2, 0
  bne $t1, $t2, label1077
  b label1076
label1077:
  lw $t1, -2980($sp)
  li $t2, 0
  bne $t1, $t2, label1075
  b label1076
  label1075:
  li $t0, 1
  sw $t0, -3476($sp)
  b label1078
  label1076:
  li $t0, 0
  sw $t0, -3476($sp)
  label1078:
  lw $t1, -708($sp)
  li $t2, 64308
  div $t0, $t1, $t2
  sw $t0, -3480($sp)
  lw $t1, -3480($sp)
  li $t2, 20
  mulo $t0, $t1, $t2
  sw $t0, -3484($sp)
  lw $t1, -3484($sp)
  sw $t1, -6228($sp)
  lw $t1, -3476($sp)
  sw $t1, -6232($sp)
  li $t1, 447
  sw $t1, -6236($sp)
  lw $t1, -3468($sp)
  sw $t1, -6240($sp)
  lw $t1, -3460($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3488($sp)
  li $t1, 30511
  lw $t2, -3488($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3492($sp)
  lw $t1, -3492($sp)
  li $t2, 35284
  mulo $t0, $t1, $t2
  sw $t0, -3496($sp)
  lw $t1, -3496($sp)
  li $t2, 0
  bne $t1, $t2, label1070
  b label1071
label1070:
label1079:
  lw $t1, -504($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3500($sp)
  lw $t1, -276($sp)
  lw $t2, -3500($sp)
  add $t0, $t1, $t2
  sw $t0, -3504($sp)
  lw $t1, -3504($sp)
  lw $t1, 0($t1)
  li $t2, 26173
  beq $t1, $t2, label1083
  b label1084
  label1083:
  li $t0, 1
  sw $t0, -3508($sp)
  b label1085
  label1084:
  li $t0, 0
  sw $t0, -3508($sp)
  label1085:
  li $t1, 28799
  move $t0, $t1
  sw $t0, -660($sp)
  lw $t1, -520($sp)
  move $t0, $t1
  sw $t0, -1044($sp)
  li $t1, 0
  lw $t2, -484($sp)
  sub $t0, $t1, $t2
  sw $t0, -3512($sp)
  lw $t1, -3512($sp)
  li $t2, 0
  bne $t1, $t2, label1087
  b label1086
  label1086:
  li $t0, 1
  sw $t0, -3516($sp)
  b label1088
  label1087:
  li $t0, 0
  sw $t0, -3516($sp)
  label1088:
  li $t1, 0
  li $t2, 18332
  sub $t0, $t1, $t2
  sw $t0, -3520($sp)
  li $t1, 0
  lw $t2, -3520($sp)
  sub $t0, $t1, $t2
  sw $t0, -3524($sp)
  li $t1, 4045
  li $t2, 28440
  bge $t1, $t2, label1091
  b label1090
label1091:
  li $t1, 55507
  li $t2, 0
  bne $t1, $t2, label1089
  b label1090
  label1089:
  li $t0, 1
  sw $t0, -3528($sp)
  b label1092
  label1090:
  li $t0, 0
  sw $t0, -3528($sp)
  label1092:
  lw $t1, -3528($sp)
  sw $t1, -6228($sp)
  lw $t1, -3524($sp)
  sw $t1, -6232($sp)
  lw $t1, -3516($sp)
  sw $t1, -6236($sp)
  lw $t1, -360($sp)
  sw $t1, -6240($sp)
  lw $t1, -1044($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3532($sp)
  lw $t1, -3532($sp)
  li $t2, 59102
  mulo $t0, $t1, $t2
  sw $t0, -3536($sp)
  li $t1, 0
  li $t2, 12763
  sub $t0, $t1, $t2
  sw $t0, -3540($sp)
  lw $t1, -3540($sp)
  lw $t2, -548($sp)
  bne $t1, $t2, label1093
  b label1094
  label1093:
  li $t0, 1
  sw $t0, -3544($sp)
  b label1095
  label1094:
  li $t0, 0
  sw $t0, -3544($sp)
  label1095:
  lw $t1, -3544($sp)
  sw $t1, -6228($sp)
  lw $t1, -368($sp)
  sw $t1, -6232($sp)
  lw $t1, -3536($sp)
  sw $t1, -6236($sp)
  lw $t1, -660($sp)
  sw $t1, -6240($sp)
  lw $t1, -3508($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3548($sp)
  lw $t1, -3548($sp)
  li $t2, 0
  bne $t1, $t2, label1080
  b label1082
label1082:
  li $t1, 57368
  li $t2, 0
  bne $t1, $t2, label1080
  b label1081
label1080:
  li $t1, 0
  lw $t2, -384($sp)
  sub $t0, $t1, $t2
  sw $t0, -3552($sp)
  lw $t1, -3552($sp)
  li $t2, 0
  bne $t1, $t2, label1097
  b label1096
  label1096:
  li $t0, 1
  sw $t0, -3556($sp)
  b label1098
  label1097:
  li $t0, 0
  sw $t0, -3556($sp)
  label1098:
  li $t1, 26344
  move $t0, $t1
  sw $t0, -2980($sp)
  lw $t1, -2980($sp)
  sw $t1, -6228($sp)
  lw $t1, -3556($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_eZzKtHKigb
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3560($sp)
  li $t1, 10143
  li $t2, 0
  bne $t1, $t2, label1104
  b label1103
  label1103:
  li $t0, 1
  sw $t0, -3564($sp)
  b label1105
  label1104:
  li $t0, 0
  sw $t0, -3564($sp)
  label1105:
  li $t1, 0
  lw $t2, -3564($sp)
  sub $t0, $t1, $t2
  sw $t0, -3568($sp)
  lw $t1, -504($sp)
  li $t2, 21997
  mulo $t0, $t1, $t2
  sw $t0, -3572($sp)
  lw $t1, -376($sp)
  li $t2, 0
  bne $t1, $t2, label1106
  b label1107
  label1106:
  li $t0, 1
  sw $t0, -3576($sp)
  b label1108
  label1107:
  li $t0, 0
  sw $t0, -3576($sp)
  label1108:
  li $t1, 7831
  lw $t2, -660($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3580($sp)
  lw $t1, -360($sp)
  li $t2, 51304
  add $t0, $t1, $t2
  sw $t0, -3584($sp)
  lw $t1, -1008($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3588($sp)
  lw $t1, -248($sp)
  lw $t2, -3588($sp)
  add $t0, $t1, $t2
  sw $t0, -3592($sp)
  li $t1, 31832
  li $t2, 0
  bne $t1, $t2, label1111
  b label1113
label1113:
  li $t1, 55923
  li $t2, 0
  bne $t1, $t2, label1111
  b label1112
  label1111:
  li $t0, 1
  sw $t0, -3596($sp)
  b label1114
  label1112:
  li $t0, 0
  sw $t0, -3596($sp)
  label1114:
  li $t1, 38135
  lw $t2, -344($sp)
  bge $t1, $t2, label1115
  b label1116
  label1115:
  li $t0, 1
  sw $t0, -3600($sp)
  b label1117
  label1116:
  li $t0, 0
  sw $t0, -3600($sp)
  label1117:
  lw $t1, -3600($sp)
  sw $t1, -6228($sp)
  lw $t1, -3596($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3604($sp)
  lw $t1, -3604($sp)
  li $t2, 3791
  beq $t1, $t2, label1109
  b label1110
  label1109:
  li $t0, 1
  sw $t0, -3608($sp)
  b label1118
  label1110:
  li $t0, 0
  sw $t0, -3608($sp)
  label1118:
  lw $t1, -3608($sp)
  sw $t1, -6228($sp)
  lw $t1, -3592($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  lw $t1, -3584($sp)
  sw $t1, -6236($sp)
  lw $t1, -3580($sp)
  sw $t1, -6240($sp)
  lw $t1, -3576($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3612($sp)
  li $t1, 0
  lw $t2, -3612($sp)
  sub $t0, $t1, $t2
  sw $t0, -3616($sp)
  lw $t1, -3616($sp)
  sw $t1, -6228($sp)
  lw $t1, -3572($sp)
  sw $t1, -6232($sp)
  lw $t1, -3568($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3620($sp)
  li $t1, 0
  lw $t2, -3620($sp)
  sub $t0, $t1, $t2
  sw $t0, -3624($sp)
  lw $t1, -3624($sp)
  li $t2, 0
  bne $t1, $t2, label1102
  b label1101
label1102:
  li $t1, 0
  lw $t2, -372($sp)
  sub $t0, $t1, $t2
  sw $t0, -3628($sp)
  lw $t1, -3628($sp)
  lw $t2, -544($sp)
  sub $t0, $t1, $t2
  sw $t0, -3632($sp)
  lw $t1, -3632($sp)
  li $t2, 0
  bne $t1, $t2, label1099
  b label1101
label1101:
  lw $t1, -360($sp)
  li $t2, 14468
  bne $t1, $t2, label1121
  b label1120
label1121:
  li $t1, 28897
  li $t2, 0
  bne $t1, $t2, label1119
  b label1120
  label1119:
  li $t0, 1
  sw $t0, -3636($sp)
  b label1122
  label1120:
  li $t0, 0
  sw $t0, -3636($sp)
  label1122:
  li $t1, 38936
  li $t2, 0
  bne $t1, $t2, label1124
  b label1123
  label1123:
  li $t0, 1
  sw $t0, -3640($sp)
  b label1125
  label1124:
  li $t0, 0
  sw $t0, -3640($sp)
  label1125:
  li $t1, 0
  lw $t2, -3640($sp)
  sub $t0, $t1, $t2
  sw $t0, -3644($sp)
  lw $t1, -664($sp)
  li $t2, 7054
  sub $t0, $t1, $t2
  sw $t0, -3648($sp)
  lw $t1, -3648($sp)
  li $t2, 0
  bne $t1, $t2, label1128
  b label1127
label1128:
  lw $t1, -396($sp)
  li $t2, 0
  bne $t1, $t2, label1126
  b label1127
  label1126:
  li $t0, 1
  sw $t0, -3652($sp)
  b label1129
  label1127:
  li $t0, 0
  sw $t0, -3652($sp)
  label1129:
  lw $t1, -3652($sp)
  sw $t1, -6228($sp)
  lw $t1, -3644($sp)
  sw $t1, -6232($sp)
  lw $t1, -3636($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3656($sp)
  lw $t1, -3656($sp)
  lw $t2, -508($sp)
  sub $t0, $t1, $t2
  sw $t0, -3660($sp)
  li $t1, 56412
  li $t2, 10182
  add $t0, $t1, $t2
  sw $t0, -3664($sp)
  lw $t1, -3660($sp)
  lw $t2, -3664($sp)
  beq $t1, $t2, label1099
  b label1100
  label1099:
  li $t0, 1
  sw $t0, -3668($sp)
  b label1130
  label1100:
  li $t0, 0
  sw $t0, -3668($sp)
  label1130:
  b label1079
label1081:
  b label1069
label1071:
  lw $t1, -768($sp)
  li $t2, 0
  bne $t1, $t2, label1132
  b label1131
  label1131:
  li $t0, 1
  sw $t0, -3672($sp)
  b label1133
  label1132:
  li $t0, 0
  sw $t0, -3672($sp)
  label1133:
  li $t1, 0
  lw $t2, -4($sp)
  sub $t0, $t1, $t2
  sw $t0, -3676($sp)
  lw $t1, -3676($sp)
  li $t2, 0
  bne $t1, $t2, label1140
  b label1139
  label1139:
  li $t0, 1
  sw $t0, -3680($sp)
  b label1141
  label1140:
  li $t0, 0
  sw $t0, -3680($sp)
  label1141:
  li $t1, 37565
  lw $t2, -3680($sp)
  sub $t0, $t1, $t2
  sw $t0, -3684($sp)
  li $t1, 0
  li $t2, 51544
  sub $t0, $t1, $t2
  sw $t0, -3688($sp)
  lw $t1, -3684($sp)
  lw $t2, -3688($sp)
  beq $t1, $t2, label1137
  b label1138
  label1137:
  li $t0, 1
  sw $t0, -3692($sp)
  b label1142
  label1138:
  li $t0, 0
  sw $t0, -3692($sp)
  label1142:
  li $t1, 0
  li $t2, 1852
  sub $t0, $t1, $t2
  sw $t0, -3696($sp)
  lw $t1, -3692($sp)
  lw $t2, -3696($sp)
  bge $t1, $t2, label1134
  b label1135
label1134:
  li $t1, 38012
  li $t2, 0
  bne $t1, $t2, label1148
  b label1147
label1148:
  lw $t1, -1008($sp)
  li $t2, 0
  bne $t1, $t2, label1146
  b label1147
  label1146:
  li $t0, 1
  sw $t0, -3700($sp)
  b label1149
  label1147:
  li $t0, 0
  sw $t0, -3700($sp)
  label1149:
  lw $t1, -1052($sp)
  li $t2, 50316
  mulo $t0, $t1, $t2
  sw $t0, -3704($sp)
  lw $t1, -3704($sp)
  li $t2, 1872
  mulo $t0, $t1, $t2
  sw $t0, -3708($sp)
  li $t1, 7761
  lw $t2, -2968($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3712($sp)
  lw $t1, -3712($sp)
  lw $t2, -904($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3716($sp)
  lw $t1, -912($sp)
  lw $t2, -4($sp)
  beq $t1, $t2, label1150
  b label1152
label1152:
  li $t1, 10954
  li $t2, 0
  bne $t1, $t2, label1150
  b label1151
  label1150:
  li $t0, 1
  sw $t0, -3720($sp)
  b label1153
  label1151:
  li $t0, 0
  sw $t0, -3720($sp)
  label1153:
  li $t1, 30671
  lw $t2, -660($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3724($sp)
  lw $t1, -3724($sp)
  sw $t1, -6228($sp)
  lw $t1, -3720($sp)
  sw $t1, -6232($sp)
  lw $t1, -3716($sp)
  sw $t1, -6236($sp)
  lw $t1, -3708($sp)
  sw $t1, -6240($sp)
  lw $t1, -3700($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3728($sp)
  li $t1, 0
  li $t2, 26093
  sub $t0, $t1, $t2
  sw $t0, -3732($sp)
  lw $t1, -3732($sp)
  li $t2, 0
  bne $t1, $t2, label1155
  b label1154
  label1154:
  li $t0, 1
  sw $t0, -3736($sp)
  b label1156
  label1155:
  li $t0, 0
  sw $t0, -3736($sp)
  label1156:
  lw $t1, -3736($sp)
  sw $t1, -6228($sp)
  lw $t1, -3728($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3740($sp)
  li $t1, 0
  lw $t2, -3740($sp)
  sub $t0, $t1, $t2
  sw $t0, -3744($sp)
  li $t1, 0
  lw $t2, -3744($sp)
  sub $t0, $t1, $t2
  sw $t0, -3748($sp)
  li $t1, 14999
  li $t2, 0
  bne $t1, $t2, label1157
  b label1158
  label1157:
  li $t0, 1
  sw $t0, -3752($sp)
  b label1159
  label1158:
  li $t0, 0
  sw $t0, -3752($sp)
  label1159:
  li $t1, 0
  lw $t2, -524($sp)
  sub $t0, $t1, $t2
  sw $t0, -3756($sp)
  lw $t1, -3756($sp)
  li $t2, 0
  bne $t1, $t2, label1160
  b label1162
label1162:
  li $t1, 59112
  li $t2, 0
  bne $t1, $t2, label1160
  b label1161
  label1160:
  li $t0, 1
  sw $t0, -3760($sp)
  b label1163
  label1161:
  li $t0, 0
  sw $t0, -3760($sp)
  label1163:
  lw $t1, -3760($sp)
  sw $t1, -6228($sp)
  lw $t1, -3752($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_eZzKtHKigb
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3764($sp)
  lw $t1, -3748($sp)
  lw $t2, -3764($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3768($sp)
  li $t1, 0
  lw $t2, -544($sp)
  sub $t0, $t1, $t2
  sw $t0, -3772($sp)
  lw $t1, -3772($sp)
  li $t2, 8566
  div $t0, $t1, $t2
  sw $t0, -3776($sp)
  lw $t1, -3768($sp)
  lw $t2, -3776($sp)
  add $t0, $t1, $t2
  sw $t0, -3780($sp)
  lw $t1, -3780($sp)
  li $t2, 0
  bne $t1, $t2, label1143
  b label1144
label1143:
  lw $t1, -348($sp)
  lw $t2, -2988($sp)
  sub $t0, $t1, $t2
  sw $t0, -3784($sp)
  li $t1, 0
  li $t2, 6339
  sub $t0, $t1, $t2
  sw $t0, -3788($sp)
  lw $t1, -3784($sp)
  lw $t2, -3788($sp)
  add $t0, $t1, $t2
  sw $t0, -3792($sp)
  lw $t1, -524($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3796($sp)
  lw $t1, -108($sp)
  lw $t2, -3796($sp)
  add $t0, $t1, $t2
  sw $t0, -3800($sp)
  lw $t1, -3792($sp)
  lw $t2, -3800($sp)
  lw $t2, 0($t2)
  beq $t1, $t2, label1166
  b label1167
  label1166:
  li $t0, 1
  sw $t0, -3804($sp)
  b label1168
  label1167:
  li $t0, 0
  sw $t0, -3804($sp)
  label1168:
  lw $t1, -3804($sp)
  li $t2, 7897
  beq $t1, $t2, label1164
  b label1165
  label1164:
  li $t0, 1
  sw $t0, -3808($sp)
  b label1169
  label1165:
  li $t0, 0
  sw $t0, -3808($sp)
  label1169:
  b label1145
label1144:
  lw $t1, -504($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3812($sp)
  lw $t1, -200($sp)
  lw $t2, -3812($sp)
  add $t0, $t1, $t2
  sw $t0, -3816($sp)
  lw $t1, -3816($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1171
  b label1170
  label1170:
  li $t0, 1
  sw $t0, -3820($sp)
  b label1172
  label1171:
  li $t0, 0
  sw $t0, -3820($sp)
  label1172:
  li $t1, 0
  lw $t2, -3820($sp)
  sub $t0, $t1, $t2
  sw $t0, -3824($sp)
label1145:
  b label1136
label1135:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3828($sp)
  lw $t1, -152($sp)
  lw $t2, -3828($sp)
  add $t0, $t1, $t2
  sw $t0, -3832($sp)
  li $t1, 0
  lw $t2, -3832($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -3836($sp)
  lw $t1, -3836($sp)
  li $t2, 0
  bne $t1, $t2, label1175
  b label1174
label1175:
  li $t1, 29894
  lw $t2, -4($sp)
  beq $t1, $t2, label1178
  b label1177
label1178:
  li $t1, 42740
  li $t2, 0
  bne $t1, $t2, label1176
  b label1177
  label1176:
  li $t0, 1
  sw $t0, -3840($sp)
  b label1179
  label1177:
  li $t0, 0
  sw $t0, -3840($sp)
  label1179:
  li $t1, 2250
  li $t2, 0
  bne $t1, $t2, label1180
  b label1183
label1183:
  li $t1, 61727
  li $t2, 0
  bne $t1, $t2, label1180
  b label1182
label1182:
  li $t1, 33127
  li $t2, 0
  bne $t1, $t2, label1180
  b label1181
  label1180:
  li $t0, 1
  sw $t0, -3844($sp)
  b label1184
  label1181:
  li $t0, 0
  sw $t0, -3844($sp)
  label1184:
  lw $t1, -1008($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3848($sp)
  lw $t1, -152($sp)
  lw $t2, -3848($sp)
  add $t0, $t1, $t2
  sw $t0, -3852($sp)
  lw $t1, -3852($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1185
  b label1187
label1187:
  li $t1, 40385
  li $t2, 0
  bne $t1, $t2, label1185
  b label1186
  label1185:
  li $t0, 1
  sw $t0, -3856($sp)
  b label1188
  label1186:
  li $t0, 0
  sw $t0, -3856($sp)
  label1188:
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3860($sp)
  lw $t1, -276($sp)
  lw $t2, -3860($sp)
  add $t0, $t1, $t2
  sw $t0, -3864($sp)
  li $t1, 3746
  li $t2, 38918
  sub $t0, $t1, $t2
  sw $t0, -3868($sp)
  lw $t1, -3868($sp)
  lw $t2, -2984($sp)
  beq $t1, $t2, label1189
  b label1190
  label1189:
  li $t0, 1
  sw $t0, -3872($sp)
  b label1191
  label1190:
  li $t0, 0
  sw $t0, -3872($sp)
  label1191:
  lw $t1, -3872($sp)
  sw $t1, -6228($sp)
  lw $t1, -3864($sp)
  lw $t1, 0($t1)
  sw $t1, -6232($sp)
  lw $t1, -3856($sp)
  sw $t1, -6236($sp)
  lw $t1, -3844($sp)
  sw $t1, -6240($sp)
  lw $t1, -3840($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3876($sp)
  lw $t1, -488($sp)
  lw $t2, -3876($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3880($sp)
  lw $t1, -3880($sp)
  li $t2, 0
  bne $t1, $t2, label1173
  b label1174
  label1173:
  li $t0, 1
  sw $t0, -3884($sp)
  b label1192
  label1174:
  li $t0, 0
  sw $t0, -3884($sp)
  label1192:
  li $t1, 54649
  li $t2, 0
  bne $t1, $t2, label1195
  b label1194
label1195:
  li $t1, 60158
  li $t2, 0
  bne $t1, $t2, label1197
  b label1196
  label1196:
  li $t0, 1
  sw $t0, -3888($sp)
  b label1198
  label1197:
  li $t0, 0
  sw $t0, -3888($sp)
  label1198:
  li $t1, 49100
  li $t2, 26678
  div $t0, $t1, $t2
  sw $t0, -3892($sp)
  lw $t1, -3888($sp)
  lw $t2, -3892($sp)
  bge $t1, $t2, label1193
  b label1194
  label1193:
  li $t0, 1
  sw $t0, -3896($sp)
  b label1199
  label1194:
  li $t0, 0
  sw $t0, -3896($sp)
  label1199:
label1136:
  li $t1, 46167
  lw $t2, -384($sp)
  add $t0, $t1, $t2
  sw $t0, -3900($sp)
  lw $t1, -3900($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3904($sp)
  lw $t1, -2904($sp)
  lw $t2, -3904($sp)
  add $t0, $t1, $t2
  sw $t0, -3908($sp)
  lw $t1, -772($sp)
  lw $t2, -924($sp)
  bne $t1, $t2, label1202
  b label1201
label1202:
  li $t1, 50952
  li $t2, 0
  bne $t1, $t2, label1200
  b label1201
  label1200:
  li $t0, 1
  sw $t0, -3912($sp)
  b label1203
  label1201:
  li $t0, 0
  sw $t0, -3912($sp)
  label1203:
  lw $t1, -3912($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3916($sp)
  lw $t1, -3908($sp)
  lw $t1, 0($t1)
  lw $t2, -3916($sp)
  add $t0, $t1, $t2
  sw $t0, -3920($sp)
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3924($sp)
  lw $t1, -3920($sp)
  lw $t2, -3924($sp)
  add $t0, $t1, $t2
  sw $t0, -3928($sp)
  b label995
label997:
label773:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3932($sp)
  lw $t1, -324($sp)
  lw $t2, -3932($sp)
  add $t0, $t1, $t2
  sw $t0, -3936($sp)
  lw $t1, -3936($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1209
  b label1208
  label1208:
  li $t0, 1
  sw $t0, -3940($sp)
  b label1210
  label1209:
  li $t0, 0
  sw $t0, -3940($sp)
  label1210:
  li $t1, 0
  lw $t2, -3940($sp)
  sub $t0, $t1, $t2
  sw $t0, -3944($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3948($sp)
  lw $t1, -276($sp)
  lw $t2, -3948($sp)
  add $t0, $t1, $t2
  sw $t0, -3952($sp)
  lw $t1, -3944($sp)
  lw $t2, -3952($sp)
  lw $t2, 0($t2)
  add $t0, $t1, $t2
  sw $t0, -3956($sp)
  lw $t1, -3956($sp)
  li $t2, 0
  bne $t1, $t2, label1207
  b label1205
label1207:
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3960($sp)
  lw $t1, -152($sp)
  lw $t2, -3960($sp)
  add $t0, $t1, $t2
  sw $t0, -3964($sp)
  lw $t1, -664($sp)
  li $t2, 33009
  div $t0, $t1, $t2
  sw $t0, -3968($sp)
  lw $t1, -3964($sp)
  lw $t1, 0($t1)
  lw $t2, -3968($sp)
  ble $t1, $t2, label1204
  b label1205
label1204:
label1211:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -3972($sp)
  lw $t1, -68($sp)
  lw $t2, -3972($sp)
  add $t0, $t1, $t2
  sw $t0, -3976($sp)
  lw $t1, -3976($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1212
  b label1213
label1212:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -3980($sp)
  lw $t1, -3980($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label1211
label1213:
  b label1206
label1205:
  li $t1, 49073
  li $t2, 0
  bne $t1, $t2, label1214
  b label1215
label1214:
  lw $t1, -356($sp)
  li $t2, 65466
  div $t0, $t1, $t2
  sw $t0, -3984($sp)
  lw $t1, -3984($sp)
  li $t2, 17875
  div $t0, $t1, $t2
  sw $t0, -3988($sp)
  lw $t1, -1052($sp)
  lw $t2, -664($sp)
  mulo $t0, $t1, $t2
  sw $t0, -3992($sp)
  lw $t1, -3988($sp)
  lw $t2, -3992($sp)
  bgt $t1, $t2, label1223
  b label1224
  label1223:
  li $t0, 1
  sw $t0, -3996($sp)
  b label1225
  label1224:
  li $t0, 0
  sw $t0, -3996($sp)
  label1225:
  li $t1, 56970
  lw $t2, -764($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4000($sp)
  lw $t1, -3996($sp)
  lw $t2, -4000($sp)
  bne $t1, $t2, label1221
  b label1222
  label1221:
  li $t0, 1
  sw $t0, -4004($sp)
  b label1226
  label1222:
  li $t0, 0
  sw $t0, -4004($sp)
  label1226:
  li $t1, 34839
  lw $t2, -904($sp)
  add $t0, $t1, $t2
  sw $t0, -4008($sp)
  lw $t1, -4008($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4012($sp)
  lw $t1, -4012($sp)
  li $t2, 0
  bne $t1, $t2, label1228
  b label1227
  label1227:
  li $t0, 1
  sw $t0, -4016($sp)
  b label1229
  label1228:
  li $t0, 0
  sw $t0, -4016($sp)
  label1229:
  lw $t1, -4004($sp)
  lw $t2, -4016($sp)
  bne $t1, $t2, label1219
  b label1220
  label1219:
  li $t0, 1
  sw $t0, -4020($sp)
  b label1230
  label1220:
  li $t0, 0
  sw $t0, -4020($sp)
  label1230:
  lw $t1, -4020($sp)
  lw $t2, -484($sp)
  blt $t1, $t2, label1217
  b label1218
  label1217:
  li $t0, 1
  sw $t0, -4024($sp)
  b label1231
  label1218:
  li $t0, 0
  sw $t0, -4024($sp)
  label1231:
  lw $t1, -4024($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label1216
label1215:
  li $t1, 0
  lw $t2, -768($sp)
  sub $t0, $t1, $t2
  sw $t0, -4028($sp)
  lw $t1, -4028($sp)
  li $t2, 0
  bne $t1, $t2, label1233
  b label1232
  label1232:
  li $t0, 1
  sw $t0, -4032($sp)
  b label1234
  label1233:
  li $t0, 0
  sw $t0, -4032($sp)
  label1234:
label1216:
label1206:
label1235:
  li $t1, 34357
  li $t2, 21329
  beq $t1, $t2, label1238
  b label1239
  label1238:
  li $t0, 1
  sw $t0, -4036($sp)
  b label1240
  label1239:
  li $t0, 0
  sw $t0, -4036($sp)
  label1240:
  lw $t1, -4036($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4040($sp)
  lw $t1, -108($sp)
  lw $t2, -4040($sp)
  add $t0, $t1, $t2
  sw $t0, -4044($sp)
  lw $t1, -4044($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1236
  b label1237
label1236:
  lw $t1, -504($sp)
  li $t2, 12044
  mulo $t0, $t1, $t2
  sw $t0, -4048($sp)
  lw $t1, -4048($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4052($sp)
  lw $t1, -68($sp)
  lw $t2, -4052($sp)
  add $t0, $t1, $t2
  sw $t0, -4056($sp)
  lw $t1, -616($sp)
  lw $t2, -496($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4060($sp)
  lw $t1, -4056($sp)
  lw $t1, 0($t1)
  lw $t2, -4060($sp)
  add $t0, $t1, $t2
  sw $t0, -4064($sp)
  li $t1, 0
  li $t2, 36607
  sub $t0, $t1, $t2
  sw $t0, -4068($sp)
  lw $t1, -4068($sp)
  li $t2, 0
  bne $t1, $t2, label1242
  b label1241
  label1241:
  li $t0, 1
  sw $t0, -4072($sp)
  b label1243
  label1242:
  li $t0, 0
  sw $t0, -4072($sp)
  label1243:
  lw $t1, -4064($sp)
  lw $t2, -4072($sp)
  add $t0, $t1, $t2
  sw $t0, -4076($sp)
  b label1235
label1237:
  li $t1, 45171
  li $t2, 11456
  mulo $t0, $t1, $t2
  sw $t0, -4080($sp)
  li $t1, 17520
  lw $t2, -4080($sp)
  ble $t1, $t2, label1244
  b label1245
label1244:
  sub $t0, $sp, 4108
  sw $t0, -4088($sp)
  li $t1, 17502
  move $t0, $t1
  sw $t0, -4112($sp)
  li $t1, 27231
  move $t0, $t1
  sw $t0, -4116($sp)
  li $t1, 15202
  move $t0, $t1
  sw $t0, -4120($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4124($sp)
  lw $t1, -4088($sp)
  lw $t2, -4124($sp)
  add $t0, $t1, $t2
  sw $t0, -4128($sp)
  li $t1, 56421
  move $t0, $t1
  lw $s0, -4128($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4132($sp)
  lw $t1, -4088($sp)
  lw $t2, -4132($sp)
  add $t0, $t1, $t2
  sw $t0, -4136($sp)
  li $t1, 16344
  move $t0, $t1
  lw $s0, -4136($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4140($sp)
  lw $t1, -4088($sp)
  lw $t2, -4140($sp)
  add $t0, $t1, $t2
  sw $t0, -4144($sp)
  li $t1, 9825
  move $t0, $t1
  lw $s0, -4144($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4148($sp)
  lw $t1, -4088($sp)
  lw $t2, -4148($sp)
  add $t0, $t1, $t2
  sw $t0, -4152($sp)
  li $t1, 39985
  move $t0, $t1
  lw $s0, -4152($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4156($sp)
  lw $t1, -4088($sp)
  lw $t2, -4156($sp)
  add $t0, $t1, $t2
  sw $t0, -4160($sp)
  li $t1, 43023
  move $t0, $t1
  lw $s0, -4160($sp)
  sw $t0, 0($s0)
  li $t1, 55992
  move $t0, $t1
  sw $t0, -4164($sp)
  li $t1, 25402
  move $t0, $t1
  sw $t0, -4168($sp)
  lw $t1, -4112($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4172($sp)
  lw $t1, -4116($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4176($sp)
  lw $t1, -4120($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4180($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4184($sp)
  lw $t1, -4088($sp)
  lw $t2, -4184($sp)
  add $t0, $t1, $t2
  sw $t0, -4188($sp)
  lw $t1, -4188($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4192($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4196($sp)
  lw $t1, -4088($sp)
  lw $t2, -4196($sp)
  add $t0, $t1, $t2
  sw $t0, -4200($sp)
  lw $t1, -4200($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4204($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4208($sp)
  lw $t1, -4088($sp)
  lw $t2, -4208($sp)
  add $t0, $t1, $t2
  sw $t0, -4212($sp)
  lw $t1, -4212($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4216($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4220($sp)
  lw $t1, -4088($sp)
  lw $t2, -4220($sp)
  add $t0, $t1, $t2
  sw $t0, -4224($sp)
  lw $t1, -4224($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4228($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4232($sp)
  lw $t1, -4088($sp)
  lw $t2, -4232($sp)
  add $t0, $t1, $t2
  sw $t0, -4236($sp)
  lw $t1, -4236($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4240($sp)
  lw $t1, -4164($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4244($sp)
  lw $t1, -4168($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4248($sp)
  lw $t1, -488($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4252($sp)
  lw $t1, -276($sp)
  lw $t2, -4252($sp)
  add $t0, $t1, $t2
  sw $t0, -4256($sp)
  li $t1, 42178
  lw $t2, -4256($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -4260($sp)
  li $t1, 0
  lw $t2, -352($sp)
  sub $t0, $t1, $t2
  sw $t0, -4264($sp)
  lw $t1, -4264($sp)
  li $t2, 21403
  div $t0, $t1, $t2
  sw $t0, -4268($sp)
  lw $t1, -4260($sp)
  lw $t2, -4268($sp)
  blt $t1, $t2, label1249
  b label1248
label1249:
  lw $t1, -12($sp)
  lw $t2, -1040($sp)
  add $t0, $t1, $t2
  sw $t0, -4272($sp)
  lw $t1, -356($sp)
  li $t2, 12691
  mulo $t0, $t1, $t2
  sw $t0, -4276($sp)
  lw $t1, -4276($sp)
  lw $t2, -4116($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4280($sp)
  li $t1, 0
  lw $t2, -396($sp)
  sub $t0, $t1, $t2
  sw $t0, -4284($sp)
  lw $t1, -4284($sp)
  sw $t1, -6228($sp)
  lw $t1, -4280($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4288($sp)
  lw $t1, -4272($sp)
  lw $t2, -4288($sp)
  beq $t1, $t2, label1247
  b label1248
  label1247:
  li $t0, 1
  sw $t0, -4292($sp)
  b label1250
  label1248:
  li $t0, 0
  sw $t0, -4292($sp)
  label1250:
  lw $t1, -4292($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  li $t1, 49094
  li $t2, 0
  bne $t1, $t2, label1256
  b label1255
  label1255:
  li $t0, 1
  sw $t0, -4296($sp)
  b label1257
  label1256:
  li $t0, 0
  sw $t0, -4296($sp)
  label1257:
  lw $t1, -4296($sp)
  li $t2, 63305
  mulo $t0, $t1, $t2
  sw $t0, -4300($sp)
  li $t1, 0
  li $t2, 30651
  sub $t0, $t1, $t2
  sw $t0, -4304($sp)
  lw $t1, -4304($sp)
  sw $t1, -6228($sp)
  lw $t1, -4300($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4308($sp)
  li $t1, 0
  lw $t2, -4308($sp)
  sub $t0, $t1, $t2
  sw $t0, -4312($sp)
  lw $t1, -4312($sp)
  li $t2, 0
  bne $t1, $t2, label1254
  b label1253
  label1253:
  li $t0, 1
  sw $t0, -4316($sp)
  b label1258
  label1254:
  li $t0, 0
  sw $t0, -4316($sp)
  label1258:
  li $t1, 0
  li $t2, 16567
  sub $t0, $t1, $t2
  sw $t0, -4320($sp)
  lw $t1, -4316($sp)
  lw $t2, -4320($sp)
  sub $t0, $t1, $t2
  sw $t0, -4324($sp)
  lw $t1, -4324($sp)
  li $t2, 0
  bne $t1, $t2, label1251
  b label1252
label1251:
  li $t1, 54669
  move $t0, $t1
  sw $t0, -4328($sp)
  li $t1, 42188
  move $t0, $t1
  sw $t0, -4332($sp)
  li $t1, 104
  move $t0, $t1
  sw $t0, -4336($sp)
  lw $t1, -4328($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4340($sp)
  lw $t1, -4332($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4344($sp)
  lw $t1, -4336($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4348($sp)
  lw $t1, -4120($sp)
  li $t2, 0
  bne $t1, $t2, label1262
  b label1261
  label1261:
  li $t0, 1
  sw $t0, -4352($sp)
  b label1263
  label1262:
  li $t0, 0
  sw $t0, -4352($sp)
  label1263:
  lw $t1, -4352($sp)
  lw $t2, -904($sp)
  div $t0, $t1, $t2
  sw $t0, -4356($sp)
  lw $t1, -548($sp)
  li $t2, 60063
  mulo $t0, $t1, $t2
  sw $t0, -4360($sp)
  lw $t1, -520($sp)
  li $t2, 0
  bne $t1, $t2, label1265
  b label1264
  label1264:
  li $t0, 1
  sw $t0, -4364($sp)
  b label1266
  label1265:
  li $t0, 0
  sw $t0, -4364($sp)
  label1266:
  lw $t1, -4364($sp)
  li $t2, 57075
  sub $t0, $t1, $t2
  sw $t0, -4368($sp)
  lw $t1, -340($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4372($sp)
  lw $t1, -248($sp)
  lw $t2, -4372($sp)
  add $t0, $t1, $t2
  sw $t0, -4376($sp)
  lw $t1, -4376($sp)
  lw $t1, 0($t1)
  li $t2, 23903
  add $t0, $t1, $t2
  sw $t0, -4380($sp)
  li $t1, 0
  li $t2, 28885
  sub $t0, $t1, $t2
  sw $t0, -4384($sp)
  lw $t1, -4384($sp)
  li $t2, 12868
  div $t0, $t1, $t2
  sw $t0, -4388($sp)
  lw $t1, -4388($sp)
  sw $t1, -6228($sp)
  lw $t1, -768($sp)
  sw $t1, -6232($sp)
  lw $t1, -4380($sp)
  sw $t1, -6236($sp)
  lw $t1, -4368($sp)
  sw $t1, -6240($sp)
  lw $t1, -4360($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4392($sp)
  lw $t1, -4356($sp)
  lw $t2, -4392($sp)
  div $t0, $t1, $t2
  sw $t0, -4396($sp)
  li $t1, 54599
  lw $t2, -4396($sp)
  bgt $t1, $t2, label1259
  b label1260
  label1259:
  li $t0, 1
  sw $t0, -4400($sp)
  b label1267
  label1260:
  li $t0, 0
  sw $t0, -4400($sp)
  label1267:
  lw $t1, -4400($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -4328($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4404($sp)
  lw $t1, -4332($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4408($sp)
  lw $t1, -4336($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4412($sp)
  lw $t1, -348($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -4328($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4416($sp)
  lw $t1, -4332($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4420($sp)
  lw $t1, -4336($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4424($sp)
  li $t1, 35947
  li $t2, 1
  mulo $t0, $t1, $t2
  sw $t0, -4428($sp)
  lw $t1, -4428($sp)
  li $t2, 30388
  ble $t1, $t2, label1270
  b label1271
  label1270:
  li $t0, 1
  sw $t0, -4432($sp)
  b label1272
  label1271:
  li $t0, 0
  sw $t0, -4432($sp)
  label1272:
  lw $t1, -1044($sp)
  lw $t2, -776($sp)
  bgt $t1, $t2, label1275
  b label1274
label1275:
  li $t1, 15582
  li $t2, 0
  bne $t1, $t2, label1273
  b label1274
  label1273:
  li $t0, 1
  sw $t0, -4436($sp)
  b label1276
  label1274:
  li $t0, 0
  sw $t0, -4436($sp)
  label1276:
  lw $t1, -1044($sp)
  li $t2, 11413
  mulo $t0, $t1, $t2
  sw $t0, -4440($sp)
  lw $t1, -4440($sp)
  li $t2, 47890
  beq $t1, $t2, label1277
  b label1278
  label1277:
  li $t0, 1
  sw $t0, -4444($sp)
  b label1279
  label1278:
  li $t0, 0
  sw $t0, -4444($sp)
  label1279:
  lw $t1, -4444($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4448($sp)
  lw $t1, -4448($sp)
  sw $t1, -6228($sp)
  lw $t1, -4436($sp)
  sw $t1, -6232($sp)
  lw $t1, -4432($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4452($sp)
  lw $t1, -920($sp)
  lw $t2, -4452($sp)
  beq $t1, $t2, label1268
  b label1269
  label1268:
  li $t0, 1
  sw $t0, -4456($sp)
  b label1280
  label1269:
  li $t0, 0
  sw $t0, -4456($sp)
  label1280:
  lw $t1, -4456($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1281:
  li $t1, 42813
  li $t2, 0
  bne $t1, $t2, label1283
  b label1282
label1282:
  b label1281
label1283:
label1284:
  li $t1, 0
  lw $t2, -544($sp)
  sub $t0, $t1, $t2
  sw $t0, -4460($sp)
  lw $t1, -1008($sp)
  lw $t2, -4460($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4464($sp)
  li $t1, 38775
  lw $t2, -1036($sp)
  bne $t1, $t2, label1291
  b label1290
label1291:
  lw $t1, -4328($sp)
  li $t2, 0
  bne $t1, $t2, label1289
  b label1290
  label1289:
  li $t0, 1
  sw $t0, -4468($sp)
  b label1292
  label1290:
  li $t0, 0
  sw $t0, -4468($sp)
  label1292:
  li $t1, 0
  lw $t2, -516($sp)
  sub $t0, $t1, $t2
  sw $t0, -4472($sp)
  lw $t1, -4472($sp)
  li $t2, 0
  bne $t1, $t2, label1295
  b label1297
label1297:
  lw $t1, -776($sp)
  li $t2, 0
  bne $t1, $t2, label1295
  b label1296
  label1295:
  li $t0, 1
  sw $t0, -4476($sp)
  b label1298
  label1296:
  li $t0, 0
  sw $t0, -4476($sp)
  label1298:
  li $t1, 0
  lw $t2, -360($sp)
  sub $t0, $t1, $t2
  sw $t0, -4480($sp)
  lw $t1, -4480($sp)
  li $t2, 59158
  div $t0, $t1, $t2
  sw $t0, -4484($sp)
  lw $t1, -4484($sp)
  sw $t1, -6228($sp)
  lw $t1, -4476($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_eZzKtHKigb
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4488($sp)
  lw $t1, -4488($sp)
  li $t2, 0
  bne $t1, $t2, label1294
  b label1293
  label1293:
  li $t0, 1
  sw $t0, -4492($sp)
  b label1299
  label1294:
  li $t0, 0
  sw $t0, -4492($sp)
  label1299:
  li $t1, 36440
  move $t0, $t1
  sw $t0, -364($sp)
  li $t1, 13225
  move $t0, $t1
  sw $t0, -388($sp)
  li $t1, 0
  li $t2, 36645
  sub $t0, $t1, $t2
  sw $t0, -4496($sp)
  lw $t1, -4496($sp)
  lw $t2, -1040($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4500($sp)
  lw $t1, -772($sp)
  li $t2, 0
  bne $t1, $t2, label1303
  b label1302
label1303:
  lw $t1, -372($sp)
  li $t2, 0
  bne $t1, $t2, label1300
  b label1302
label1302:
  lw $t1, -500($sp)
  li $t2, 0
  bne $t1, $t2, label1300
  b label1301
  label1300:
  li $t0, 1
  sw $t0, -4504($sp)
  b label1304
  label1301:
  li $t0, 0
  sw $t0, -4504($sp)
  label1304:
  li $t1, 26896
  li $t2, 0
  bne $t1, $t2, label1305
  b label1308
label1308:
  li $t1, 38627
  li $t2, 0
  bne $t1, $t2, label1305
  b label1307
label1307:
  lw $t1, -620($sp)
  li $t2, 0
  bne $t1, $t2, label1305
  b label1306
  label1305:
  li $t0, 1
  sw $t0, -4508($sp)
  b label1309
  label1306:
  li $t0, 0
  sw $t0, -4508($sp)
  label1309:
  li $t1, 0
  li $t2, 48300
  sub $t0, $t1, $t2
  sw $t0, -4512($sp)
  lw $t1, -4512($sp)
  li $t2, 1
  mulo $t0, $t1, $t2
  sw $t0, -4516($sp)
  lw $t1, -4516($sp)
  sw $t1, -6228($sp)
  li $t1, 13287
  sw $t1, -6232($sp)
  lw $t1, -4508($sp)
  sw $t1, -6236($sp)
  lw $t1, -4504($sp)
  sw $t1, -6240($sp)
  lw $t1, -4500($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4520($sp)
  li $t1, 0
  lw $t2, -4520($sp)
  sub $t0, $t1, $t2
  sw $t0, -4524($sp)
  lw $t1, -4524($sp)
  sw $t1, -6228($sp)
  lw $t1, -388($sp)
  sw $t1, -6232($sp)
  lw $t1, -364($sp)
  sw $t1, -6236($sp)
  lw $t1, -4492($sp)
  sw $t1, -6240($sp)
  lw $t1, -4468($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4528($sp)
  lw $t1, -4464($sp)
  lw $t2, -4528($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4532($sp)
  lw $t1, -4532($sp)
  lw $t2, -520($sp)
  bne $t1, $t2, label1287
  b label1288
  label1287:
  li $t0, 1
  sw $t0, -4536($sp)
  b label1310
  label1288:
  li $t0, 0
  sw $t0, -4536($sp)
  label1310:
  lw $t1, -4536($sp)
  li $t2, 62381
  ble $t1, $t2, label1285
  b label1286
label1285:
  lw $t1, -344($sp)
  lw $t2, -380($sp)
  add $t0, $t1, $t2
  sw $t0, -4540($sp)
  lw $t1, -4540($sp)
  lw $t2, -384($sp)
  bgt $t1, $t2, label1318
  b label1319
  label1318:
  li $t0, 1
  sw $t0, -4544($sp)
  b label1320
  label1319:
  li $t0, 0
  sw $t0, -4544($sp)
  label1320:
  lw $t1, -4544($sp)
  li $t2, 46069
  beq $t1, $t2, label1316
  b label1317
  label1316:
  li $t0, 1
  sw $t0, -4548($sp)
  b label1321
  label1317:
  li $t0, 0
  sw $t0, -4548($sp)
  label1321:
  lw $t1, -4548($sp)
  li $t2, 16433
  bgt $t1, $t2, label1314
  b label1315
  label1314:
  li $t0, 1
  sw $t0, -4552($sp)
  b label1322
  label1315:
  li $t0, 0
  sw $t0, -4552($sp)
  label1322:
  lw $t1, -4552($sp)
  li $t2, 13412
  beq $t1, $t2, label1311
  b label1313
label1313:
  li $t1, 35202
  li $t2, 0
  bne $t1, $t2, label1325
  b label1324
  label1324:
  li $t0, 1
  sw $t0, -4556($sp)
  b label1326
  label1325:
  li $t0, 0
  sw $t0, -4556($sp)
  label1326:
  lw $t1, -4556($sp)
  lw $t2, -4332($sp)
  div $t0, $t1, $t2
  sw $t0, -4560($sp)
  lw $t1, -4560($sp)
  li $t2, 0
  bne $t1, $t2, label1323
  b label1312
label1323:
  lw $t1, -4336($sp)
  li $t2, 58621
  div $t0, $t1, $t2
  sw $t0, -4564($sp)
  lw $t1, -4564($sp)
  li $t2, 0
  bne $t1, $t2, label1311
  b label1312
  label1311:
  li $t0, 1
  sw $t0, -4568($sp)
  b label1327
  label1312:
  li $t0, 0
  sw $t0, -4568($sp)
  label1327:
  b label1284
label1286:
label1252:
  li $t1, 24266
  li $t2, 0
  bne $t1, $t2, label1328
  b label1331
label1331:
  lw $t1, -652($sp)
  li $t2, 0
  bne $t1, $t2, label1328
  b label1330
label1330:
  li $t1, 53149
  li $t2, 0
  bne $t1, $t2, label1328
  b label1329
  label1328:
  li $t0, 1
  sw $t0, -4572($sp)
  b label1332
  label1329:
  li $t0, 0
  sw $t0, -4572($sp)
  label1332:
  lw $t1, -4($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4576($sp)
  lw $t1, -264($sp)
  lw $t2, -4576($sp)
  add $t0, $t1, $t2
  sw $t0, -4580($sp)
  lw $t1, -4580($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1335
  b label1334
label1335:
  li $t1, 5055
  li $t2, 0
  bne $t1, $t2, label1333
  b label1334
  label1333:
  li $t0, 1
  sw $t0, -4584($sp)
  b label1336
  label1334:
  li $t0, 0
  sw $t0, -4584($sp)
  label1336:
  li $t1, 48169
  li $t2, 16498
  div $t0, $t1, $t2
  sw $t0, -4588($sp)
  lw $t1, -4588($sp)
  li $t2, 0
  bne $t1, $t2, label1340
  b label1342
label1342:
  lw $t1, -908($sp)
  li $t2, 0
  bne $t1, $t2, label1340
  b label1341
  label1340:
  li $t0, 1
  sw $t0, -4592($sp)
  b label1343
  label1341:
  li $t0, 0
  sw $t0, -4592($sp)
  label1343:
  lw $t1, -4112($sp)
  li $t2, 17923
  add $t0, $t1, $t2
  sw $t0, -4596($sp)
  lw $t1, -4596($sp)
  li $t2, 18580
  beq $t1, $t2, label1344
  b label1345
  label1344:
  li $t0, 1
  sw $t0, -4600($sp)
  b label1346
  label1345:
  li $t0, 0
  sw $t0, -4600($sp)
  label1346:
  lw $t1, -4600($sp)
  sw $t1, -6228($sp)
  lw $t1, -4592($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_eZzKtHKigb
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4604($sp)
  lw $t1, -4604($sp)
  li $t2, 0
  bne $t1, $t2, label1339
  b label1338
label1339:
  lw $t1, -664($sp)
  li $t2, 0
  bne $t1, $t2, label1337
  b label1338
  label1337:
  li $t0, 1
  sw $t0, -4608($sp)
  b label1347
  label1338:
  li $t0, 0
  sw $t0, -4608($sp)
  label1347:
  li $t1, 16454
  sw $t1, -6228($sp)
  lw $t1, -4608($sp)
  sw $t1, -6232($sp)
  lw $t1, -4584($sp)
  sw $t1, -6236($sp)
  lw $t1, -4572($sp)
  sw $t1, -6240($sp)
  lw $t1, -708($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4612($sp)
  li $t1, 13516
  lw $t2, -4612($sp)
  add $t0, $t1, $t2
  sw $t0, -4616($sp)
  lw $t1, -4112($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4620($sp)
  lw $t1, -4116($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4624($sp)
  lw $t1, -4120($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4628($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4632($sp)
  lw $t1, -4088($sp)
  lw $t2, -4632($sp)
  add $t0, $t1, $t2
  sw $t0, -4636($sp)
  lw $t1, -4636($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4640($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4644($sp)
  lw $t1, -4088($sp)
  lw $t2, -4644($sp)
  add $t0, $t1, $t2
  sw $t0, -4648($sp)
  lw $t1, -4648($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4652($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4656($sp)
  lw $t1, -4088($sp)
  lw $t2, -4656($sp)
  add $t0, $t1, $t2
  sw $t0, -4660($sp)
  lw $t1, -4660($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4664($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4668($sp)
  lw $t1, -4088($sp)
  lw $t2, -4668($sp)
  add $t0, $t1, $t2
  sw $t0, -4672($sp)
  lw $t1, -4672($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4676($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4680($sp)
  lw $t1, -4088($sp)
  lw $t2, -4680($sp)
  add $t0, $t1, $t2
  sw $t0, -4684($sp)
  lw $t1, -4684($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4688($sp)
  lw $t1, -4164($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4692($sp)
  lw $t1, -4168($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -4696($sp)
  lw $t1, -400($sp)
  li $t2, 0
  bne $t1, $t2, label1350
  b label1349
label1350:
  lw $t1, -772($sp)
  li $t2, 0
  bne $t1, $t2, label1348
  b label1349
  label1348:
  li $t0, 1
  sw $t0, -4700($sp)
  b label1351
  label1349:
  li $t0, 0
  sw $t0, -4700($sp)
  label1351:
  lw $t1, -4700($sp)
  move $t0, $t1
  sw $t0, -396($sp)
  lw $t1, -396($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4704($sp)
  lw $t1, -4088($sp)
  lw $t2, -4704($sp)
  add $t0, $t1, $t2
  sw $t0, -4708($sp)
  lw $t1, -4708($sp)
  lw $t1, 0($t1)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  li $t1, 48311
  li $t2, 0
  bne $t1, $t2, label1356
  b label1355
  label1355:
  li $t0, 1
  sw $t0, -4712($sp)
  b label1357
  label1356:
  li $t0, 0
  sw $t0, -4712($sp)
  label1357:
  lw $t1, -4712($sp)
  lw $t2, -776($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4716($sp)
  li $t1, 34162
  li $t2, 0
  bne $t1, $t2, label1358
  b label1360
label1360:
  lw $t1, -4168($sp)
  li $t2, 0
  bne $t1, $t2, label1358
  b label1359
  label1358:
  li $t0, 1
  sw $t0, -4720($sp)
  b label1361
  label1359:
  li $t0, 0
  sw $t0, -4720($sp)
  label1361:
  lw $t1, -4720($sp)
  sw $t1, -6228($sp)
  lw $t1, -4716($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4724($sp)
  li $t1, 0
  lw $t2, -4724($sp)
  sub $t0, $t1, $t2
  sw $t0, -4728($sp)
  lw $t1, -4728($sp)
  li $t2, 0
  bne $t1, $t2, label1352
  b label1353
label1352:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4732($sp)
  lw $t1, -324($sp)
  lw $t2, -4732($sp)
  add $t0, $t1, $t2
  sw $t0, -4736($sp)
  lw $t1, -4736($sp)
  lw $t1, 0($t1)
  li $t2, 11440
  sub $t0, $t1, $t2
  sw $t0, -4740($sp)
  li $t1, 54483
  li $t2, 0
  bne $t1, $t2, label1366
  b label1365
  label1365:
  li $t0, 1
  sw $t0, -4744($sp)
  b label1367
  label1366:
  li $t0, 0
  sw $t0, -4744($sp)
  label1367:
  li $t1, 0
  lw $t2, -4744($sp)
  sub $t0, $t1, $t2
  sw $t0, -4748($sp)
  li $t1, 0
  lw $t2, -4748($sp)
  sub $t0, $t1, $t2
  sw $t0, -4752($sp)
  lw $t1, -4740($sp)
  lw $t2, -4752($sp)
  add $t0, $t1, $t2
  sw $t0, -4756($sp)
  lw $t1, -4756($sp)
  li $t2, 0
  bne $t1, $t2, label1362
  b label1363
label1362:
label1368:
  li $t1, 0
  li $t2, 3905
  sub $t0, $t1, $t2
  sw $t0, -4760($sp)
  li $t1, 0
  lw $t2, -4760($sp)
  sub $t0, $t1, $t2
  sw $t0, -4764($sp)
  lw $t1, -4764($sp)
  lw $t2, -400($sp)
  sub $t0, $t1, $t2
  sw $t0, -4768($sp)
  li $t1, 5062
  li $t2, 25387
  mulo $t0, $t1, $t2
  sw $t0, -4772($sp)
  lw $t1, -4768($sp)
  lw $t2, -4772($sp)
  add $t0, $t1, $t2
  sw $t0, -4776($sp)
  lw $t1, -4776($sp)
  li $t2, 0
  bne $t1, $t2, label1369
  b label1371
label1371:
  lw $t1, -488($sp)
  li $t2, 17130
  div $t0, $t1, $t2
  sw $t0, -4780($sp)
  lw $t1, -4780($sp)
  lw $t2, -700($sp)
  bne $t1, $t2, label1372
  b label1373
  label1372:
  li $t0, 1
  sw $t0, -4784($sp)
  b label1374
  label1373:
  li $t0, 0
  sw $t0, -4784($sp)
  label1374:
  lw $t1, -700($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4788($sp)
  lw $t1, -200($sp)
  lw $t2, -4788($sp)
  add $t0, $t1, $t2
  sw $t0, -4792($sp)
  lw $t1, -4784($sp)
  lw $t2, -4792($sp)
  lw $t2, 0($t2)
  beq $t1, $t2, label1369
  b label1370
label1369:
  li $t1, 41707
  lw $t2, -660($sp)
  add $t0, $t1, $t2
  sw $t0, -4796($sp)
  lw $t1, -4796($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4800($sp)
  lw $t1, -152($sp)
  lw $t2, -4800($sp)
  add $t0, $t1, $t2
  sw $t0, -4804($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4808($sp)
  lw $t1, -108($sp)
  lw $t2, -4808($sp)
  add $t0, $t1, $t2
  sw $t0, -4812($sp)
  lw $t1, -4812($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1376
  b label1375
  label1375:
  li $t0, 1
  sw $t0, -4816($sp)
  b label1377
  label1376:
  li $t0, 0
  sw $t0, -4816($sp)
  label1377:
  lw $t1, -4816($sp)
  li $t2, 54994
  div $t0, $t1, $t2
  sw $t0, -4820($sp)
  lw $t1, -4804($sp)
  lw $t1, 0($t1)
  lw $t2, -4820($sp)
  add $t0, $t1, $t2
  sw $t0, -4824($sp)
  b label1368
label1370:
  b label1364
label1363:
  li $t1, 35048
  li $t2, 41539
  sub $t0, $t1, $t2
  sw $t0, -4828($sp)
  lw $t1, -4828($sp)
  li $t2, 51839
  beq $t1, $t2, label1380
  b label1381
  label1380:
  li $t0, 1
  sw $t0, -4832($sp)
  b label1382
  label1381:
  li $t0, 0
  sw $t0, -4832($sp)
  label1382:
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4836($sp)
  lw $t1, -20($sp)
  lw $t2, -4836($sp)
  add $t0, $t1, $t2
  sw $t0, -4840($sp)
  lw $t1, -1052($sp)
  lw $t2, -488($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4844($sp)
  lw $t1, -4844($sp)
  lw $t2, -372($sp)
  beq $t1, $t2, label1383
  b label1384
  label1383:
  li $t0, 1
  sw $t0, -4848($sp)
  b label1385
  label1384:
  li $t0, 0
  sw $t0, -4848($sp)
  label1385:
  lw $t1, -916($sp)
  li $t2, 0
  bne $t1, $t2, label1389
  b label1388
  label1388:
  li $t0, 1
  sw $t0, -4852($sp)
  b label1390
  label1389:
  li $t0, 0
  sw $t0, -4852($sp)
  label1390:
  lw $t1, -4852($sp)
  lw $t2, -1044($sp)
  blt $t1, $t2, label1386
  b label1387
  label1386:
  li $t0, 1
  sw $t0, -4856($sp)
  b label1391
  label1387:
  li $t0, 0
  sw $t0, -4856($sp)
  label1391:
  lw $t1, -876($sp)
  li $t2, 0
  bne $t1, $t2, label1393
  b label1392
  label1392:
  li $t0, 1
  sw $t0, -4860($sp)
  b label1394
  label1393:
  li $t0, 0
  sw $t0, -4860($sp)
  label1394:
  li $t1, 0
  lw $t2, -4860($sp)
  sub $t0, $t1, $t2
  sw $t0, -4864($sp)
  lw $t1, -1048($sp)
  lw $t2, -396($sp)
  ble $t1, $t2, label1397
  b label1396
label1397:
  li $t1, 65251
  li $t2, 0
  bne $t1, $t2, label1395
  b label1396
  label1395:
  li $t0, 1
  sw $t0, -4868($sp)
  b label1398
  label1396:
  li $t0, 0
  sw $t0, -4868($sp)
  label1398:
  lw $t1, -4868($sp)
  sw $t1, -6228($sp)
  lw $t1, -4864($sp)
  sw $t1, -6232($sp)
  lw $t1, -4856($sp)
  sw $t1, -6236($sp)
  lw $t1, -4848($sp)
  sw $t1, -6240($sp)
  lw $t1, -4840($sp)
  lw $t1, 0($t1)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4872($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4876($sp)
  lw $t1, -184($sp)
  lw $t2, -4876($sp)
  add $t0, $t1, $t2
  sw $t0, -4880($sp)
  lw $t1, -4880($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1400
  b label1399
  label1399:
  li $t0, 1
  sw $t0, -4884($sp)
  b label1401
  label1400:
  li $t0, 0
  sw $t0, -4884($sp)
  label1401:
  lw $t1, -4884($sp)
  sw $t1, -6228($sp)
  lw $t1, -4872($sp)
  sw $t1, -6232($sp)
  lw $t1, -4832($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4888($sp)
  li $t1, 0
  lw $t2, -4888($sp)
  sub $t0, $t1, $t2
  sw $t0, -4892($sp)
  li $t1, 0
  lw $t2, -4892($sp)
  sub $t0, $t1, $t2
  sw $t0, -4896($sp)
  li $t1, 0
  li $t2, 13231
  sub $t0, $t1, $t2
  sw $t0, -4900($sp)
  lw $t1, -4900($sp)
  li $t2, 0
  bne $t1, $t2, label1403
  b label1402
  label1402:
  li $t0, 1
  sw $t0, -4904($sp)
  b label1404
  label1403:
  li $t0, 0
  sw $t0, -4904($sp)
  label1404:
  lw $t1, -4896($sp)
  lw $t2, -4904($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4908($sp)
  lw $t1, -4908($sp)
  lw $t2, -648($sp)
  bge $t1, $t2, label1378
  b label1379
  label1378:
  li $t0, 1
  sw $t0, -4912($sp)
  b label1405
  label1379:
  li $t0, 0
  sw $t0, -4912($sp)
  label1405:
  lw $t1, -4912($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1364:
  b label1354
label1353:
  li $t1, 38671
  lw $t2, -1044($sp)
  mulo $t0, $t1, $t2
  sw $t0, -4916($sp)
  li $t1, 9513
  lw $t2, -4916($sp)
  bne $t1, $t2, label1409
  b label1410
  label1409:
  li $t0, 1
  sw $t0, -4920($sp)
  b label1411
  label1410:
  li $t0, 0
  sw $t0, -4920($sp)
  label1411:
  lw $t1, -4920($sp)
  move $t0, $t1
  sw $t0, -708($sp)
  lw $t1, -708($sp)
  li $t2, 0
  bne $t1, $t2, label1406
  b label1407
label1406:
  li $t1, 18287
  move $t0, $t1
  sw $t0, -4924($sp)
  li $t1, 57682
  move $t0, $t1
  sw $t0, -4928($sp)
  li $t1, 55169
  move $t0, $t1
  sw $t0, -4932($sp)
  li $t1, 36210
  move $t0, $t1
  sw $t0, -4936($sp)
  li $t1, 10726
  move $t0, $t1
  sw $t0, -4940($sp)
label1412:
  li $t1, 0
  lw $t2, -1036($sp)
  sub $t0, $t1, $t2
  sw $t0, -4944($sp)
  lw $t1, -4944($sp)
  li $t2, 0
  bne $t1, $t2, label1418
  b label1417
  label1417:
  li $t0, 1
  sw $t0, -4948($sp)
  b label1419
  label1418:
  li $t0, 0
  sw $t0, -4948($sp)
  label1419:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4952($sp)
  li $t1, 0
  lw $t2, -4952($sp)
  sub $t0, $t1, $t2
  sw $t0, -4956($sp)
  li $t1, 6088
  move $t0, $t1
  sw $t0, -396($sp)
  li $t1, 0
  lw $t2, -768($sp)
  sub $t0, $t1, $t2
  sw $t0, -4960($sp)
  lw $t1, -528($sp)
  lw $t2, -548($sp)
  div $t0, $t1, $t2
  sw $t0, -4964($sp)
  lw $t1, -1052($sp)
  lw $t2, -484($sp)
  sub $t0, $t1, $t2
  sw $t0, -4968($sp)
  lw $t1, -4968($sp)
  li $t2, 18986
  bne $t1, $t2, label1422
  b label1423
  label1422:
  li $t0, 1
  sw $t0, -4972($sp)
  b label1424
  label1423:
  li $t0, 0
  sw $t0, -4972($sp)
  label1424:
  lw $t1, -4972($sp)
  sw $t1, -6228($sp)
  lw $t1, -4964($sp)
  sw $t1, -6232($sp)
  lw $t1, -4960($sp)
  sw $t1, -6236($sp)
  lw $t1, -396($sp)
  sw $t1, -6240($sp)
  lw $t1, -4956($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_cr3Ra
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4976($sp)
  lw $t1, -4976($sp)
  li $t2, 0
  bne $t1, $t2, label1421
  b label1420
  label1420:
  li $t0, 1
  sw $t0, -4980($sp)
  b label1425
  label1421:
  li $t0, 0
  sw $t0, -4980($sp)
  label1425:
  lw $t1, -516($sp)
  lw $t2, -4932($sp)
  bne $t1, $t2, label1426
  b label1427
  label1426:
  li $t0, 1
  sw $t0, -4984($sp)
  b label1428
  label1427:
  li $t0, 0
  sw $t0, -4984($sp)
  label1428:
  lw $t1, -4984($sp)
  sw $t1, -6228($sp)
  lw $t1, -4980($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -4988($sp)
  lw $t1, -4948($sp)
  lw $t2, -4988($sp)
  bge $t1, $t2, label1415
  b label1416
  label1415:
  li $t0, 1
  sw $t0, -4992($sp)
  b label1429
  label1416:
  li $t0, 0
  sw $t0, -4992($sp)
  label1429:
  lw $t1, -4992($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -4996($sp)
  lw $t1, -248($sp)
  lw $t2, -4996($sp)
  add $t0, $t1, $t2
  sw $t0, -5000($sp)
  lw $t1, -5000($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1413
  b label1414
label1413:
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5004($sp)
  lw $t1, -68($sp)
  lw $t2, -5004($sp)
  add $t0, $t1, $t2
  sw $t0, -5008($sp)
  lw $t1, -5008($sp)
  lw $t1, 0($t1)
  lw $t2, -4924($sp)
  bne $t1, $t2, label1430
  b label1432
label1432:
  li $t1, 49652
  li $t2, 56329
  blt $t1, $t2, label1430
  b label1431
  label1430:
  li $t0, 1
  sw $t0, -5012($sp)
  b label1433
  label1431:
  li $t0, 0
  sw $t0, -5012($sp)
  label1433:
  lw $t1, -5012($sp)
  move $t0, $t1
  sw $t0, -4($sp)
  b label1412
label1414:
  li $t1, 22902
  li $t2, 53557
  div $t0, $t1, $t2
  sw $t0, -5016($sp)
  lw $t1, -5016($sp)
  li $t2, 61391
  mulo $t0, $t1, $t2
  sw $t0, -5020($sp)
  lw $t1, -4120($sp)
  li $t2, 0
  bne $t1, $t2, label1439
  b label1438
  label1438:
  li $t0, 1
  sw $t0, -5024($sp)
  b label1440
  label1439:
  li $t0, 0
  sw $t0, -5024($sp)
  label1440:
  lw $t1, -5020($sp)
  lw $t2, -5024($sp)
  div $t0, $t1, $t2
  sw $t0, -5028($sp)
  lw $t1, -5028($sp)
  li $t2, 0
  bne $t1, $t2, label1437
  b label1436
label1437:
  lw $t1, -616($sp)
  lw $t2, -876($sp)
  ble $t1, $t2, label1441
  b label1442
  label1441:
  li $t0, 1
  sw $t0, -5032($sp)
  b label1443
  label1442:
  li $t0, 0
  sw $t0, -5032($sp)
  label1443:
  lw $t1, -5032($sp)
  sw $t1, -6228($sp)
  sub $sp, $sp, 6224
  jal func_id_HusWF
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5036($sp)
  lw $t1, -5036($sp)
  li $t2, 48290
  sub $t0, $t1, $t2
  sw $t0, -5040($sp)
  lw $t1, -5040($sp)
  li $t2, 0
  bne $t1, $t2, label1434
  b label1436
label1436:
  li $t1, 0
  li $t2, 5152
  sub $t0, $t1, $t2
  sw $t0, -5044($sp)
  li $t1, 0
  lw $t2, -5044($sp)
  sub $t0, $t1, $t2
  sw $t0, -5048($sp)
  lw $t1, -5048($sp)
  li $t2, 0
  bne $t1, $t2, label1435
  b label1434
label1434:
  lw $t1, -712($sp)
  li $t2, 37562
  bge $t1, $t2, label1446
  b label1447
  label1446:
  li $t0, 1
  sw $t0, -5052($sp)
  b label1448
  label1447:
  li $t0, 0
  sw $t0, -5052($sp)
  label1448:
  li $t1, 35038
  li $t2, 60909
  add $t0, $t1, $t2
  sw $t0, -5056($sp)
  lw $t1, -5052($sp)
  lw $t2, -5056($sp)
  bne $t1, $t2, label1444
  b label1445
  label1444:
  li $t0, 1
  sw $t0, -5060($sp)
  b label1449
  label1445:
  li $t0, 0
  sw $t0, -5060($sp)
  label1449:
  lw $t1, -5060($sp)
  move $t0, $t1
  sw $t0, -4940($sp)
label1435:
  li $t1, 0
  lw $t2, -536($sp)
  sub $t0, $t1, $t2
  sw $t0, -5064($sp)
  lw $t1, -5064($sp)
  li $t2, 0
  bne $t1, $t2, label1453
  b label1454
  label1453:
  li $t0, 1
  sw $t0, -5068($sp)
  b label1455
  label1454:
  li $t0, 0
  sw $t0, -5068($sp)
  label1455:
  lw $t1, -4928($sp)
  lw $t2, -492($sp)
  mulo $t0, $t1, $t2
  sw $t0, -5072($sp)
  lw $t1, -5072($sp)
  lw $t2, -4168($sp)
  mulo $t0, $t1, $t2
  sw $t0, -5076($sp)
  lw $t1, -5068($sp)
  lw $t2, -5076($sp)
  add $t0, $t1, $t2
  sw $t0, -5080($sp)
  li $t1, 0
  lw $t2, -664($sp)
  sub $t0, $t1, $t2
  sw $t0, -5084($sp)
  lw $t1, -5084($sp)
  li $t2, 0
  bne $t1, $t2, label1457
  b label1456
  label1456:
  li $t0, 1
  sw $t0, -5088($sp)
  b label1458
  label1457:
  li $t0, 0
  sw $t0, -5088($sp)
  label1458:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5092($sp)
  li $t1, 0
  lw $t2, -5092($sp)
  sub $t0, $t1, $t2
  sw $t0, -5096($sp)
  lw $t1, -368($sp)
  lw $t2, -512($sp)
  beq $t1, $t2, label1459
  b label1460
  label1459:
  li $t0, 1
  sw $t0, -5100($sp)
  b label1461
  label1460:
  li $t0, 0
  sw $t0, -5100($sp)
  label1461:
  li $t1, 27020
  li $t2, 4550
  add $t0, $t1, $t2
  sw $t0, -5104($sp)
  lw $t1, -5104($sp)
  li $t2, 36913
  beq $t1, $t2, label1462
  b label1463
  label1462:
  li $t0, 1
  sw $t0, -5108($sp)
  b label1464
  label1463:
  li $t0, 0
  sw $t0, -5108($sp)
  label1464:
  li $t1, 13323
  li $t2, 20131
  div $t0, $t1, $t2
  sw $t0, -5112($sp)
  lw $t1, -5112($sp)
  li $t2, 29350
  mulo $t0, $t1, $t2
  sw $t0, -5116($sp)
  lw $t1, -5116($sp)
  sw $t1, -6228($sp)
  lw $t1, -5108($sp)
  sw $t1, -6232($sp)
  lw $t1, -5100($sp)
  sw $t1, -6236($sp)
  lw $t1, -5096($sp)
  sw $t1, -6240($sp)
  lw $t1, -5088($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5120($sp)
  lw $t1, -5080($sp)
  lw $t2, -5120($sp)
  bne $t1, $t2, label1450
  b label1451
label1450:
  lw $t1, -924($sp)
  move $t0, $t1
  sw $t0, -4936($sp)
  b label1452
label1451:
  li $t1, 0
  li $t2, 13038
  sub $t0, $t1, $t2
  sw $t0, -5124($sp)
  li $t1, 5378
  move $t0, $t1
  sw $t0, -908($sp)
  lw $t1, -348($sp)
  lw $t2, -360($sp)
  sub $t0, $t1, $t2
  sw $t0, -5128($sp)
  lw $t1, -5128($sp)
  li $t2, 0
  bne $t1, $t2, label1469
  b label1468
label1469:
  li $t1, 14872
  li $t2, 0
  bne $t1, $t2, label1467
  b label1468
  label1467:
  li $t0, 1
  sw $t0, -5132($sp)
  b label1470
  label1468:
  li $t0, 0
  sw $t0, -5132($sp)
  label1470:
  li $t1, 26269
  sw $t1, -6228($sp)
  lw $t1, -5132($sp)
  sw $t1, -6232($sp)
  lw $t1, -908($sp)
  sw $t1, -6236($sp)
  sub $sp, $sp, 6224
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5136($sp)
  lw $t1, -5124($sp)
  lw $t2, -5136($sp)
  div $t0, $t1, $t2
  sw $t0, -5140($sp)
  lw $t1, -5140($sp)
  li $t2, 14892
  ble $t1, $t2, label1465
  b label1466
  label1465:
  li $t0, 1
  sw $t0, -5144($sp)
  b label1471
  label1466:
  li $t0, 0
  sw $t0, -5144($sp)
  label1471:
label1452:
  b label1408
label1407:
  li $t1, 0
  li $t2, 44556
  sub $t0, $t1, $t2
  sw $t0, -5148($sp)
  li $t1, 53544
  lw $t2, -5148($sp)
  add $t0, $t1, $t2
  sw $t0, -5152($sp)
  lw $t1, -5152($sp)
  li $t2, 7038
  add $t0, $t1, $t2
  sw $t0, -5156($sp)
  lw $t1, -5156($sp)
  li $t2, 43177
  bne $t1, $t2, label1472
  b label1473
label1472:
  li $t1, 0
  li $t2, 15231
  sub $t0, $t1, $t2
  sw $t0, -5160($sp)
  li $t1, 0
  lw $t2, -5160($sp)
  sub $t0, $t1, $t2
  sw $t0, -5164($sp)
  lw $t1, -5164($sp)
  li $t2, 0
  bne $t1, $t2, label1475
  b label1479
label1479:
  lw $t1, -352($sp)
  li $t2, 17765
  bge $t1, $t2, label1475
  b label1478
label1478:
  lw $t1, -704($sp)
  li $t2, 0
  bne $t1, $t2, label1481
  b label1480
  label1480:
  li $t0, 1
  sw $t0, -5168($sp)
  b label1482
  label1481:
  li $t0, 0
  sw $t0, -5168($sp)
  label1482:
  lw $t1, -5168($sp)
  lw $t2, -532($sp)
  div $t0, $t1, $t2
  sw $t0, -5172($sp)
  lw $t1, -5172($sp)
  li $t2, 0
  bne $t1, $t2, label1475
  b label1477
label1477:
  lw $t1, -708($sp)
  li $t2, 49265
  sub $t0, $t1, $t2
  sw $t0, -5176($sp)
  lw $t1, -5176($sp)
  lw $t2, -4164($sp)
  sub $t0, $t1, $t2
  sw $t0, -5180($sp)
  lw $t1, -4168($sp)
  lw $t2, -484($sp)
  mulo $t0, $t1, $t2
  sw $t0, -5184($sp)
  lw $t1, -5180($sp)
  lw $t2, -5184($sp)
  bgt $t1, $t2, label1475
  b label1476
  label1475:
  li $t0, 1
  sw $t0, -5188($sp)
  b label1483
  label1476:
  li $t0, 0
  sw $t0, -5188($sp)
  label1483:
  b label1474
label1473:
  lw $t1, -548($sp)
  li $t2, 0
  bne $t1, $t2, label1488
  b label1487
  label1487:
  li $t0, 1
  sw $t0, -5192($sp)
  b label1489
  label1488:
  li $t0, 0
  sw $t0, -5192($sp)
  label1489:
  lw $t1, -5192($sp)
  li $t2, 34217
  beq $t1, $t2, label1484
  b label1486
label1486:
  lw $t1, -376($sp)
  li $t2, 0
  bne $t1, $t2, label1485
  b label1484
  label1484:
  li $t0, 1
  sw $t0, -5196($sp)
  b label1490
  label1485:
  li $t0, 0
  sw $t0, -5196($sp)
  label1490:
  lw $t1, -5196($sp)
  move $t0, $t1
  sw $t0, -768($sp)
  lw $t1, -768($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1474:
label1408:
label1354:
  b label1246
label1245:
  sub $sp, $sp, 6224
  jal func_id_Mdvzosjy
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5200($sp)
  lw $t1, -5200($sp)
  li $t2, 62654
  blt $t1, $t2, label1493
  b label1494
  label1493:
  li $t0, 1
  sw $t0, -5204($sp)
  b label1495
  label1494:
  li $t0, 0
  sw $t0, -5204($sp)
  label1495:
  li $t1, 17685
  li $t2, 18333
  beq $t1, $t2, label1496
  b label1497
  label1496:
  li $t0, 1
  sw $t0, -5208($sp)
  b label1498
  label1497:
  li $t0, 0
  sw $t0, -5208($sp)
  label1498:
  li $t1, 53447
  move $t0, $t1
  sw $t0, -920($sp)
  lw $t1, -344($sp)
  li $t2, 0
  bne $t1, $t2, label1500
  b label1499
  label1499:
  li $t0, 1
  sw $t0, -5212($sp)
  b label1501
  label1500:
  li $t0, 0
  sw $t0, -5212($sp)
  label1501:
  lw $t1, -5212($sp)
  lw $t2, -532($sp)
  mulo $t0, $t1, $t2
  sw $t0, -5216($sp)
  li $t1, 40587
  li $t2, 0
  bne $t1, $t2, label1505
  b label1504
label1505:
  lw $t1, -532($sp)
  li $t2, 0
  bne $t1, $t2, label1502
  b label1504
label1504:
  li $t1, 6354
  li $t2, 0
  bne $t1, $t2, label1502
  b label1503
  label1502:
  li $t0, 1
  sw $t0, -5220($sp)
  b label1506
  label1503:
  li $t0, 0
  sw $t0, -5220($sp)
  label1506:
  li $t1, 49302
  li $t2, 0
  bne $t1, $t2, label1507
  b label1510
label1510:
  lw $t1, -492($sp)
  li $t2, 0
  bne $t1, $t2, label1507
  b label1509
label1509:
  lw $t1, -652($sp)
  li $t2, 0
  bne $t1, $t2, label1507
  b label1508
  label1507:
  li $t0, 1
  sw $t0, -5224($sp)
  b label1511
  label1508:
  li $t0, 0
  sw $t0, -5224($sp)
  label1511:
  lw $t1, -5224($sp)
  sw $t1, -6228($sp)
  lw $t1, -5220($sp)
  sw $t1, -6232($sp)
  lw $t1, -5216($sp)
  sw $t1, -6236($sp)
  lw $t1, -920($sp)
  sw $t1, -6240($sp)
  lw $t1, -5208($sp)
  sw $t1, -6244($sp)
  sub $sp, $sp, 6224
  jal func_id_v1
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -5228($sp)
  li $t1, 0
  lw $t2, -5228($sp)
  sub $t0, $t1, $t2
  sw $t0, -5232($sp)
  lw $t1, -364($sp)
  li $t2, 0
  bne $t1, $t2, label1513
  b label1512
  label1512:
  li $t0, 1
  sw $t0, -5236($sp)
  b label1514
  label1513:
  li $t0, 0
  sw $t0, -5236($sp)
  label1514:
  lw $t1, -5232($sp)
  lw $t2, -5236($sp)
  sub $t0, $t1, $t2
  sw $t0, -5240($sp)
  lw $t1, -5204($sp)
  lw $t2, -5240($sp)
  blt $t1, $t2, label1491
  b label1492
  label1491:
  li $t0, 1
  sw $t0, -5244($sp)
  b label1515
  label1492:
  li $t0, 0
  sw $t0, -5244($sp)
  label1515:
  lw $t1, -5244($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1246:
  lw $t1, -340($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5248($sp)
  lw $t1, -344($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5252($sp)
  lw $t1, -348($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5256($sp)
  lw $t1, -352($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5260($sp)
  lw $t1, -356($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5264($sp)
  lw $t1, -360($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5268($sp)
  lw $t1, -364($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5272($sp)
  lw $t1, -368($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5276($sp)
  lw $t1, -372($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5280($sp)
  lw $t1, -376($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5284($sp)
  lw $t1, -380($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5288($sp)
  lw $t1, -384($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5292($sp)
  lw $t1, -388($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5296($sp)
  lw $t1, -392($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5300($sp)
  lw $t1, -396($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5304($sp)
  lw $t1, -400($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5308($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5312($sp)
  lw $t1, -20($sp)
  lw $t2, -5312($sp)
  add $t0, $t1, $t2
  sw $t0, -5316($sp)
  lw $t1, -5316($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5320($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5324($sp)
  lw $t1, -20($sp)
  lw $t2, -5324($sp)
  add $t0, $t1, $t2
  sw $t0, -5328($sp)
  lw $t1, -5328($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5332($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5336($sp)
  lw $t1, -20($sp)
  lw $t2, -5336($sp)
  add $t0, $t1, $t2
  sw $t0, -5340($sp)
  lw $t1, -5340($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5344($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5348($sp)
  lw $t1, -20($sp)
  lw $t2, -5348($sp)
  add $t0, $t1, $t2
  sw $t0, -5352($sp)
  lw $t1, -5352($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5356($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5360($sp)
  lw $t1, -20($sp)
  lw $t2, -5360($sp)
  add $t0, $t1, $t2
  sw $t0, -5364($sp)
  lw $t1, -5364($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5368($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5372($sp)
  lw $t1, -20($sp)
  lw $t2, -5372($sp)
  add $t0, $t1, $t2
  sw $t0, -5376($sp)
  lw $t1, -5376($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5380($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5384($sp)
  lw $t1, -20($sp)
  lw $t2, -5384($sp)
  add $t0, $t1, $t2
  sw $t0, -5388($sp)
  lw $t1, -5388($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5392($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5396($sp)
  lw $t1, -20($sp)
  lw $t2, -5396($sp)
  add $t0, $t1, $t2
  sw $t0, -5400($sp)
  lw $t1, -5400($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5404($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5408($sp)
  lw $t1, -20($sp)
  lw $t2, -5408($sp)
  add $t0, $t1, $t2
  sw $t0, -5412($sp)
  lw $t1, -5412($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5416($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5420($sp)
  lw $t1, -20($sp)
  lw $t2, -5420($sp)
  add $t0, $t1, $t2
  sw $t0, -5424($sp)
  lw $t1, -5424($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5428($sp)
  lw $t1, -484($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5432($sp)
  lw $t1, -488($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5436($sp)
  lw $t1, -492($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5440($sp)
  lw $t1, -496($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5444($sp)
  lw $t1, -500($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5448($sp)
  lw $t1, -504($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5452($sp)
  lw $t1, -508($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5456($sp)
  lw $t1, -512($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5460($sp)
  lw $t1, -516($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5464($sp)
  lw $t1, -520($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5468($sp)
  lw $t1, -524($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5472($sp)
  lw $t1, -528($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5476($sp)
  lw $t1, -532($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5480($sp)
  lw $t1, -536($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5484($sp)
  lw $t1, -540($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5488($sp)
  lw $t1, -544($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5492($sp)
  lw $t1, -548($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5496($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5500($sp)
  lw $t1, -68($sp)
  lw $t2, -5500($sp)
  add $t0, $t1, $t2
  sw $t0, -5504($sp)
  lw $t1, -5504($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5508($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5512($sp)
  lw $t1, -68($sp)
  lw $t2, -5512($sp)
  add $t0, $t1, $t2
  sw $t0, -5516($sp)
  lw $t1, -5516($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5520($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5524($sp)
  lw $t1, -68($sp)
  lw $t2, -5524($sp)
  add $t0, $t1, $t2
  sw $t0, -5528($sp)
  lw $t1, -5528($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5532($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5536($sp)
  lw $t1, -68($sp)
  lw $t2, -5536($sp)
  add $t0, $t1, $t2
  sw $t0, -5540($sp)
  lw $t1, -5540($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5544($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5548($sp)
  lw $t1, -68($sp)
  lw $t2, -5548($sp)
  add $t0, $t1, $t2
  sw $t0, -5552($sp)
  lw $t1, -5552($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5556($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5560($sp)
  lw $t1, -68($sp)
  lw $t2, -5560($sp)
  add $t0, $t1, $t2
  sw $t0, -5564($sp)
  lw $t1, -5564($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5568($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5572($sp)
  lw $t1, -68($sp)
  lw $t2, -5572($sp)
  add $t0, $t1, $t2
  sw $t0, -5576($sp)
  lw $t1, -5576($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5580($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5584($sp)
  lw $t1, -68($sp)
  lw $t2, -5584($sp)
  add $t0, $t1, $t2
  sw $t0, -5588($sp)
  lw $t1, -5588($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5592($sp)
  lw $t1, -616($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5596($sp)
  lw $t1, -620($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5600($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5604($sp)
  lw $t1, -108($sp)
  lw $t2, -5604($sp)
  add $t0, $t1, $t2
  sw $t0, -5608($sp)
  lw $t1, -5608($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5612($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5616($sp)
  lw $t1, -108($sp)
  lw $t2, -5616($sp)
  add $t0, $t1, $t2
  sw $t0, -5620($sp)
  lw $t1, -5620($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5624($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5628($sp)
  lw $t1, -108($sp)
  lw $t2, -5628($sp)
  add $t0, $t1, $t2
  sw $t0, -5632($sp)
  lw $t1, -5632($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5636($sp)
  lw $t1, -648($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5640($sp)
  lw $t1, -652($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5644($sp)
  lw $t1, -656($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5648($sp)
  lw $t1, -660($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5652($sp)
  lw $t1, -664($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5656($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5660($sp)
  lw $t1, -128($sp)
  lw $t2, -5660($sp)
  add $t0, $t1, $t2
  sw $t0, -5664($sp)
  lw $t1, -5664($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5668($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5672($sp)
  lw $t1, -128($sp)
  lw $t2, -5672($sp)
  add $t0, $t1, $t2
  sw $t0, -5676($sp)
  lw $t1, -5676($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5680($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5684($sp)
  lw $t1, -128($sp)
  lw $t2, -5684($sp)
  add $t0, $t1, $t2
  sw $t0, -5688($sp)
  lw $t1, -5688($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5692($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5696($sp)
  lw $t1, -128($sp)
  lw $t2, -5696($sp)
  add $t0, $t1, $t2
  sw $t0, -5700($sp)
  lw $t1, -5700($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5704($sp)
  lw $t1, -700($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5708($sp)
  lw $t1, -704($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5712($sp)
  lw $t1, -708($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5716($sp)
  lw $t1, -712($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5720($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5724($sp)
  lw $t1, -152($sp)
  lw $t2, -5724($sp)
  add $t0, $t1, $t2
  sw $t0, -5728($sp)
  lw $t1, -5728($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5732($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5736($sp)
  lw $t1, -152($sp)
  lw $t2, -5736($sp)
  add $t0, $t1, $t2
  sw $t0, -5740($sp)
  lw $t1, -5740($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5744($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5748($sp)
  lw $t1, -152($sp)
  lw $t2, -5748($sp)
  add $t0, $t1, $t2
  sw $t0, -5752($sp)
  lw $t1, -5752($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5756($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5760($sp)
  lw $t1, -152($sp)
  lw $t2, -5760($sp)
  add $t0, $t1, $t2
  sw $t0, -5764($sp)
  lw $t1, -5764($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5768($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5772($sp)
  lw $t1, -152($sp)
  lw $t2, -5772($sp)
  add $t0, $t1, $t2
  sw $t0, -5776($sp)
  lw $t1, -5776($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5780($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5784($sp)
  lw $t1, -152($sp)
  lw $t2, -5784($sp)
  add $t0, $t1, $t2
  sw $t0, -5788($sp)
  lw $t1, -5788($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5792($sp)
  lw $t1, -764($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5796($sp)
  lw $t1, -768($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5800($sp)
  lw $t1, -772($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5804($sp)
  lw $t1, -776($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5808($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5812($sp)
  lw $t1, -184($sp)
  lw $t2, -5812($sp)
  add $t0, $t1, $t2
  sw $t0, -5816($sp)
  lw $t1, -5816($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5820($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5824($sp)
  lw $t1, -184($sp)
  lw $t2, -5824($sp)
  add $t0, $t1, $t2
  sw $t0, -5828($sp)
  lw $t1, -5828($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5832($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5836($sp)
  lw $t1, -200($sp)
  lw $t2, -5836($sp)
  add $t0, $t1, $t2
  sw $t0, -5840($sp)
  lw $t1, -5840($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5844($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5848($sp)
  lw $t1, -200($sp)
  lw $t2, -5848($sp)
  add $t0, $t1, $t2
  sw $t0, -5852($sp)
  lw $t1, -5852($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5856($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5860($sp)
  lw $t1, -200($sp)
  lw $t2, -5860($sp)
  add $t0, $t1, $t2
  sw $t0, -5864($sp)
  lw $t1, -5864($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5868($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5872($sp)
  lw $t1, -200($sp)
  lw $t2, -5872($sp)
  add $t0, $t1, $t2
  sw $t0, -5876($sp)
  lw $t1, -5876($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5880($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5884($sp)
  lw $t1, -200($sp)
  lw $t2, -5884($sp)
  add $t0, $t1, $t2
  sw $t0, -5888($sp)
  lw $t1, -5888($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5892($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5896($sp)
  lw $t1, -200($sp)
  lw $t2, -5896($sp)
  add $t0, $t1, $t2
  sw $t0, -5900($sp)
  lw $t1, -5900($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5904($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5908($sp)
  lw $t1, -200($sp)
  lw $t2, -5908($sp)
  add $t0, $t1, $t2
  sw $t0, -5912($sp)
  lw $t1, -5912($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5916($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5920($sp)
  lw $t1, -200($sp)
  lw $t2, -5920($sp)
  add $t0, $t1, $t2
  sw $t0, -5924($sp)
  lw $t1, -5924($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5928($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5932($sp)
  lw $t1, -200($sp)
  lw $t2, -5932($sp)
  add $t0, $t1, $t2
  sw $t0, -5936($sp)
  lw $t1, -5936($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5940($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5944($sp)
  lw $t1, -200($sp)
  lw $t2, -5944($sp)
  add $t0, $t1, $t2
  sw $t0, -5948($sp)
  lw $t1, -5948($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5952($sp)
  lw $t1, -876($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5956($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5960($sp)
  lw $t1, -248($sp)
  lw $t2, -5960($sp)
  add $t0, $t1, $t2
  sw $t0, -5964($sp)
  lw $t1, -5964($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5968($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5972($sp)
  lw $t1, -248($sp)
  lw $t2, -5972($sp)
  add $t0, $t1, $t2
  sw $t0, -5976($sp)
  lw $t1, -5976($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5980($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -5984($sp)
  lw $t1, -264($sp)
  lw $t2, -5984($sp)
  add $t0, $t1, $t2
  sw $t0, -5988($sp)
  lw $t1, -5988($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5992($sp)
  lw $t1, -904($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -5996($sp)
  lw $t1, -908($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6000($sp)
  lw $t1, -912($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6004($sp)
  lw $t1, -916($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6008($sp)
  lw $t1, -920($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6012($sp)
  lw $t1, -924($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6016($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6020($sp)
  lw $t1, -276($sp)
  lw $t2, -6020($sp)
  add $t0, $t1, $t2
  sw $t0, -6024($sp)
  lw $t1, -6024($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6028($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6032($sp)
  lw $t1, -276($sp)
  lw $t2, -6032($sp)
  add $t0, $t1, $t2
  sw $t0, -6036($sp)
  lw $t1, -6036($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6040($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6044($sp)
  lw $t1, -276($sp)
  lw $t2, -6044($sp)
  add $t0, $t1, $t2
  sw $t0, -6048($sp)
  lw $t1, -6048($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6052($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6056($sp)
  lw $t1, -276($sp)
  lw $t2, -6056($sp)
  add $t0, $t1, $t2
  sw $t0, -6060($sp)
  lw $t1, -6060($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6064($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6068($sp)
  lw $t1, -276($sp)
  lw $t2, -6068($sp)
  add $t0, $t1, $t2
  sw $t0, -6072($sp)
  lw $t1, -6072($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6076($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6080($sp)
  lw $t1, -276($sp)
  lw $t2, -6080($sp)
  add $t0, $t1, $t2
  sw $t0, -6084($sp)
  lw $t1, -6084($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6088($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6092($sp)
  lw $t1, -276($sp)
  lw $t2, -6092($sp)
  add $t0, $t1, $t2
  sw $t0, -6096($sp)
  lw $t1, -6096($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6100($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6104($sp)
  lw $t1, -276($sp)
  lw $t2, -6104($sp)
  add $t0, $t1, $t2
  sw $t0, -6108($sp)
  lw $t1, -6108($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6112($sp)
  li $t1, 8
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6116($sp)
  lw $t1, -276($sp)
  lw $t2, -6116($sp)
  add $t0, $t1, $t2
  sw $t0, -6120($sp)
  lw $t1, -6120($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6124($sp)
  li $t1, 9
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6128($sp)
  lw $t1, -276($sp)
  lw $t2, -6128($sp)
  add $t0, $t1, $t2
  sw $t0, -6132($sp)
  lw $t1, -6132($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6136($sp)
  lw $t1, -1008($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6140($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6144($sp)
  lw $t1, -324($sp)
  lw $t2, -6144($sp)
  add $t0, $t1, $t2
  sw $t0, -6148($sp)
  lw $t1, -6148($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6152($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6156($sp)
  lw $t1, -324($sp)
  lw $t2, -6156($sp)
  add $t0, $t1, $t2
  sw $t0, -6160($sp)
  lw $t1, -6160($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6164($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -6168($sp)
  lw $t1, -324($sp)
  lw $t2, -6168($sp)
  add $t0, $t1, $t2
  sw $t0, -6172($sp)
  lw $t1, -6172($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6176($sp)
  lw $t1, -1036($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6180($sp)
  lw $t1, -1040($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6184($sp)
  lw $t1, -1044($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6188($sp)
  lw $t1, -1048($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6192($sp)
  lw $t1, -1052($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6196($sp)
  lw $t1, -1056($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6200($sp)
  lw $t1, -1060($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -6204($sp)
  li $t1, 23341
  li $t2, 11506
  bgt $t1, $t2, label1518
  b label1519
  label1518:
  li $t0, 1
  sw $t0, -6208($sp)
  b label1520
  label1519:
  li $t0, 0
  sw $t0, -6208($sp)
  label1520:
  lw $t1, -6208($sp)
  li $t2, 21328
  bne $t1, $t2, label1516
  b label1517
  label1516:
  li $t0, 1
  sw $t0, -6212($sp)
  b label1521
  label1517:
  li $t0, 0
  sw $t0, -6212($sp)
  label1521:
  li $t1, 58379
  move $t0, $t1
  sw $t0, -656($sp)
  lw $t1, -656($sp)
  sw $t1, -6228($sp)
  lw $t1, -6212($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_B
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -6216($sp)
  li $t1, 6880
  sw $t1, -6228($sp)
  lw $t1, -6216($sp)
  sw $t1, -6232($sp)
  sub $sp, $sp, 6224
  jal func_id_OAYxiBjEU
  add $sp, $sp, 6224
  move $t0, $v0
  sw $t0, -6220($sp)
  lw $t1, -6220($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_ran3t4V_:
  sw $ra, 0($sp)
  sub $t0, $sp, 36
  sw $t0, -20($sp)
  sub $t0, $sp, 64
  sw $t0, -44($sp)
  sub $t0, $sp, 76
  sw $t0, -72($sp)
  li $t1, 48348
  move $t0, $t1
  sw $t0, -80($sp)
  li $t1, 62929
  move $t0, $t1
  sw $t0, -84($sp)
  li $t1, 43793
  move $t0, $t1
  sw $t0, -88($sp)
  li $t1, 61671
  move $t0, $t1
  sw $t0, -92($sp)
  li $t1, 17524
  move $t0, $t1
  sw $t0, -96($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -100($sp)
  lw $t1, -20($sp)
  lw $t2, -100($sp)
  add $t0, $t1, $t2
  sw $t0, -104($sp)
  li $t1, 7607
  move $t0, $t1
  lw $s0, -104($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -108($sp)
  lw $t1, -20($sp)
  lw $t2, -108($sp)
  add $t0, $t1, $t2
  sw $t0, -112($sp)
  li $t1, 9173
  move $t0, $t1
  lw $s0, -112($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -116($sp)
  lw $t1, -20($sp)
  lw $t2, -116($sp)
  add $t0, $t1, $t2
  sw $t0, -120($sp)
  li $t1, 22903
  move $t0, $t1
  lw $s0, -120($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -124($sp)
  lw $t1, -20($sp)
  lw $t2, -124($sp)
  add $t0, $t1, $t2
  sw $t0, -128($sp)
  li $t1, 22479
  move $t0, $t1
  lw $s0, -128($sp)
  sw $t0, 0($s0)
  li $t1, 35442
  move $t0, $t1
  sw $t0, -132($sp)
  li $t1, 37795
  move $t0, $t1
  sw $t0, -136($sp)
  li $t1, 10487
  move $t0, $t1
  sw $t0, -140($sp)
  li $t1, 14463
  move $t0, $t1
  sw $t0, -144($sp)
  li $t1, 44833
  move $t0, $t1
  sw $t0, -148($sp)
  li $t1, 53665
  move $t0, $t1
  sw $t0, -152($sp)
  li $t1, 29694
  move $t0, $t1
  sw $t0, -156($sp)
  li $t1, 62598
  move $t0, $t1
  sw $t0, -160($sp)
  li $t1, 37394
  move $t0, $t1
  sw $t0, -164($sp)
  li $t1, 63911
  move $t0, $t1
  sw $t0, -168($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -172($sp)
  lw $t1, -44($sp)
  lw $t2, -172($sp)
  add $t0, $t1, $t2
  sw $t0, -176($sp)
  li $t1, 59716
  move $t0, $t1
  lw $s0, -176($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -180($sp)
  lw $t1, -44($sp)
  lw $t2, -180($sp)
  add $t0, $t1, $t2
  sw $t0, -184($sp)
  li $t1, 55079
  move $t0, $t1
  lw $s0, -184($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -188($sp)
  lw $t1, -44($sp)
  lw $t2, -188($sp)
  add $t0, $t1, $t2
  sw $t0, -192($sp)
  li $t1, 16708
  move $t0, $t1
  lw $s0, -192($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -196($sp)
  lw $t1, -44($sp)
  lw $t2, -196($sp)
  add $t0, $t1, $t2
  sw $t0, -200($sp)
  li $t1, 47627
  move $t0, $t1
  lw $s0, -200($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -204($sp)
  lw $t1, -44($sp)
  lw $t2, -204($sp)
  add $t0, $t1, $t2
  sw $t0, -208($sp)
  li $t1, 30131
  move $t0, $t1
  lw $s0, -208($sp)
  sw $t0, 0($s0)
  li $t1, 23062
  move $t0, $t1
  sw $t0, -212($sp)
  li $t1, 31393
  move $t0, $t1
  sw $t0, -216($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -220($sp)
  lw $t1, -72($sp)
  lw $t2, -220($sp)
  add $t0, $t1, $t2
  sw $t0, -224($sp)
  li $t1, 53472
  move $t0, $t1
  lw $s0, -224($sp)
  sw $t0, 0($s0)
  li $t1, 34569
  move $t0, $t1
  sw $t0, -228($sp)
  li $t1, 52721
  move $t0, $t1
  sw $t0, -232($sp)
  lw $t1, -8($sp)
  lw $t2, -92($sp)
  div $t0, $t1, $t2
  sw $t0, -236($sp)
  lw $t1, -236($sp)
  lw $t2, -228($sp)
  sub $t0, $t1, $t2
  sw $t0, -240($sp)
  li $t1, 0
  li $t2, 46316
  sub $t0, $t1, $t2
  sw $t0, -244($sp)
  lw $t1, -160($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -248($sp)
  lw $t1, -44($sp)
  lw $t2, -248($sp)
  add $t0, $t1, $t2
  sw $t0, -252($sp)
  li $t1, 0
  lw $t2, -252($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -256($sp)
  lw $t1, -256($sp)
  sw $t1, -856($sp)
  lw $t1, -244($sp)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_eZzKtHKigb
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -260($sp)
  li $t1, 41449
  li $t2, 35533
  bgt $t1, $t2, label1522
  b label1523
  label1522:
  li $t0, 1
  sw $t0, -264($sp)
  b label1524
  label1523:
  li $t0, 0
  sw $t0, -264($sp)
  label1524:
  li $t1, 43709
  li $t2, 19706
  div $t0, $t1, $t2
  sw $t0, -268($sp)
  lw $t1, -268($sp)
  li $t2, 31668
  add $t0, $t1, $t2
  sw $t0, -272($sp)
  lw $t1, -272($sp)
  sw $t1, -856($sp)
  lw $t1, -132($sp)
  sw $t1, -860($sp)
  lw $t1, -264($sp)
  sw $t1, -864($sp)
  lw $t1, -260($sp)
  sw $t1, -868($sp)
  lw $t1, -240($sp)
  sw $t1, -872($sp)
  sub $sp, $sp, 852
  jal func_id_cr3Ra
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -276($sp)
  lw $t1, -276($sp)
  li $t2, 61234
  sub $t0, $t1, $t2
  sw $t0, -280($sp)
  li $t1, 27313
  move $t0, $t1
  sw $t0, -8($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -284($sp)
  lw $t1, -72($sp)
  lw $t2, -284($sp)
  add $t0, $t1, $t2
  sw $t0, -288($sp)
  lw $t1, -288($sp)
  lw $t1, 0($t1)
  li $t2, 49792
  div $t0, $t1, $t2
  sw $t0, -292($sp)
  li $t1, 10748
  li $t2, 56396
  add $t0, $t1, $t2
  sw $t0, -296($sp)
  lw $t1, -296($sp)
  sw $t1, -856($sp)
  lw $t1, -292($sp)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_B
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -300($sp)
  lw $t1, -300($sp)
  sw $t1, -856($sp)
  lw $t1, -8($sp)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_OAYxiBjEU
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -304($sp)
  li $t1, 0
  lw $t2, -152($sp)
  sub $t0, $t1, $t2
  sw $t0, -308($sp)
  lw $t1, -304($sp)
  lw $t2, -308($sp)
  div $t0, $t1, $t2
  sw $t0, -312($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -316($sp)
  lw $t1, -72($sp)
  lw $t2, -316($sp)
  add $t0, $t1, $t2
  sw $t0, -320($sp)
  lw $t1, -320($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1526
  b label1525
  label1525:
  li $t0, 1
  sw $t0, -324($sp)
  b label1527
  label1526:
  li $t0, 0
  sw $t0, -324($sp)
  label1527:
  lw $t1, -324($sp)
  move $t0, $t1
  sw $t0, -12($sp)
  lw $t1, -228($sp)
  move $t0, $t1
  sw $t0, -84($sp)
  lw $t1, -84($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -328($sp)
  lw $t1, -44($sp)
  lw $t2, -328($sp)
  add $t0, $t1, $t2
  sw $t0, -332($sp)
  li $t1, 35693
  lw $t2, -332($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -336($sp)
  lw $t1, -164($sp)
  lw $t2, -212($sp)
  mulo $t0, $t1, $t2
  sw $t0, -340($sp)
  lw $t1, -340($sp)
  lw $t2, -164($sp)
  bne $t1, $t2, label1531
  b label1529
label1531:
  li $t1, 48409
  move $t0, $t1
  sw $t0, -96($sp)
  lw $t1, -8($sp)
  lw $t2, -132($sp)
  div $t0, $t1, $t2
  sw $t0, -344($sp)
  li $t1, 0
  lw $t2, -8($sp)
  sub $t0, $t1, $t2
  sw $t0, -348($sp)
  lw $t1, -348($sp)
  li $t2, 0
  bne $t1, $t2, label1532
  b label1534
label1534:
  li $t1, 54905
  li $t2, 0
  bne $t1, $t2, label1532
  b label1533
  label1532:
  li $t0, 1
  sw $t0, -352($sp)
  b label1535
  label1533:
  li $t0, 0
  sw $t0, -352($sp)
  label1535:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -356($sp)
  lw $t1, -72($sp)
  lw $t2, -356($sp)
  add $t0, $t1, $t2
  sw $t0, -360($sp)
  lw $t1, -360($sp)
  lw $t1, 0($t1)
  lw $t2, -84($sp)
  sub $t0, $t1, $t2
  sw $t0, -364($sp)
  lw $t1, -164($sp)
  lw $t2, -148($sp)
  ble $t1, $t2, label1536
  b label1538
label1538:
  lw $t1, -232($sp)
  li $t2, 0
  bne $t1, $t2, label1536
  b label1537
  label1536:
  li $t0, 1
  sw $t0, -368($sp)
  b label1539
  label1537:
  li $t0, 0
  sw $t0, -368($sp)
  label1539:
  lw $t1, -368($sp)
  sw $t1, -856($sp)
  lw $t1, -364($sp)
  sw $t1, -860($sp)
  lw $t1, -352($sp)
  sw $t1, -864($sp)
  lw $t1, -344($sp)
  sw $t1, -868($sp)
  lw $t1, -96($sp)
  sw $t1, -872($sp)
  sub $sp, $sp, 852
  jal func_id_cr3Ra
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -372($sp)
  lw $t1, -372($sp)
  li $t2, 0
  bne $t1, $t2, label1530
  b label1529
label1530:
  lw $t1, -140($sp)
  li $t2, 53280
  mulo $t0, $t1, $t2
  sw $t0, -376($sp)
  lw $t1, -376($sp)
  li $t2, 0
  bne $t1, $t2, label1528
  b label1529
  label1528:
  li $t0, 1
  sw $t0, -380($sp)
  b label1540
  label1529:
  li $t0, 0
  sw $t0, -380($sp)
  label1540:
  lw $t1, -160($sp)
  lw $t2, -168($sp)
  mulo $t0, $t1, $t2
  sw $t0, -384($sp)
  lw $t1, -384($sp)
  li $t2, 26936
  div $t0, $t1, $t2
  sw $t0, -388($sp)
  lw $t1, -388($sp)
  lw $t2, -228($sp)
  div $t0, $t1, $t2
  sw $t0, -392($sp)
  li $t1, 9811
  lw $t2, -152($sp)
  sub $t0, $t1, $t2
  sw $t0, -396($sp)
  lw $t1, -396($sp)
  lw $t2, -144($sp)
  add $t0, $t1, $t2
  sw $t0, -400($sp)
  lw $t1, -392($sp)
  lw $t2, -400($sp)
  bge $t1, $t2, label1543
  b label1542
label1543:
  lw $t1, -140($sp)
  li $t2, 0
  bne $t1, $t2, label1545
  b label1544
  label1544:
  li $t0, 1
  sw $t0, -404($sp)
  b label1546
  label1545:
  li $t0, 0
  sw $t0, -404($sp)
  label1546:
  li $t1, 0
  lw $t2, -404($sp)
  sub $t0, $t1, $t2
  sw $t0, -408($sp)
  lw $t1, -408($sp)
  li $t2, 0
  bne $t1, $t2, label1541
  b label1542
label1541:
  li $t1, 4452
  lw $t2, -132($sp)
  mulo $t0, $t1, $t2
  sw $t0, -412($sp)
  li $t1, 9028
  li $t2, 39942
  div $t0, $t1, $t2
  sw $t0, -416($sp)
  lw $t1, -416($sp)
  li $t2, 27514
  div $t0, $t1, $t2
  sw $t0, -420($sp)
  lw $t1, -412($sp)
  lw $t2, -420($sp)
  sub $t0, $t1, $t2
  sw $t0, -424($sp)
  lw $t1, -424($sp)
  lw $t2, -228($sp)
  bne $t1, $t2, label1549
  b label1550
  label1549:
  li $t0, 1
  sw $t0, -428($sp)
  b label1551
  label1550:
  li $t0, 0
  sw $t0, -428($sp)
  label1551:
  lw $t1, -152($sp)
  li $t2, 0
  bne $t1, $t2, label1553
  b label1552
  label1552:
  li $t0, 1
  sw $t0, -432($sp)
  b label1554
  label1553:
  li $t0, 0
  sw $t0, -432($sp)
  label1554:
  lw $t1, -428($sp)
  lw $t2, -432($sp)
  bge $t1, $t2, label1547
  b label1548
  label1547:
  li $t0, 1
  sw $t0, -436($sp)
  b label1555
  label1548:
  li $t0, 0
  sw $t0, -436($sp)
  label1555:
  lw $t1, -436($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  lw $t1, -88($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -44($sp)
  lw $t2, -440($sp)
  add $t0, $t1, $t2
  sw $t0, -444($sp)
  li $t1, 40421
  li $t2, 0
  bne $t1, $t2, label1559
  b label1560
label1560:
  li $t1, 27878
  li $t2, 0
  bne $t1, $t2, label1558
  b label1559
  label1558:
  li $t0, 1
  sw $t0, -448($sp)
  b label1561
  label1559:
  li $t0, 0
  sw $t0, -448($sp)
  label1561:
  lw $t1, -448($sp)
  sw $t1, -856($sp)
  lw $t1, -444($sp)
  lw $t1, 0($t1)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_eZzKtHKigb
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -452($sp)
  lw $t1, -452($sp)
  li $t2, 0
  bne $t1, $t2, label1557
  b label1556
  label1556:
  li $t0, 1
  sw $t0, -456($sp)
  b label1562
  label1557:
  li $t0, 0
  sw $t0, -456($sp)
  label1562:
  li $t1, 0
  lw $t2, -456($sp)
  sub $t0, $t1, $t2
  sw $t0, -460($sp)
label1542:
  li $t1, 8658
  lw $t2, -12($sp)
  ble $t1, $t2, label1567
  b label1568
  label1567:
  li $t0, 1
  sw $t0, -464($sp)
  b label1569
  label1568:
  li $t0, 0
  sw $t0, -464($sp)
  label1569:
  lw $t1, -464($sp)
  li $t2, 37996
  bge $t1, $t2, label1565
  b label1566
  label1565:
  li $t0, 1
  sw $t0, -468($sp)
  b label1570
  label1566:
  li $t0, 0
  sw $t0, -468($sp)
  label1570:
  lw $t1, -156($sp)
  li $t2, 0
  bne $t1, $t2, label1572
  b label1571
  label1571:
  li $t0, 1
  sw $t0, -472($sp)
  b label1573
  label1572:
  li $t0, 0
  sw $t0, -472($sp)
  label1573:
  li $t1, 0
  lw $t2, -472($sp)
  sub $t0, $t1, $t2
  sw $t0, -476($sp)
  lw $t1, -148($sp)
  li $t2, 52368
  sub $t0, $t1, $t2
  sw $t0, -480($sp)
  lw $t1, -480($sp)
  lw $t2, -152($sp)
  blt $t1, $t2, label1574
  b label1575
  label1574:
  li $t0, 1
  sw $t0, -484($sp)
  b label1576
  label1575:
  li $t0, 0
  sw $t0, -484($sp)
  label1576:
  lw $t1, -152($sp)
  li $t2, 57702
  beq $t1, $t2, label1577
  b label1578
  label1577:
  li $t0, 1
  sw $t0, -488($sp)
  b label1579
  label1578:
  li $t0, 0
  sw $t0, -488($sp)
  label1579:
  lw $t1, -488($sp)
  sw $t1, -856($sp)
  lw $t1, -484($sp)
  sw $t1, -860($sp)
  li $t1, 63140
  sw $t1, -864($sp)
  lw $t1, -476($sp)
  sw $t1, -868($sp)
  lw $t1, -468($sp)
  sw $t1, -872($sp)
  sub $sp, $sp, 852
  jal func_id_v1
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -492($sp)
  lw $t1, -492($sp)
  li $t2, 0
  bne $t1, $t2, label1564
  b label1563
  label1563:
  li $t0, 1
  sw $t0, -496($sp)
  b label1580
  label1564:
  li $t0, 0
  sw $t0, -496($sp)
  label1580:
  lw $t1, -496($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -500($sp)
  lw $t1, -44($sp)
  lw $t2, -500($sp)
  add $t0, $t1, $t2
  sw $t0, -504($sp)
  li $t1, 0
  lw $t2, -504($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -508($sp)
  lw $t1, -8($sp)
  lw $t2, -164($sp)
  bne $t1, $t2, label1581
  b label1582
  label1581:
  li $t0, 1
  sw $t0, -512($sp)
  b label1583
  label1582:
  li $t0, 0
  sw $t0, -512($sp)
  label1583:
  lw $t1, -512($sp)
  move $t0, $t1
  sw $t0, -216($sp)
  lw $t1, -216($sp)
  move $t0, $t1
  sw $t0, -96($sp)
  li $t1, 29273
  li $t2, 0
  bne $t1, $t2, label1587
  b label1586
  label1586:
  li $t0, 1
  sw $t0, -516($sp)
  b label1588
  label1587:
  li $t0, 0
  sw $t0, -516($sp)
  label1588:
  lw $t1, -516($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -520($sp)
  lw $t1, -44($sp)
  lw $t2, -520($sp)
  add $t0, $t1, $t2
  sw $t0, -524($sp)
  lw $t1, -524($sp)
  lw $t1, 0($t1)
  li $t2, 48066
  mulo $t0, $t1, $t2
  sw $t0, -528($sp)
  lw $t1, -212($sp)
  li $t2, 19479
  div $t0, $t1, $t2
  sw $t0, -532($sp)
  li $t1, 4578
  lw $t2, -152($sp)
  mulo $t0, $t1, $t2
  sw $t0, -536($sp)
  lw $t1, -532($sp)
  lw $t2, -536($sp)
  add $t0, $t1, $t2
  sw $t0, -540($sp)
  lw $t1, -528($sp)
  lw $t2, -540($sp)
  beq $t1, $t2, label1584
  b label1585
  label1584:
  li $t0, 1
  sw $t0, -544($sp)
  b label1589
  label1585:
  li $t0, 0
  sw $t0, -544($sp)
  label1589:
  lw $t1, -216($sp)
  lw $t2, -12($sp)
  add $t0, $t1, $t2
  sw $t0, -548($sp)
  lw $t1, -84($sp)
  lw $t2, -140($sp)
  bge $t1, $t2, label1595
  b label1596
  label1595:
  li $t0, 1
  sw $t0, -552($sp)
  b label1597
  label1596:
  li $t0, 0
  sw $t0, -552($sp)
  label1597:
  lw $t1, -4($sp)
  move $t0, $t1
  sw $t0, -96($sp)
  lw $t1, -96($sp)
  sw $t1, -856($sp)
  lw $t1, -552($sp)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_OAYxiBjEU
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -556($sp)
  lw $t1, -556($sp)
  li $t2, 0
  bne $t1, $t2, label1594
  b label1593
  label1593:
  li $t0, 1
  sw $t0, -560($sp)
  b label1598
  label1594:
  li $t0, 0
  sw $t0, -560($sp)
  label1598:
  lw $t1, -548($sp)
  lw $t2, -560($sp)
  beq $t1, $t2, label1590
  b label1591
label1590:
  li $t1, 3736
  li $t2, 15326
  mulo $t0, $t1, $t2
  sw $t0, -564($sp)
  li $t1, 1131
  lw $t2, -564($sp)
  blt $t1, $t2, label1602
  b label1603
  label1602:
  li $t0, 1
  sw $t0, -568($sp)
  b label1604
  label1603:
  li $t0, 0
  sw $t0, -568($sp)
  label1604:
  lw $t1, -568($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -572($sp)
  lw $t1, -20($sp)
  lw $t2, -572($sp)
  add $t0, $t1, $t2
  sw $t0, -576($sp)
  lw $t1, -576($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1599
  b label1600
label1599:
label1605:
  li $t1, 57527
  li $t2, 64016
  bne $t1, $t2, label1610
  b label1612
label1612:
  lw $t1, -140($sp)
  li $t2, 0
  bne $t1, $t2, label1610
  b label1611
  label1610:
  li $t0, 1
  sw $t0, -580($sp)
  b label1613
  label1611:
  li $t0, 0
  sw $t0, -580($sp)
  label1613:
  lw $t1, -580($sp)
  sw $t1, -856($sp)
  sub $sp, $sp, 852
  jal func_id_HusWF
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -584($sp)
  lw $t1, -584($sp)
  li $t2, 0
  bne $t1, $t2, label1609
  b label1608
  label1608:
  li $t0, 1
  sw $t0, -588($sp)
  b label1614
  label1609:
  li $t0, 0
  sw $t0, -588($sp)
  label1614:
  li $t1, 0
  lw $t2, -588($sp)
  sub $t0, $t1, $t2
  sw $t0, -592($sp)
  li $t1, 0
  lw $t2, -592($sp)
  sub $t0, $t1, $t2
  sw $t0, -596($sp)
  lw $t1, -596($sp)
  li $t2, 0
  bne $t1, $t2, label1606
  b label1607
label1606:
  sub $sp, $sp, 852
  jal func_id_Mdvzosjy
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -600($sp)
  lw $t1, -600($sp)
  li $t2, 0
  bne $t1, $t2, label1617
  b label1615
label1617:
  lw $t1, -12($sp)
  lw $t2, -152($sp)
  add $t0, $t1, $t2
  sw $t0, -604($sp)
  lw $t1, -604($sp)
  li $t2, 0
  bne $t1, $t2, label1619
  b label1616
label1619:
  li $t1, 40537
  li $t2, 0
  bne $t1, $t2, label1618
  b label1616
label1618:
  li $t1, 27684
  lw $t2, -92($sp)
  beq $t1, $t2, label1615
  b label1616
  label1615:
  li $t0, 1
  sw $t0, -608($sp)
  b label1620
  label1616:
  li $t0, 0
  sw $t0, -608($sp)
  label1620:
  b label1605
label1607:
  b label1601
label1600:
  lw $t1, -8($sp)
  li $t2, 0
  bne $t1, $t2, label1621
  b label1623
label1623:
  lw $t1, -212($sp)
  li $t2, 0
  bne $t1, $t2, label1621
  b label1622
  label1621:
  li $t0, 1
  sw $t0, -612($sp)
  b label1624
  label1622:
  li $t0, 0
  sw $t0, -612($sp)
  label1624:
  lw $t1, -612($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -616($sp)
  lw $t1, -72($sp)
  lw $t2, -616($sp)
  add $t0, $t1, $t2
  sw $t0, -620($sp)
  li $t1, 0
  lw $t2, -620($sp)
  lw $t2, 0($t2)
  sub $t0, $t1, $t2
  sw $t0, -624($sp)
  lw $t1, -624($sp)
  lw $t2, -84($sp)
  div $t0, $t1, $t2
  sw $t0, -628($sp)
label1601:
  b label1592
label1591:
  li $t1, 0
  lw $t2, -80($sp)
  sub $t0, $t1, $t2
  sw $t0, -632($sp)
  li $t1, 46889
  lw $t2, -632($sp)
  ble $t1, $t2, label1625
  b label1626
  label1625:
  li $t0, 1
  sw $t0, -636($sp)
  b label1627
  label1626:
  li $t0, 0
  sw $t0, -636($sp)
  label1627:
  lw $t1, -636($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1592:
  lw $t1, -80($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -640($sp)
  lw $t1, -84($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -644($sp)
  lw $t1, -88($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -648($sp)
  lw $t1, -92($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -652($sp)
  lw $t1, -96($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -656($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -660($sp)
  lw $t1, -20($sp)
  lw $t2, -660($sp)
  add $t0, $t1, $t2
  sw $t0, -664($sp)
  lw $t1, -664($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -668($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -672($sp)
  lw $t1, -20($sp)
  lw $t2, -672($sp)
  add $t0, $t1, $t2
  sw $t0, -676($sp)
  lw $t1, -676($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -680($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -684($sp)
  lw $t1, -20($sp)
  lw $t2, -684($sp)
  add $t0, $t1, $t2
  sw $t0, -688($sp)
  lw $t1, -688($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -692($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -696($sp)
  lw $t1, -20($sp)
  lw $t2, -696($sp)
  add $t0, $t1, $t2
  sw $t0, -700($sp)
  lw $t1, -700($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -704($sp)
  lw $t1, -132($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -708($sp)
  lw $t1, -136($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -712($sp)
  lw $t1, -140($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -716($sp)
  lw $t1, -144($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -720($sp)
  lw $t1, -148($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -724($sp)
  lw $t1, -152($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -728($sp)
  lw $t1, -156($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -732($sp)
  lw $t1, -160($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -736($sp)
  lw $t1, -164($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -740($sp)
  lw $t1, -168($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -744($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -748($sp)
  lw $t1, -44($sp)
  lw $t2, -748($sp)
  add $t0, $t1, $t2
  sw $t0, -752($sp)
  lw $t1, -752($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -756($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -760($sp)
  lw $t1, -44($sp)
  lw $t2, -760($sp)
  add $t0, $t1, $t2
  sw $t0, -764($sp)
  lw $t1, -764($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -768($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -772($sp)
  lw $t1, -44($sp)
  lw $t2, -772($sp)
  add $t0, $t1, $t2
  sw $t0, -776($sp)
  lw $t1, -776($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -780($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -784($sp)
  lw $t1, -44($sp)
  lw $t2, -784($sp)
  add $t0, $t1, $t2
  sw $t0, -788($sp)
  lw $t1, -788($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -792($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -796($sp)
  lw $t1, -44($sp)
  lw $t2, -796($sp)
  add $t0, $t1, $t2
  sw $t0, -800($sp)
  lw $t1, -800($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -804($sp)
  lw $t1, -212($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -808($sp)
  lw $t1, -216($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -812($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -816($sp)
  lw $t1, -72($sp)
  lw $t2, -816($sp)
  add $t0, $t1, $t2
  sw $t0, -820($sp)
  lw $t1, -820($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -824($sp)
  lw $t1, -228($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -828($sp)
  lw $t1, -88($sp)
  li $t2, 0
  bne $t1, $t2, label1631
  b label1630
  label1630:
  li $t0, 1
  sw $t0, -832($sp)
  b label1632
  label1631:
  li $t0, 0
  sw $t0, -832($sp)
  label1632:
  lw $t1, -152($sp)
  move $t0, $t1
  sw $t0, -228($sp)
  lw $t1, -160($sp)
  lw $t2, -156($sp)
  bne $t1, $t2, label1635
  b label1636
  label1635:
  li $t0, 1
  sw $t0, -836($sp)
  b label1637
  label1636:
  li $t0, 0
  sw $t0, -836($sp)
  label1637:
  lw $t1, -836($sp)
  lw $t2, -136($sp)
  beq $t1, $t2, label1633
  b label1634
  label1633:
  li $t0, 1
  sw $t0, -840($sp)
  b label1638
  label1634:
  li $t0, 0
  sw $t0, -840($sp)
  label1638:
  lw $t1, -840($sp)
  sw $t1, -856($sp)
  lw $t1, -228($sp)
  sw $t1, -860($sp)
  sub $sp, $sp, 852
  jal func_id_eZzKtHKigb
  add $sp, $sp, 852
  move $t0, $v0
  sw $t0, -844($sp)
  lw $t1, -832($sp)
  lw $t2, -844($sp)
  blt $t1, $t2, label1628
  b label1629
  label1628:
  li $t0, 1
  sw $t0, -848($sp)
  b label1639
  label1629:
  li $t0, 0
  sw $t0, -848($sp)
  label1639:
  lw $t1, -848($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_ay01NA2qrB:
  sw $ra, 0($sp)
  sub $t0, $sp, 32
  sw $t0, -28($sp)
  sub $t0, $sp, 44
  sw $t0, -40($sp)
  sub $t0, $sp, 84
  sw $t0, -52($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -88($sp)
  lw $t1, -28($sp)
  lw $t2, -88($sp)
  add $t0, $t1, $t2
  sw $t0, -92($sp)
  li $t1, 29906
  move $t0, $t1
  lw $s0, -92($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -96($sp)
  lw $t1, -40($sp)
  lw $t2, -96($sp)
  add $t0, $t1, $t2
  sw $t0, -100($sp)
  li $t1, 60440
  move $t0, $t1
  lw $s0, -100($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -104($sp)
  lw $t1, -52($sp)
  lw $t2, -104($sp)
  add $t0, $t1, $t2
  sw $t0, -108($sp)
  li $t1, 1620
  move $t0, $t1
  lw $s0, -108($sp)
  sw $t0, 0($s0)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -112($sp)
  lw $t1, -52($sp)
  lw $t2, -112($sp)
  add $t0, $t1, $t2
  sw $t0, -116($sp)
  li $t1, 17650
  move $t0, $t1
  lw $s0, -116($sp)
  sw $t0, 0($s0)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -120($sp)
  lw $t1, -52($sp)
  lw $t2, -120($sp)
  add $t0, $t1, $t2
  sw $t0, -124($sp)
  li $t1, 21841
  move $t0, $t1
  lw $s0, -124($sp)
  sw $t0, 0($s0)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -128($sp)
  lw $t1, -52($sp)
  lw $t2, -128($sp)
  add $t0, $t1, $t2
  sw $t0, -132($sp)
  li $t1, 11431
  move $t0, $t1
  lw $s0, -132($sp)
  sw $t0, 0($s0)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -136($sp)
  lw $t1, -52($sp)
  lw $t2, -136($sp)
  add $t0, $t1, $t2
  sw $t0, -140($sp)
  li $t1, 22102
  move $t0, $t1
  lw $s0, -140($sp)
  sw $t0, 0($s0)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -144($sp)
  lw $t1, -52($sp)
  lw $t2, -144($sp)
  add $t0, $t1, $t2
  sw $t0, -148($sp)
  li $t1, 30869
  move $t0, $t1
  lw $s0, -148($sp)
  sw $t0, 0($s0)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -152($sp)
  lw $t1, -52($sp)
  lw $t2, -152($sp)
  add $t0, $t1, $t2
  sw $t0, -156($sp)
  li $t1, 51373
  move $t0, $t1
  lw $s0, -156($sp)
  sw $t0, 0($s0)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -160($sp)
  lw $t1, -52($sp)
  lw $t2, -160($sp)
  add $t0, $t1, $t2
  sw $t0, -164($sp)
  li $t1, 49617
  move $t0, $t1
  lw $s0, -164($sp)
  sw $t0, 0($s0)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -168($sp)
  lw $t1, -28($sp)
  lw $t2, -168($sp)
  add $t0, $t1, $t2
  sw $t0, -172($sp)
  lw $t1, -172($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -176($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -180($sp)
  lw $t1, -40($sp)
  lw $t2, -180($sp)
  add $t0, $t1, $t2
  sw $t0, -184($sp)
  lw $t1, -184($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -188($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -192($sp)
  lw $t1, -52($sp)
  lw $t2, -192($sp)
  add $t0, $t1, $t2
  sw $t0, -196($sp)
  lw $t1, -196($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -200($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -204($sp)
  lw $t1, -52($sp)
  lw $t2, -204($sp)
  add $t0, $t1, $t2
  sw $t0, -208($sp)
  lw $t1, -208($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -212($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -216($sp)
  lw $t1, -52($sp)
  lw $t2, -216($sp)
  add $t0, $t1, $t2
  sw $t0, -220($sp)
  lw $t1, -220($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -224($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -228($sp)
  lw $t1, -52($sp)
  lw $t2, -228($sp)
  add $t0, $t1, $t2
  sw $t0, -232($sp)
  lw $t1, -232($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -236($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -240($sp)
  lw $t1, -52($sp)
  lw $t2, -240($sp)
  add $t0, $t1, $t2
  sw $t0, -244($sp)
  lw $t1, -244($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -248($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -252($sp)
  lw $t1, -52($sp)
  lw $t2, -252($sp)
  add $t0, $t1, $t2
  sw $t0, -256($sp)
  lw $t1, -256($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -260($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -264($sp)
  lw $t1, -52($sp)
  lw $t2, -264($sp)
  add $t0, $t1, $t2
  sw $t0, -268($sp)
  lw $t1, -268($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -272($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -276($sp)
  lw $t1, -52($sp)
  lw $t2, -276($sp)
  add $t0, $t1, $t2
  sw $t0, -280($sp)
  lw $t1, -280($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -284($sp)
  lw $t1, -20($sp)
  move $t0, $t1
  sw $t0, -16($sp)
  lw $t1, -16($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
label1640:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -288($sp)
  lw $t1, -28($sp)
  lw $t2, -288($sp)
  add $t0, $t1, $t2
  sw $t0, -292($sp)
  lw $t1, -292($sp)
  lw $t1, 0($t1)
  li $t2, 0
  bne $t1, $t2, label1643
  b label1645
label1645:
  li $t1, 46164
  li $t2, 0
  bne $t1, $t2, label1647
  b label1646
  label1646:
  li $t0, 1
  sw $t0, -296($sp)
  b label1648
  label1647:
  li $t0, 0
  sw $t0, -296($sp)
  label1648:
  lw $t1, -296($sp)
  li $t2, 33361
  sub $t0, $t1, $t2
  sw $t0, -300($sp)
  lw $t1, -16($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -304($sp)
  lw $t1, -52($sp)
  lw $t2, -304($sp)
  add $t0, $t1, $t2
  sw $t0, -308($sp)
  lw $t1, -308($sp)
  lw $t1, 0($t1)
  li $t2, 22374
  mulo $t0, $t1, $t2
  sw $t0, -312($sp)
  lw $t1, -16($sp)
  li $t2, 18625
  beq $t1, $t2, label1653
  b label1652
label1653:
  li $t1, 30966
  li $t2, 0
  bne $t1, $t2, label1651
  b label1652
  label1651:
  li $t0, 1
  sw $t0, -316($sp)
  b label1654
  label1652:
  li $t0, 0
  sw $t0, -316($sp)
  label1654:
  lw $t1, -16($sp)
  li $t2, 10791
  blt $t1, $t2, label1657
  b label1658
  label1657:
  li $t0, 1
  sw $t0, -320($sp)
  b label1659
  label1658:
  li $t0, 0
  sw $t0, -320($sp)
  label1659:
  lw $t1, -320($sp)
  lw $t2, -16($sp)
  blt $t1, $t2, label1655
  b label1656
  label1655:
  li $t0, 1
  sw $t0, -324($sp)
  b label1660
  label1656:
  li $t0, 0
  sw $t0, -324($sp)
  label1660:
  lw $t1, -324($sp)
  sw $t1, -492($sp)
  li $t1, 9206
  sw $t1, -496($sp)
  lw $t1, -316($sp)
  sw $t1, -500($sp)
  sub $sp, $sp, 488
  jal func_id_i2EeIQ2lAh
  add $sp, $sp, 488
  move $t0, $v0
  sw $t0, -328($sp)
  lw $t1, -328($sp)
  lw $t2, -16($sp)
  beq $t1, $t2, label1649
  b label1650
  label1649:
  li $t0, 1
  sw $t0, -332($sp)
  b label1661
  label1650:
  li $t0, 0
  sw $t0, -332($sp)
  label1661:
  lw $t1, -332($sp)
  sw $t1, -492($sp)
  lw $t1, -312($sp)
  sw $t1, -496($sp)
  lw $t1, -300($sp)
  sw $t1, -500($sp)
  sub $sp, $sp, 488
  jal func_id_ran3t4V_
  add $sp, $sp, 488
  move $t0, $v0
  sw $t0, -336($sp)
  lw $t1, -336($sp)
  li $t2, 0
  bne $t1, $t2, label1643
  b label1644
  label1643:
  li $t0, 1
  sw $t0, -340($sp)
  b label1662
  label1644:
  li $t0, 0
  sw $t0, -340($sp)
  label1662:
  lw $t1, -340($sp)
  move $t0, $t1
  sw $t0, -20($sp)
  lw $t1, -20($sp)
  li $t2, 0
  bne $t1, $t2, label1641
  b label1642
label1641:
  li $t1, 60239
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
  b label1640
label1642:
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -344($sp)
  lw $t1, -28($sp)
  lw $t2, -344($sp)
  add $t0, $t1, $t2
  sw $t0, -348($sp)
  lw $t1, -348($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -352($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -356($sp)
  lw $t1, -40($sp)
  lw $t2, -356($sp)
  add $t0, $t1, $t2
  sw $t0, -360($sp)
  lw $t1, -360($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -364($sp)
  li $t1, 0
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -368($sp)
  lw $t1, -52($sp)
  lw $t2, -368($sp)
  add $t0, $t1, $t2
  sw $t0, -372($sp)
  lw $t1, -372($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -376($sp)
  li $t1, 1
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -380($sp)
  lw $t1, -52($sp)
  lw $t2, -380($sp)
  add $t0, $t1, $t2
  sw $t0, -384($sp)
  lw $t1, -384($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -388($sp)
  li $t1, 2
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -392($sp)
  lw $t1, -52($sp)
  lw $t2, -392($sp)
  add $t0, $t1, $t2
  sw $t0, -396($sp)
  lw $t1, -396($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -400($sp)
  li $t1, 3
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -404($sp)
  lw $t1, -52($sp)
  lw $t2, -404($sp)
  add $t0, $t1, $t2
  sw $t0, -408($sp)
  lw $t1, -408($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -412($sp)
  li $t1, 4
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -416($sp)
  lw $t1, -52($sp)
  lw $t2, -416($sp)
  add $t0, $t1, $t2
  sw $t0, -420($sp)
  lw $t1, -420($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -424($sp)
  li $t1, 5
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -428($sp)
  lw $t1, -52($sp)
  lw $t2, -428($sp)
  add $t0, $t1, $t2
  sw $t0, -432($sp)
  lw $t1, -432($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -436($sp)
  li $t1, 6
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -440($sp)
  lw $t1, -52($sp)
  lw $t2, -440($sp)
  add $t0, $t1, $t2
  sw $t0, -444($sp)
  lw $t1, -444($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -448($sp)
  li $t1, 7
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -452($sp)
  lw $t1, -52($sp)
  lw $t2, -452($sp)
  add $t0, $t1, $t2
  sw $t0, -456($sp)
  lw $t1, -456($sp)
  lw $t1, 0($t1)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -460($sp)
  li $t1, 0
  lw $t2, -20($sp)
  sub $t0, $t1, $t2
  sw $t0, -464($sp)
  li $t1, 0
  lw $t2, -464($sp)
  sub $t0, $t1, $t2
  sw $t0, -468($sp)
  lw $t1, -20($sp)
  li $t2, 0
  bne $t1, $t2, label1664
  b label1663
  label1663:
  li $t0, 1
  sw $t0, -472($sp)
  b label1665
  label1664:
  li $t0, 0
  sw $t0, -472($sp)
  label1665:
  lw $t1, -472($sp)
  li $t2, 4
  mulo $t0, $t1, $t2
  sw $t0, -476($sp)
  lw $t1, -40($sp)
  lw $t2, -476($sp)
  add $t0, $t1, $t2
  sw $t0, -480($sp)
  lw $t1, -468($sp)
  lw $t2, -480($sp)
  lw $t2, 0($t2)
  mulo $t0, $t1, $t2
  sw $t0, -484($sp)
  lw $t1, -484($sp)
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
func_id_pwxl1M593c:
  sw $ra, 0($sp)
  li $t1, 57272
  move $t0, $t1
  sw $t0, -4($sp)
  li $t1, 30271
  li $t2, 0
  bne $t1, $t2, label1667
  b label1668
label1668:
  li $t1, 64817
  li $t2, 0
  bne $t1, $t2, label1666
  b label1667
  label1666:
  li $t0, 1
  sw $t0, -8($sp)
  b label1669
  label1667:
  li $t0, 0
  sw $t0, -8($sp)
  label1669:
  li $t1, 58403
  li $t2, 0
  bne $t1, $t2, label1670
  b label1672
label1672:
  lw $t1, -4($sp)
  li $t2, 0
  bne $t1, $t2, label1670
  b label1671
  label1670:
  li $t0, 1
  sw $t0, -12($sp)
  b label1673
  label1671:
  li $t0, 0
  sw $t0, -12($sp)
  label1673:
  lw $t1, -12($sp)
  sw $t1, -28($sp)
  lw $t1, -8($sp)
  sw $t1, -32($sp)
  sub $sp, $sp, 24
  jal func_id_eZzKtHKigb
  add $sp, $sp, 24
  move $t0, $v0
  sw $t0, -16($sp)
  lw $t1, -4($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -20($sp)
  li $t1, 34007
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
main:
  sw $ra, 0($sp)
  sub $sp, $sp, 12
  jal func_id_pwxl1M593c
  add $sp, $sp, 12
  move $t0, $v0
  sw $t0, -4($sp)
  lw $t1, -4($sp)
  li $v0, 1
  move $a0, $t1
  syscall
  li $v0, 4
  la $a0, _ret
  syscall
  li $t0, 0
  sw $t0, -8($sp)
  li $t1, 0
  move $v0, $t1
  lw $ra, 0($sp)
  jr $ra
