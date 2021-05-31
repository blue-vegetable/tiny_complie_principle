* TINY Compilation to TM Code
* File: IO_for_int_char.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
  2:    INC  0,0,0 	read integer value
  3:     ST  0,0(5) 	read: store value
  4:     IN  0,0,0 	read integer value
  5:     ST  0,1(5) 	read: store value
* -> assign
* -> Op
* -> Id
  6:     LD  0,0(5) 	load id value
* <- Id
  7:     ST  0,0(6) 	op: push left
* -> Const
  8:    LDC  0,1(0) 	load const
* <- Const
  9:     LD  1,0(6) 	op: load left
 10:    ADD  0,1,0 	op +
* <- Op
 11:     ST  0,0(5) 	assign: store value
* <- assign
* -> assign
* -> Op
* -> Id
 12:     LD  0,1(5) 	load id value
* <- Id
 13:     ST  0,0(6) 	op: push left
* -> Const
 14:    LDC  0,1(0) 	load const
* <- Const
 15:     LD  1,0(6) 	op: load left
 16:    ADD  0,1,0 	op +
* <- Op
 17:     ST  0,1(5) 	assign: store value
* <- assign
* -> Id
 18:     LD  0,0(5) 	load id value
* <- Id
 19:   OUTC  0,0,0 	write ac
* -> Id
 20:     LD  0,1(5) 	load id value
* <- Id
 21:    OUT  0,0,0 	write ac
* End of execution.
 22:   HALT  0,0,0 	
