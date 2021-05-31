* TINY Compilation to TM Code
* File: SAMPLE.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> assign
* -> Const
  2:    LDC  0,2(0) 	load const
* <- Const
  3:     ST  0,0(5) 	assign: store value
* <- assign
* -> if
* -> Bool
* -> Bool
* -> Op
* -> Id
  4:     LD  0,0(5) 	load id value
* <- Id
  5:     ST  0,0(6) 	op: push left
* -> Const
  6:    LDC  0,3(0) 	load const
* <- Const
  7:     LD  1,0(6) 	op: load left
  8:    SUB  0,0,1 	op >
  9:    JLT  0,2(7) 	br if true
 10:    LDC  0,0(0) 	false case
 11:    LDA  7,1(7) 	unconditional jmp
 12:    LDC  0,1(0) 	true case
* <- Op
 13:    LDA  2,0(0) 	store the first bool value to reg[ac2]
* -> Op
* -> Id
 14:     LD  0,0(5) 	load id value
* <- Id
 15:     ST  0,0(6) 	op: push left
* -> Const
 16:    LDC  0,-3(0) 	load const
* <- Const
 17:     LD  1,0(6) 	op: load left
 18:    SUB  0,1,0 	op <
 19:    JLT  0,2(7) 	br if true
 20:    LDC  0,0(0) 	false case
 21:    LDA  7,1(7) 	unconditional jmp
 22:    LDC  0,1(0) 	true case
* <- Op
 23:    ADD  2,0,2 	add two bool results to reg[ac2]
 24:    LDC  0,1(0) 	set reg[ac] to 1 to sub reg[ac2] 
 25:    LDA  0,0(2) 	put reg[ac2] into reg[ac1]
* <- Bool
 26:    LDA  2,0(0) 	store the first bool value to reg[ac2]
* -> Op
* -> Id
 27:     LD  0,0(5) 	load id value
* <- Id
 28:     ST  0,0(6) 	op: push left
* -> Const
 29:    LDC  0,2(0) 	load const
* <- Const
 30:     LD  1,0(6) 	op: load left
 31:    SUB  0,1,0 	op ==
 32:    JEQ  0,2(7) 	br if true
 33:    LDC  0,0(0) 	false case
 34:    LDA  7,1(7) 	unconditional jmp
 35:    LDC  0,1(0) 	true case
* <- Op
 36:    ADD  2,0,2 	add two bool results to reg[ac2]
 37:    LDC  0,1(0) 	set reg[ac] to 1 to sub reg[ac2] 
 38:    LDA  0,0(2) 	put reg[ac2] into reg[ac1]
 39:    LDC  0,2(0) 	set reg[ac] to 1 to sub reg[ac2] 
 40:    SUB  2,2,0 	ac2 from 2 to 1 then it is enough for and
 41:    LDA  0,0(2) 	put reg[ac2] into reg[ac1]
* <- Bool
* if: jump to else belongs here
* -> assign
* -> Const
 43:    LDC  0,0(0) 	load const
* <- Const
 44:     ST  0,0(5) 	assign: store value
* <- assign
* if: jump to end belongs here
 42:    JEQ  0,3(7) 	if: jmp to else
 45:    LDA  7,0(7) 	jmp to end
* <- if
* -> Id
 46:     LD  0,0(5) 	load id value
* <- Id
 47:    OUT  0,0,0 	write ac
* End of execution.
 48:   HALT  0,0,0 	
