* TINY Compilation to TM Code
* File: SAMPLE.tm
* Standard prelude:
  0:     LD  6,0(0) 	load maxaddress from location 0
  1:     ST  0,0(0) 	clear location 0
* End of standard prelude.
  2:    INC  0,0,0 	read integer value
  3:     ST  0,0(5) 	read: store value
* -> Id
  4:     LD  0,0(5) 	load id value
* <- Id
  5:    OUT  0,0,0 	write ac
* End of execution.
  6:   HALT  0,0,0 	
