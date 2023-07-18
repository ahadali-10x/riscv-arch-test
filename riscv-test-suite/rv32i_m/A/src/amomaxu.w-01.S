
// This assembly file tests the amomaxu.w instruction of the RISC-V RV32A extension for the amomaxu.w covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*A.*);def TEST_CASE_1=True;",amomaxu.w)

RVTEST_SIGBASE(x4,signature_x4_1)

inst_0:
// rs1 == rd != rs2, rs1==x13, rs2==x31, rd==x13, rs2_val == (2**(xlen)-1), 
// opcode: amomaxu.w ; op1:x13; op2:x31; dest:x13; op1val:0xfffbffff;  op2val:0xffffffff
TEST_AMO_OP(amomaxu.w, x13, x13, x31, 0xfffbffff, 0xffffffff, x4, 0*XLEN/8, x14)

inst_1:
// rs2 == rd != rs1, rs1==x8, rs2==x0, rd==x0, rs2_val == 0, 
// opcode: amomaxu.w ; op1:x8; op2:x0; dest:x0; op1val:0x800;  op2val:0x0
TEST_AMO_OP(amomaxu.w, x0, x8, x0, 0x800, 0x0, x4, 2*XLEN/8, x14)

inst_2:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x3, rs2==x16, rd==x28, rs2_val == 1, 
// opcode: amomaxu.w ; op1:x3; op2:x16; dest:x28; op1val:0x7fffffff;  op2val:0x1
TEST_AMO_OP(amomaxu.w, x28, x3, x16, 0x7fffffff, 0x1, x4, 4*XLEN/8, x14)

inst_3:
// rs1 == rs2 == rd, rs1==x16, rs2==x6, rd==x16, rs2_val == 1431655765, 
// opcode: amomaxu.w ; op1:x16; op2:x6; dest:x16; op1val:0x0;  op2val:0x0
TEST_AMO_OP(amomaxu.w, x16, x16, x6, 0x0, 0x0, x4, 6*XLEN/8, x14)

inst_4:
// rs1 == rs2 != rd, rs1==x10, rs2==x10, rd==x17, rs2_val == 2863311530, 
// opcode: amomaxu.w ; op1:x10; op2:x10; dest:x17; op1val:0xffefffff;  op2val:0xffefffff
TEST_AMO_OP(amomaxu.w, x17, x10, x10, 0xffefffff, 0xffefffff, x4, 8*XLEN/8, x14)

inst_5:
// rs1==x1, rs2==x7, rd==x27, rs2_val == 2, 
// opcode: amomaxu.w ; op1:x1; op2:x7; dest:x27; op1val:0x4000;  op2val:0x2
TEST_AMO_OP(amomaxu.w, x27, x1, x7, 0x4000, 0x2, x4, 10*XLEN/8, x14)

inst_6:
// rs1==x21, rs2==x18, rd==x7, rs2_val == 4, 
// opcode: amomaxu.w ; op1:x21; op2:x18; dest:x7; op1val:0x800000;  op2val:0x4
TEST_AMO_OP(amomaxu.w, x7, x21, x18, 0x800000, 0x4, x4, 12*XLEN/8, x14)

inst_7:
// rs1==x30, rs2==x13, rd==x20, rs2_val == 4294967294, 
// opcode: amomaxu.w ; op1:x30; op2:x13; dest:x20; op1val:0xf;  op2val:0xfffffffe
TEST_AMO_OP(amomaxu.w, x20, x30, x13, 0xf, 0xfffffffe, x4, 14*XLEN/8, x14)

inst_8:
// rs1==x11, rs2==x8, rd==x22, rs2_val == 4294967293, 
// opcode: amomaxu.w ; op1:x11; op2:x8; dest:x22; op1val:0xfffbffff;  op2val:0xfffffffd
TEST_AMO_OP(amomaxu.w, x22, x11, x8, 0xfffbffff, 0xfffffffd, x4, 16*XLEN/8, x14)

inst_9:
// rs1==x24, rs2==x5, rd==x25, rs2_val == 4294967291, 
// opcode: amomaxu.w ; op1:x24; op2:x5; dest:x25; op1val:0x200;  op2val:0xfffffffb
TEST_AMO_OP(amomaxu.w, x25, x24, x5, 0x200, 0xfffffffb, x4, 18*XLEN/8, x14)

inst_10:
// rs1==x27, rs2==x12, rd==x18, rs2_val == 4294967287, 
// opcode: amomaxu.w ; op1:x27; op2:x12; dest:x18; op1val:0x80000000;  op2val:0xfffffff7
TEST_AMO_OP(amomaxu.w, x18, x27, x12, 0x80000000, 0xfffffff7, x4, 20*XLEN/8, x14)

inst_11:
// rs1==x5, rs2==x21, rd==x9, rs2_val == 4294967279, 
// opcode: amomaxu.w ; op1:x5; op2:x21; dest:x9; op1val:0xffbfffff;  op2val:0xffffffef
TEST_AMO_OP(amomaxu.w, x9, x5, x21, 0xffbfffff, 0xffffffef, x4, 22*XLEN/8, x14)

inst_12:
// rs1==x31, rs2==x15, rd==x24, rs2_val == 4294967263, 
// opcode: amomaxu.w ; op1:x31; op2:x15; dest:x24; op1val:0x400000;  op2val:0xffffffdf
TEST_AMO_OP(amomaxu.w, x24, x31, x15, 0x400000, 0xffffffdf, x4, 24*XLEN/8, x14)

inst_13:
// rs1==x25, rs2==x3, rd==x30, rs2_val == 4294967231, 
// opcode: amomaxu.w ; op1:x25; op2:x3; dest:x30; op1val:0x20;  op2val:0xffffffbf
TEST_AMO_OP(amomaxu.w, x30, x25, x3, 0x20, 0xffffffbf, x4, 26*XLEN/8, x14)

inst_14:
// rs1==x9, rs2==x25, rd==x11, rs2_val == 4294967167, 
// opcode: amomaxu.w ; op1:x9; op2:x25; dest:x11; op1val:0x2000;  op2val:0xffffff7f
TEST_AMO_OP(amomaxu.w, x11, x9, x25, 0x2000, 0xffffff7f, x4, 28*XLEN/8, x14)

inst_15:
// rs1==x19, rs2==x1, rd==x2, rs2_val == 4294967039, 
// opcode: amomaxu.w ; op1:x19; op2:x1; dest:x2; op1val:0x4000;  op2val:0xfffffeff
TEST_AMO_OP(amomaxu.w, x2, x19, x1, 0x4000, 0xfffffeff, x4, 30*XLEN/8, x14)
RVTEST_SIGBASE(x9,signature_x9_0)

inst_16:
// rs1==x18, rs2==x26, rd==x5, rs2_val == 4294966783, 
// opcode: amomaxu.w ; op1:x18; op2:x26; dest:x5; op1val:0x7fffffff;  op2val:0xfffffdff
TEST_AMO_OP(amomaxu.w, x5, x18, x26, 0x7fffffff, 0xfffffdff, x9, 0*XLEN/8, x4)

inst_17:
// rs1==x12, rs2==x20, rd==x6, rs2_val == 4294966271, 
// opcode: amomaxu.w ; op1:x12; op2:x20; dest:x6; op1val:0x6;  op2val:0xfffffbff
TEST_AMO_OP(amomaxu.w, x6, x12, x20, 0x6, 0xfffffbff, x9, 2*XLEN/8, x4)

inst_18:
// rs1==x15, rs2==x23, rd==x8, rs2_val == 4294965247, 
// opcode: amomaxu.w ; op1:x15; op2:x23; dest:x8; op1val:0x9;  op2val:0xfffff7ff
TEST_AMO_OP(amomaxu.w, x8, x15, x23, 0x9, 0xfffff7ff, x9, 4*XLEN/8, x4)

inst_19:
// rs1==x23, rs2==x30, rd==x3, rs2_val == 4294963199, 
// opcode: amomaxu.w ; op1:x23; op2:x30; dest:x3; op1val:0xffffefff;  op2val:0xffffefff
TEST_AMO_OP(amomaxu.w, x3, x23, x30, 0xffffefff, 0xffffefff, x9, 6*XLEN/8, x4)

inst_20:
// rs1==x2, rs2==x17, rd==x19, rs2_val == 4294959103, 
// opcode: amomaxu.w ; op1:x2; op2:x17; dest:x19; op1val:0xbfffffff;  op2val:0xffffdfff
TEST_AMO_OP(amomaxu.w, x19, x2, x17, 0xbfffffff, 0xffffdfff, x9, 8*XLEN/8, x4)

inst_21:
// rs1==x29, rs2==x22, rd==x21, rs2_val == 4294950911, 
// opcode: amomaxu.w ; op1:x29; op2:x22; dest:x21; op1val:0x3;  op2val:0xffffbfff
TEST_AMO_OP(amomaxu.w, x21, x29, x22, 0x3, 0xffffbfff, x9, 10*XLEN/8, x4)

inst_22:
// rs1==x7, rs2==x14, rd==x26, rs2_val == 4294934527, 
// opcode: amomaxu.w ; op1:x7; op2:x14; dest:x26; op1val:0x11;  op2val:0xffff7fff
TEST_AMO_OP(amomaxu.w, x26, x7, x14, 0x11, 0xffff7fff, x9, 12*XLEN/8, x4)

inst_23:
// rs1==x26, rs2==x11, rd==x14, rs2_val == 4294901759, 
// opcode: amomaxu.w ; op1:x26; op2:x11; dest:x14; op1val:0x4000;  op2val:0xfffeffff
TEST_AMO_OP(amomaxu.w, x14, x26, x11, 0x4000, 0xfffeffff, x9, 14*XLEN/8, x4)

inst_24:
// rs1==x14, rs2==x2, rd==x12, rs2_val == 4294836223, 
// opcode: amomaxu.w ; op1:x14; op2:x2; dest:x12; op1val:0x100;  op2val:0xfffdffff
TEST_AMO_OP(amomaxu.w, x12, x14, x2, 0x100, 0xfffdffff, x9, 16*XLEN/8, x4)

inst_25:
// rs1==x28, rs2==x27, rd==x23, rs2_val == 4294705151, 
// opcode: amomaxu.w ; op1:x28; op2:x27; dest:x23; op1val:0xa;  op2val:0xfffbffff
TEST_AMO_OP(amomaxu.w, x23, x28, x27, 0xa, 0xfffbffff, x9, 18*XLEN/8, x4)

inst_26:
// rs1==x20, rs2==x24, rd==x31, rs2_val == 4294443007, 
// opcode: amomaxu.w ; op1:x20; op2:x24; dest:x31; op1val:0x8000;  op2val:0xfff7ffff
TEST_AMO_OP(amomaxu.w, x31, x20, x24, 0x8000, 0xfff7ffff, x9, 20*XLEN/8, x4)

inst_27:
// rs1==x17, rs2==x19, rd==x1, rs2_val == 4293918719, 
// opcode: amomaxu.w ; op1:x17; op2:x19; dest:x1; op1val:0x4000000;  op2val:0xffefffff
TEST_AMO_OP(amomaxu.w, x1, x17, x19, 0x4000000, 0xffefffff, x9, 22*XLEN/8, x4)

inst_28:
// rs1==x22, rs2==x4, rd==x29, rs2_val == 4292870143, 
// opcode: amomaxu.w ; op1:x22; op2:x4; dest:x29; op1val:0x10000000;  op2val:0xffdfffff
TEST_AMO_OP(amomaxu.w, x29, x22, x4, 0x10000000, 0xffdfffff, x9, 24*XLEN/8, x2)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_29:
// rs1==x6, rs2==x9, rd==x4, rs2_val == 4290772991, 
// opcode: amomaxu.w ; op1:x6; op2:x9; dest:x4; op1val:0xfdffffff;  op2val:0xffbfffff
TEST_AMO_OP(amomaxu.w, x4, x6, x9, 0xfdffffff, 0xffbfffff, x1, 0*XLEN/8, x2)

inst_30:
// rs1==x4, rs2==x28, rd==x15, rs2_val == 4286578687, 
// opcode: amomaxu.w ; op1:x4; op2:x28; dest:x15; op1val:0xbfffffff;  op2val:0xff7fffff
TEST_AMO_OP(amomaxu.w, x15, x4, x28, 0xbfffffff, 0xff7fffff, x1, 2*XLEN/8, x2)

inst_31:
// rs2==x29, rd==x10, rs2_val == 4278190079, 
// opcode: amomaxu.w ; op1:x26; op2:x29; dest:x10; op1val:0x7fffffff;  op2val:0xfeffffff
TEST_AMO_OP(amomaxu.w, x10, x26, x29, 0x7fffffff, 0xfeffffff, x1, 4*XLEN/8, x2)

inst_32:
// rs2_val == 4261412863, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x80;  op2val:0xfdffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x80, 0xfdffffff, x1, 6*XLEN/8, x2)

inst_33:
// rs2_val == 4227858431, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff;  op2val:0xfbffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffdfff, 0xfbffffff, x1, 8*XLEN/8, x2)

inst_34:
// rs2_val == 4160749567, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffbfff;  op2val:0xf7ffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffbfff, 0xf7ffffff, x1, 10*XLEN/8, x2)

inst_35:
// rs2_val == 4026531839, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7;  op2val:0xefffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffffff7, 0xefffffff, x1, 12*XLEN/8, x2)

inst_36:
// rs2_val == 3758096383, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff;  op2val:0xdfffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffdfffff, 0xdfffffff, x1, 14*XLEN/8, x2)

inst_37:
// rs2_val == 268435456, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffefff;  op2val:0x10000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffefff, 0x10000000, x1, 16*XLEN/8, x2)

inst_38:
// rs2_val == 536870912, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x2;  op2val:0x20000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x2, 0x20000000, x1, 18*XLEN/8, x2)

inst_39:
// rs2_val == 1073741824, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff;  op2val:0x40000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffdffff, 0x40000000, x1, 20*XLEN/8, x2)

inst_40:
// rs2_val == 2147483648, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff;  op2val:0x80000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffbfffff, 0x80000000, x1, 22*XLEN/8, x2)

inst_41:
// rs2_val == 3221225471, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x400;  op2val:0xbfffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x400, 0xbfffffff, x1, 24*XLEN/8, x2)

inst_42:
// rs2_val == 2147483647, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x7fffffff;  op2val:0x7fffffff
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x7fffffff, 0x7fffffff, x1, 26*XLEN/8, x2)

inst_43:
// rs2_val == 8, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffbf;  op2val:0x8
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffffbf, 0x8, x1, 28*XLEN/8, x2)

inst_44:
// rs2_val == 16, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x7;  op2val:0x10
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x7, 0x10, x1, 30*XLEN/8, x2)

inst_45:
// rs2_val == 32, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x80000000;  op2val:0x20
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x80000000, 0x20, x1, 32*XLEN/8, x2)

inst_46:
// rs2_val == 64, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff;  op2val:0x40
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffffdff, 0x40, x1, 34*XLEN/8, x2)

inst_47:
// rs2_val == 128, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x2000000;  op2val:0x80
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x2000000, 0x80, x1, 36*XLEN/8, x2)

inst_48:
// rs2_val == 256, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x9;  op2val:0x100
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x9, 0x100, x1, 38*XLEN/8, x2)

inst_49:
// rs2_val == 512, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffff7f;  op2val:0x200
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffff7f, 0x200, x1, 40*XLEN/8, x2)

inst_50:
// rs2_val == 1024, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xf;  op2val:0x400
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xf, 0x400, x1, 42*XLEN/8, x2)

inst_51:
// rs2_val == 2048, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfeffffff;  op2val:0x800
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfeffffff, 0x800, x1, 44*XLEN/8, x2)

inst_52:
// rs2_val == 4096, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x200000;  op2val:0x1000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x200000, 0x1000, x1, 46*XLEN/8, x2)

inst_53:
// rs2_val == 8192, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff;  op2val:0x2000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffefffff, 0x2000, x1, 48*XLEN/8, x2)

inst_54:
// rs2_val == 16384, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfff7ffff;  op2val:0x4000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfff7ffff, 0x4000, x1, 50*XLEN/8, x2)

inst_55:
// rs2_val == 32768, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffdfff;  op2val:0x8000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffffdfff, 0x8000, x1, 52*XLEN/8, x2)

inst_56:
// rs2_val == 65536, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff;  op2val:0x10000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffdfffff, 0x10000, x1, 54*XLEN/8, x2)

inst_57:
// rs2_val == 131072, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xb;  op2val:0x20000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xb, 0x20000, x1, 56*XLEN/8, x2)

inst_58:
// rs2_val == 262144, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x10000000;  op2val:0x40000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x10000000, 0x40000, x1, 58*XLEN/8, x2)

inst_59:
// rs2_val == 524288, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x5;  op2val:0x80000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x5, 0x80000, x1, 60*XLEN/8, x2)

inst_60:
// rs2_val == 1048576, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x0;  op2val:0x100000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x0, 0x100000, x1, 62*XLEN/8, x2)

inst_61:
// rs2_val == 2097152, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffdff;  op2val:0x200000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffffdff, 0x200000, x1, 64*XLEN/8, x2)

inst_62:
// rs2_val == 4194304, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffe;  op2val:0x400000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffffffe, 0x400000, x1, 66*XLEN/8, x2)

inst_63:
// rs2_val == 8388608, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x10000;  op2val:0x800000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x10000, 0x800000, x1, 68*XLEN/8, x2)

inst_64:
// rs2_val == 16777216, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x1000000;  op2val:0x1000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x1000000, 0x1000000, x1, 70*XLEN/8, x2)

inst_65:
// rs2_val == 33554432, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xd;  op2val:0x2000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xd, 0x2000000, x1, 72*XLEN/8, x2)

inst_66:
// rs2_val == 67108864, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff;  op2val:0x4000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xfffffbff, 0x4000000, x1, 74*XLEN/8, x2)

inst_67:
// rs2_val == 134217728, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xaaaaaaaa;  op2val:0x8000000
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xaaaaaaaa, 0x8000000, x1, 76*XLEN/8, x2)

inst_68:
// rs2_val == 0, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x800;  op2val:0x0
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x800, 0x0, x1, 78*XLEN/8, x2)

inst_69:
// rs2_val == 1431655765, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0x0;  op2val:0x55555555
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0x0, 0x55555555, x1, 80*XLEN/8, x2)

inst_70:
// rs2_val == 2863311530, 
// opcode: amomaxu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffefffff;  op2val:0xaaaaaaaa
TEST_AMO_OP(amomaxu.w, x31, x30, x29, 0xffefffff, 0xaaaaaaaa, x1, 82*XLEN/8, x2)
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



signature_x4_0:
    .fill 0*((XLEN/8)/4),4,0xdeadbeef


signature_x4_1:
    .fill 32*((XLEN/8)/4),4,0xdeadbeef


signature_x9_0:
    .fill 26*((XLEN/8)/4),4,0xdeadbeef


signature_x1_0:
    .fill 84*((XLEN/8)/4),4,0xdeadbeef

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
