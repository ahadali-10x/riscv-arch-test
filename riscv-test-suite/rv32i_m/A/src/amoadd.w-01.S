
// This assembly file tests the amoadd.w instruction of the RISC-V RV32A extension for the amoadd.w covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IA")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*A.*);def TEST_CASE_1=True;",amoadd.w)

RVTEST_SIGBASE(x12,signature_x12_1)

inst_0:
// rs1 == rd != rs2, rs1==x4, rs2==x9, rd==x4, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
// opcode: amoadd.w ; op1:x4; op2:x9; dest:x4; op1val:-0x100001;  op2val:-0x80000000
TEST_AMO_OP(amoadd.w, x4, x4, x9, -0x100001, -0x80000000, x12, 0*XLEN/8, x7)

inst_1:
// rs1 != rs2 == rd, rs1==x16, rs2==x17, rd==x16, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
// opcode: amoadd.w ; op1:x16; op2:x17; dest:x16; op1val:0x8000;  op2val:0x8000
TEST_AMO_OP(amoadd.w, x16, x16, x17, 0x8000, 0x8000, x12, 2*XLEN/8, x7)

inst_2:
// rs1 != rs2 != rd, rs1==x20, rs2==x21, rd==x29, rs2_val == 0, 
// opcode: amoadd.w ; op1:x20; op2:x21; dest:x29; op1val:0x1;  op2val:0x1
TEST_AMO_OP(amoadd.w, x29, x20, x21, 0x1, 0x1, x12, 4*XLEN/8, x7)

inst_3:
// rs2 == rd != rs1, rs1==x10, rs2==x2, rd==x2, rs2_val == 1, 
// opcode: amoadd.w ; op1:x10; op2:x2; dest:x2; op1val:0x0;  op2val:0x1
TEST_AMO_OP(amoadd.w, x2, x10, x2, 0x0, 0x1, x12, 6*XLEN/8, x7)

inst_4:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x17, rs2==x3, rd==x23, rs2_val == 1431655765, 
// opcode: amoadd.w ; op1:x17; op2:x3; dest:x23; op1val:0x5;  op2val:0x55555555
TEST_AMO_OP(amoadd.w, x23, x17, x3, 0x5, 0x55555555, x12, 8*XLEN/8, x7)

inst_5:
// rs1==x2, rs2==x22, rd==x5, rs2_val == -1431655766, 
// opcode: amoadd.w ; op1:x2; op2:x22; dest:x5; op1val:-0x55555556;  op2val:-0x55555556
TEST_AMO_OP(amoadd.w, x5, x2, x22, -0x55555556, -0x55555556, x12, 10*XLEN/8, x7)

inst_6:
// rs1==x15, rs2==x29, rd==x3, rs2_val == 2, 
// opcode: amoadd.w ; op1:x15; op2:x29; dest:x3; op1val:0x20;  op2val:0x2
TEST_AMO_OP(amoadd.w, x3, x15, x29, 0x20, 0x2, x12, 12*XLEN/8, x7)

inst_7:
// rs1==x6, rs2==x24, rd==x1, rs2_val == -2, 
// opcode: amoadd.w ; op1:x6; op2:x24; dest:x1; op1val:0x80;  op2val:-0x2
TEST_AMO_OP(amoadd.w, x1, x6, x24, 0x80, -0x2, x12, 14*XLEN/8, x7)

inst_8:
// rs1==x11, rs2==x5, rd==x10, rs2_val == -3, 
// opcode: amoadd.w ; op1:x11; op2:x5; dest:x10; op1val:-0x9;  op2val:-0x3
TEST_AMO_OP(amoadd.w, x10, x11, x5, -0x9, -0x3, x12, 16*XLEN/8, x7)

inst_9:
// rs1==x9, rs2==x19, rd==x26, rs2_val == -5, 
// opcode: amoadd.w ; op1:x9; op2:x19; dest:x26; op1val:0x7;  op2val:-0x5
TEST_AMO_OP(amoadd.w, x26, x9, x19, 0x7, -0x5, x12, 18*XLEN/8, x7)

inst_10:
// rs1==x25, rs2==x14, rd==x27, rs2_val == -9, 
// opcode: amoadd.w ; op1:x25; op2:x14; dest:x27; op1val:0x7fffffff;  op2val:-0x9
TEST_AMO_OP(amoadd.w, x27, x25, x14, 0x7fffffff, -0x9, x12, 20*XLEN/8, x7)

inst_11:
// rs1==x8, rs2==x25, rd==x21, rs2_val == -17, 
// opcode: amoadd.w ; op1:x8; op2:x25; dest:x21; op1val:-0x5;  op2val:-0x11
TEST_AMO_OP(amoadd.w, x21, x8, x25, -0x5, -0x11, x12, 22*XLEN/8, x7)

inst_12:
// rs1==x29, rs2==x27, rd==x31, rs2_val == -33, 
// opcode: amoadd.w ; op1:x29; op2:x27; dest:x31; op1val:0x10;  op2val:-0x21
TEST_AMO_OP(amoadd.w, x31, x29, x27, 0x10, -0x21, x12, 24*XLEN/8, x7)

inst_13:
// rs1==x7, rs2==x23, rd==x19, rs2_val == -65, 
// opcode: amoadd.w ; op1:x7; op2:x23; dest:x19; op1val:0x10;  op2val:-0x41
TEST_AMO_OP(amoadd.w, x19, x7, x23, 0x10, -0x41, x12, 26*XLEN/8, x16)
RVTEST_SIGBASE(x2,signature_x2_0)

inst_14:
// rs1==x5, rs2==x7, rd==x9, rs2_val == -129, 
// opcode: amoadd.w ; op1:x5; op2:x7; dest:x9; op1val:0x2000000;  op2val:-0x81
TEST_AMO_OP(amoadd.w, x9, x5, x7, 0x2000000, -0x81, x2, 0*XLEN/8, x16)

inst_15:
// rs1==x23, rs2==x18, rd==x8, rs2_val == -257, 
// opcode: amoadd.w ; op1:x23; op2:x18; dest:x8; op1val:-0x400001;  op2val:-0x101
TEST_AMO_OP(amoadd.w, x8, x23, x18, -0x400001, -0x101, x2, 2*XLEN/8, x16)

inst_16:
// rs1==x24, rs2==x28, rd==x13, rs2_val == -513, 
// opcode: amoadd.w ; op1:x24; op2:x28; dest:x13; op1val:0x20000000;  op2val:-0x201
TEST_AMO_OP(amoadd.w, x13, x24, x28, 0x20000000, -0x201, x2, 4*XLEN/8, x16)

inst_17:
// rs1==x19, rs2==x11, rd==x12, rs2_val == -1025, 
// opcode: amoadd.w ; op1:x19; op2:x11; dest:x12; op1val:0x1000;  op2val:-0x401
TEST_AMO_OP(amoadd.w, x12, x19, x11, 0x1000, -0x401, x2, 6*XLEN/8, x16)

inst_18:
// rs1==x3, rs2==x1, rd==x0, rs2_val == -2049, 
// opcode: amoadd.w ; op1:x3; op2:x1; dest:x0; op1val:0xffbfffff;  op2val:-0x801
TEST_AMO_OP(amoadd.w, x0, x3, x1, 0xffbfffff, -0x801, x2, 8*XLEN/8, x16)

inst_19:
// rs1==x22, rs2==x0, rd==x24, rs2_val == -4097, 
// opcode: amoadd.w ; op1:x22; op2:x0; dest:x24; op1val:0xffffefff;  op2val:0x0
TEST_AMO_OP(amoadd.w, x24, x22, x0, 0xffffefff, 0x0, x2, 10*XLEN/8, x16)

inst_20:
// rs1==x14, rs2==x12, rd==x30, rs2_val == -8193, 
// opcode: amoadd.w ; op1:x14; op2:x12; dest:x30; op1val:0x1000;  op2val:-0x2001
TEST_AMO_OP(amoadd.w, x30, x14, x12, 0x1000, -0x2001, x2, 12*XLEN/8, x16)

inst_21:
// rs1==x31, rs2==x10, rd==x6, rs2_val == -16385, 
// opcode: amoadd.w ; op1:x31; op2:x10; dest:x6; op1val:0x800;  op2val:-0x4001
TEST_AMO_OP(amoadd.w, x6, x31, x10, 0x800, -0x4001, x2, 14*XLEN/8, x16)

inst_22:
// rs1==x26, rs2==x30, rd==x7, rs2_val == -32769, 
// opcode: amoadd.w ; op1:x26; op2:x30; dest:x7; op1val:0x4000;  op2val:-0x8001
TEST_AMO_OP(amoadd.w, x7, x26, x30, 0x4000, -0x8001, x2, 16*XLEN/8, x16)

inst_23:
// rs1==x13, rs2==x21, rd==x22, rs2_val == -65537, 
// opcode: amoadd.w ; op1:x13; op2:x21; dest:x22; op1val:0x400;  op2val:-0x10001
TEST_AMO_OP(amoadd.w, x22, x13, x21, 0x400, -0x10001, x2, 18*XLEN/8, x16)

inst_24:
// rs1==x28, rs2==x8, rd==x25, rs2_val == -131073, 
// opcode: amoadd.w ; op1:x28; op2:x8; dest:x25; op1val:0x400;  op2val:-0x20001
TEST_AMO_OP(amoadd.w, x25, x28, x8, 0x400, -0x20001, x2, 20*XLEN/8, x16)

inst_25:
// rs1==x30, rs2==x4, rd==x15, rs2_val == -262145, 
// opcode: amoadd.w ; op1:x30; op2:x4; dest:x15; op1val:0x9;  op2val:-0x40001
TEST_AMO_OP(amoadd.w, x15, x30, x4, 0x9, -0x40001, x2, 22*XLEN/8, x16)

inst_26:
// rs1==x27, rs2==x15, rd==x11, rs2_val == -524289, 
// opcode: amoadd.w ; op1:x27; op2:x15; dest:x11; op1val:0x100;  op2val:-0x80001
TEST_AMO_OP(amoadd.w, x11, x27, x15, 0x100, -0x80001, x2, 24*XLEN/8, x3)
RVTEST_SIGBASE(x2,signature_x2_1)

inst_27:
// rs1==x18, rs2==x31, rd==x20, rs2_val == -1048577, 
// opcode: amoadd.w ; op1:x18; op2:x31; dest:x20; op1val:0x20000;  op2val:-0x100001
TEST_AMO_OP(amoadd.w, x20, x18, x31, 0x20000, -0x100001, x2, 0*XLEN/8, x3)

inst_28:
// rs1==x21, rs2==x26, rd==x17, rs2_val == -2097153, 
// opcode: amoadd.w ; op1:x21; op2:x26; dest:x17; op1val:0x4000000;  op2val:-0x200001
TEST_AMO_OP(amoadd.w, x17, x21, x26, 0x4000000, -0x200001, x2, 2*XLEN/8, x3)

inst_29:
// rs1==x12, rs2==x6, rd==x28, rs2_val == -4194305, 
// opcode: amoadd.w ; op1:x12; op2:x6; dest:x28; op1val:0x2;  op2val:-0x400001
TEST_AMO_OP(amoadd.w, x28, x12, x6, 0x2, -0x400001, x2, 4*XLEN/8, x3)

inst_30:
// rs1==x1, rs2==x13, rd==x14, rs2_val == -8388609, 
// opcode: amoadd.w ; op1:x1; op2:x13; dest:x14; op1val:0x400000;  op2val:-0x800001
TEST_AMO_OP(amoadd.w, x14, x1, x13, 0x400000, -0x800001, x2, 6*XLEN/8, x3)

inst_31:
// rs2==x17, rd==x18, rs2_val == -16777217, 
// opcode: amoadd.w ; op1:x21; op2:x17; dest:x18; op1val:0x40000000;  op2val:-0x1000001
TEST_AMO_OP(amoadd.w, x18, x21, x17, 0x40000000, -0x1000001, x2, 8*XLEN/8, x3)

inst_32:
// rs2_val == -33554433, 
// opcode: amoadd.w ; op1:x30; op2:x20; dest:x31; op1val:0x55555555;  op2val:-0x2000001
TEST_AMO_OP(amoadd.w, x31, x30, x20, 0x55555555, -0x2000001, x2, 10*XLEN/8, x3)

inst_33:
// rs2_val == -67108865, 
// opcode: amoadd.w ; op1:x30; op2:x16; dest:x31; op1val:-0x6;  op2val:-0x4000001
TEST_AMO_OP(amoadd.w, x31, x30, x16, -0x6, -0x4000001, x2, 12*XLEN/8, x3)

inst_34:
// rs2_val == -134217729, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffff;  op2val:-0x8000001
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xff7fffff, -0x8000001, x2, 14*XLEN/8, x3)

inst_35:
// rs2_val == -268435457, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x2000;  op2val:-0x10000001
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x2000, -0x10000001, x2, 16*XLEN/8, x3)

inst_36:
// rs2_val == 134217728, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x11;  op2val:0x8000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x11, 0x8000000, x2, 18*XLEN/8, x3)

inst_37:
// rs2_val == 268435456, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x1001;  op2val:0x10000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x1001, 0x10000000, x2, 20*XLEN/8, x3)

inst_38:
// rs2_val == 536870912, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffdf;  op2val:0x20000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffffffdf, 0x20000000, x2, 22*XLEN/8, x3)

inst_39:
// rs2_val == 1073741824, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x13;  op2val:0x40000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x13, 0x40000000, x2, 24*XLEN/8, x3)

inst_40:
// rs2_val == -536870913, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xfbffffff;  op2val:-0x20000001
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xfbffffff, -0x20000001, x2, 26*XLEN/8, x3)

inst_41:
// rs2_val == -1073741825, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x4000;  op2val:-0x40000001
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x4000, -0x40000001, x2, 28*XLEN/8, x3)

inst_42:
// rs2_val == 4, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x1000001;  op2val:0x4
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x1000001, 0x4, x2, 30*XLEN/8, x3)

inst_43:
// rs2_val == 8, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x10000;  op2val:0x8
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x10000, 0x8, x2, 32*XLEN/8, x3)

inst_44:
// rs2_val == 16, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x4;  op2val:0x10
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x4, 0x10, x2, 34*XLEN/8, x3)

inst_45:
// rs2_val == 32, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x1000;  op2val:0x20
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x1000, 0x20, x2, 36*XLEN/8, x3)

inst_46:
// rs2_val == 64, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x4000000;  op2val:0x40
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x4000000, 0x40, x2, 38*XLEN/8, x3)

inst_47:
// rs2_val == 128, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x7;  op2val:0x80
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x7, 0x80, x2, 40*XLEN/8, x3)

inst_48:
// rs2_val == 256, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x200000;  op2val:0x100
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x200000, 0x100, x2, 42*XLEN/8, x3)

inst_49:
// rs2_val == 512, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x7;  op2val:0x200
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x7, 0x200, x2, 44*XLEN/8, x3)

inst_50:
// rs2_val == 1024, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x41;  op2val:0x400
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x41, 0x400, x2, 46*XLEN/8, x3)

inst_51:
// rs2_val == 2048, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x10000001;  op2val:0x800
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x10000001, 0x800, x2, 48*XLEN/8, x3)

inst_52:
// rs2_val == 4096, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffef;  op2val:0x1000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffffffef, 0x1000, x2, 50*XLEN/8, x3)

inst_53:
// rs2_val == 8192, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x10000000;  op2val:0x2000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x10000000, 0x2000, x2, 52*XLEN/8, x3)

inst_54:
// rs2_val == 16384, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff;  op2val:0x4000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xbfffffff, 0x4000, x2, 54*XLEN/8, x3)

inst_55:
// rs2_val == 32768, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xf;  op2val:0x8000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xf, 0x8000, x2, 56*XLEN/8, x3)

inst_56:
// rs2_val == 65536, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x2001;  op2val:0x10000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x2001, 0x10000, x2, 58*XLEN/8, x3)

inst_57:
// rs2_val == 131072, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff;  op2val:0x20000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffdfffff, 0x20000, x2, 60*XLEN/8, x3)

inst_58:
// rs2_val == 262144, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x8000001;  op2val:0x40000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x8000001, 0x40000, x2, 62*XLEN/8, x3)

inst_59:
// rs2_val == 524288, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe;  op2val:0x80000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xfffffffe, 0x80000, x2, 64*XLEN/8, x3)

inst_60:
// rs2_val == 1048576, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x801;  op2val:0x100000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x801, 0x100000, x2, 66*XLEN/8, x3)

inst_61:
// rs2_val == 2097152, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffff;  op2val:0x200000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xff7fffff, 0x200000, x2, 68*XLEN/8, x3)

inst_62:
// rs2_val == 4194304, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf;  op2val:0x400000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffffffbf, 0x400000, x2, 70*XLEN/8, x3)

inst_63:
// rs2_val == 8388608, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:-0x401;  op2val:0x800000
TEST_AMO_OP(amoadd.w, x31, x30, x29, -0x401, 0x800000, x2, 72*XLEN/8, x3)

inst_64:
// rs2_val == 16777216, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff;  op2val:0x1000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xbfffffff, 0x1000000, x2, 74*XLEN/8, x3)

inst_65:
// rs2_val == 33554432, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x40000000;  op2val:0x2000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x40000000, 0x2000000, x2, 76*XLEN/8, x3)

inst_66:
// rs2_val == 67108864, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf;  op2val:0x4000000
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffffffbf, 0x4000000, x2, 78*XLEN/8, x3)

inst_67:
// rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x8000;  op2val:0x7fffffff
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x8000, 0x7fffffff, x2, 80*XLEN/8, x3)

inst_68:
// rs2_val == 0, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0x1;  op2val:0x0
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0x1, 0x0, x2, 82*XLEN/8, x3)

inst_69:
// rs2_val == -2049, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff;  op2val:-0x801
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffbfffff, -0x801, x2, 84*XLEN/8, x3)

inst_70:
// rs2_val == -4097, 
// opcode: amoadd.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff;  op2val:-0x1001
TEST_AMO_OP(amoadd.w, x31, x30, x29, 0xffffefff, -0x1001, x2, 86*XLEN/8, x3)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x12_0:
    .fill 0*((XLEN/8)/4),4,0xdeadbeef


signature_x12_1:
    .fill 28*((XLEN/8)/4),4,0xdeadbeef


signature_x2_0:
    .fill 26*((XLEN/8)/4),4,0xdeadbeef


signature_x2_1:
    .fill 88*((XLEN/8)/4),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;

mtrap_sigptr:
    .fill 64*XLEN/32,4,0xdeadbeef

tsig_end_canary:
CANARY;
#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif


sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
