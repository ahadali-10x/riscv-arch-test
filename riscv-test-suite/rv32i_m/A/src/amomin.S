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
	
// opcode: amomin.w ; op1:x1; op2:x2; dest:x3; op1val:0x2;  op2val:0x3
TEST_AMO_OP(amomin.w, x3, x1, x2, 0x2, 0x3, my_test_data, x13, 0x0)

#endif

 # ---------------------------------------------------------------------------------------------
RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
my_test_data:
	.word 0x00000000

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
