#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32IA")


# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN
#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*32.*); check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def TEST_CASE_1=True",sv32)

RVTEST_SIGBASE( x13,signature_x13_1)
  	
main:

li x1, 5                      //Initialize x1 to 5
la x2, my_test_data           //Load address of memory location

amomax.w x3, x1, (x2)         //Atomic max x1 to memory_location, store previous value to x3

lw x3, (x2)                   //Load new value from memory_location to x3

RVTEST_SIGUPD(x13, x3)


#endif

 # ---------------------------------------------------------------------------------------------
RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
my_test_data:
	.word 0x00000003

RVTEST_DATA_END

	

RVMODEL_DATA_BEGIN
rvtest_sig_begin:

// test signatures initialization
signature_x13_1:
    .fill 8*(XLEN/32),4,0xcafebeef

// trap signatures initialization
#ifdef rvtest_mtrap_routine
mtrap_sigptr:
    .fill 8*(XLEN/32),4,0xdeadbeef
#endif

rvtest_sig_end:
RVMODEL_DATA_END
