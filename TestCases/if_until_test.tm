* TINY Compilation to TM Code
* File: if_until_test.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> assign
* -> Const
  2:    LDC  0,0(0) 	load const
* <- Const
  3:     ST  0,0(5) 	assign: store value
* <- assign
* -> assign
* -> Const
  4:    LDC  0,1(0) 	load const
* <- Const
  5:     ST  0,1(5) 	assign: store value
* <- assign
* -> assign
* -> Const
  6:    LDC  0,67(0) 	load const
* <- Const
  7:     ST  0,2(5) 	assign: store value
* <- assign
* -> if
* -> Bool
* -> Bool
* -> Op
* -> Id
  8:     LD  0,0(5) 	load id value
* <- Id
  9:     ST  0,0(6) 	op: push left
* -> Const
 10:    LDC  0,0(0) 	load const
* <- Const
 11:     LD  1,0(6) 	op: load left
 12:    SUB  0,0,1 	op >
 13:    JLT  0,2(7) 	br if true
 14:    LDC  0,0(0) 	false case
 15:    LDA  7,1(7) 	unconditional jmp
 16:    LDC  0,1(0) 	true case
* <- Op
 17:    LDA  2,0(0) 	store the first bool value to reg[ac2]
* -> Op
* -> Id
 18:     LD  0,1(5) 	load id value
* <- Id
 19:     ST  0,0(6) 	op: push left
* -> Const
 20:    LDC  0,0(0) 	load const
* <- Const
 21:     LD  1,0(6) 	op: load left
 22:    SUB  0,0,1 	op >
 23:    JLT  0,2(7) 	br if true
 24:    LDC  0,0(0) 	false case
 25:    LDA  7,1(7) 	unconditional jmp
 26:    LDC  0,1(0) 	true case
* <- Op
 27:    ADD  2,0,2 	add two bool results to reg[ac2]
 28:    LDA  0,0(2) 	put reg[ac2] into reg[ac]
* <- Bool
 29:    LDA  2,0(0) 	store the first bool value to reg[ac2]
* -> Op
* -> Id
 30:     LD  0,0(5) 	load id value
* <- Id
 31:     ST  0,0(6) 	op: push left
* -> Const
 32:    LDC  0,10(0) 	load const
* <- Const
 33:     LD  1,0(6) 	op: load left
 34:    SUB  0,1,0 	op <
 35:    JLT  0,2(7) 	br if true
 36:    LDC  0,0(0) 	false case
 37:    LDA  7,1(7) 	unconditional jmp
 38:    LDC  0,1(0) 	true case
* <- Op
 39:    ADD  2,0,2 	add two bool results to reg[ac2]
 40:    LDC  0,2(0) 	set reg[ac] to 2 to sub reg[ac2] 
 41:    SUB  0,2,0 	ac2 from 2 to 0 then and is true
 42:    JNE  0,2(7) 	if ac is zero ,then make it not zero
 43:    LDC  0,1(0) 	make reg[ac] non-zero
 44:    LDA  7,1(7) 	unconditional jmp
 45:    LDC  0,0(0) 	make reg[ac] zero
* <- Bool
* if: jump to else belongs here
* -> assign
* -> Op
* -> Id
 47:     LD  0,2(5) 	load id value
* <- Id
 48:     ST  0,0(6) 	op: push left
* -> Const
 49:    LDC  0,1(0) 	load const
* <- Const
 50:     LD  1,0(6) 	op: load left
 51:    ADD  0,1,0 	op +
* <- Op
 52:     ST  0,2(5) 	assign: store value
* <- assign
* -> Id
 53:     LD  0,2(5) 	load id value
* <- Id
 54:   OUTC  0,0,0 	write ac
* if: jump to end belongs here
 46:    JEQ  0,9(7) 	if: jmp to else
* -> assign
* -> Op
* -> Id
 56:     LD  0,2(5) 	load id value
* <- Id
 57:     ST  0,0(6) 	op: push left
* -> Const
 58:    LDC  0,2(0) 	load const
* <- Const
 59:     LD  1,0(6) 	op: load left
 60:    ADD  0,1,0 	op +
* <- Op
 61:     ST  0,2(5) 	assign: store value
* <- assign
* -> Id
 62:     LD  0,2(5) 	load id value
* <- Id
 63:   OUTC  0,0,0 	write ac
 55:    LDA  7,8(7) 	jmp to end
* <- if
* -> assign
* -> Const
 64:    LDC  0,10(0) 	load const
* <- Const
 65:     ST  0,0(5) 	assign: store value
* <- assign
* -> assign
* -> Const
 66:    LDC  0,0(0) 	load const
* <- Const
 67:     ST  0,1(5) 	assign: store value
* <- assign
* -> repeat
* repeat: jump after body comes back here
* -> assign
* -> Op
* -> Id
 68:     LD  0,0(5) 	load id value
* <- Id
 69:     ST  0,0(6) 	op: push left
* -> Const
 70:    LDC  0,1(0) 	load const
* <- Const
 71:     LD  1,0(6) 	op: load left
 72:    SUB  0,1,0 	op -
* <- Op
 73:     ST  0,0(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Id
 74:     LD  0,1(5) 	load id value
* <- Id
 75:     ST  0,0(6) 	op: push left
* -> Const
 76:    LDC  0,1(0) 	load const
* <- Const
 77:     LD  1,0(6) 	op: load left
 78:    ADD  0,1,0 	op +
* <- Op
 79:     ST  0,1(5) 	assign: store value
* <- assign
* -> Id
 80:     LD  0,1(5) 	load id value
* <- Id
 81:    OUT  0,0,0 	write ac
* -> Bool
* -> Op
* -> Id
 82:     LD  0,0(5) 	load id value
* <- Id
 83:     ST  0,0(6) 	op: push left
* -> Const
 84:    LDC  0,5(0) 	load const
* <- Const
 85:     LD  1,0(6) 	op: load left
 86:    SUB  0,1,0 	op <
 87:    JLT  0,2(7) 	br if true
 88:    LDC  0,0(0) 	false case
 89:    LDA  7,1(7) 	unconditional jmp
 90:    LDC  0,1(0) 	true case
* <- Op
 91:    LDA  2,0(0) 	store the first bool value to reg[ac2]
* -> Op
* -> Id
 92:     LD  0,1(5) 	load id value
* <- Id
 93:     ST  0,0(6) 	op: push left
* -> Const
 94:    LDC  0,6(0) 	load const
* <- Const
 95:     LD  1,0(6) 	op: load left
 96:    SUB  0,0,1 	op >
 97:    JLT  0,2(7) 	br if true
 98:    LDC  0,0(0) 	false case
 99:    LDA  7,1(7) 	unconditional jmp
100:    LDC  0,1(0) 	true case
* <- Op
101:    ADD  2,0,2 	add two bool results to reg[ac2]
102:    LDC  0,2(0) 	set reg[ac] to 2 to sub reg[ac2] 
103:    SUB  0,2,0 	ac2 from 2 to 0 then and is true
104:    JNE  0,2(7) 	if ac is zero ,then make it not zero
105:    LDC  0,1(0) 	make reg[ac] non-zero
106:    LDA  7,1(7) 	unconditional jmp
107:    LDC  0,0(0) 	make reg[ac] zero
* <- Bool
108:    JEQ  0,-41(7) 	repeat: jmp back to body
* <- repeat
* End of execution.
109:   HALT  0,0,0 	
