* TINY Compilation to TM Code
* File: testID_Num.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
* -> assign
* -> Const
  2:    LDC  0,-1(0) 	load const
* <- Const
  3:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
  4:     LD  0,0(5) 	load id value
* <- Id
  5:    OUT  0,0,0 	write ac
* -> assign
* -> Const
  6:    LDC  0,1(0) 	load const
* <- Const
  7:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
  8:     LD  0,0(5) 	load id value
* <- Id
  9:    OUT  0,0,0 	write ac
* -> assign
* -> Const
 10:    LDC  0,0(0) 	load const
* <- Const
 11:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
 12:     LD  0,0(5) 	load id value
* <- Id
 13:    OUT  0,0,0 	write ac
* -> assign
* -> Op
* -> Id
 14:     LD  0,0(5) 	load id value
* <- Id
 15:     ST  0,0(6) 	op: push left
* -> Const
 16:    LDC  0,-1(0) 	load const
* <- Const
 17:     LD  1,0(6) 	op: load left
 18:    ADD  0,1,0 	op +
* <- Op
 19:     ST  0,0(5) 	assign: store value
* <- assign
* -> Id
 20:     LD  0,0(5) 	load id value
* <- Id
 21:    OUT  0,0,0 	write ac
* End of execution.
 22:   HALT  0,0,0 	
