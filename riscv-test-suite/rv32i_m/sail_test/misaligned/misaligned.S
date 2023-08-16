
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IAC")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*A.*C);def TEST_CASE_1=True;",amoadd)

RVTEST_SIGBASE( x3,signature_x3_1)

main:

//This test checks condition if by disabling C next PC would become misaligned.
csrr x1, misa            //Readind Misa
RVTEST_SIGUPD(x3, x1)    //Storing in the signature

li x2, 0xFFFFFFFB
and x1, x1, x2           //Changing the value for disabling C extension
c.li x5, 4               // Added a compressed instruction to make PC[1] == 1

csrw misa, x1            //Writing Misa

csrr x4, misa            //Readind Misa
RVTEST_SIGUPD(x3, x4)    //Storing in the signature

#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_x3_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
