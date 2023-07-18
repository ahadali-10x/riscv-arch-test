
// This assembly file tests the amominu.w instruction of the RISC-V RV32A extension for the amominu.w covergroup.
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

RVTEST_CASE(0,"//check ISA:=regex(.*I.*A.*);def TEST_CASE_1=True;",amominu.w)

RVTEST_SIGBASE(x2,signature_x2_1)

inst_0:
// rs1 == rd != rs2, rs1==x28, rs2==x20, rd==x28, rs2_val == (2**(xlen)-1), 
// opcode: amominu.w ; op1:x28; op2:x20; dest:x28; op1val:0x8;  op2val:0xffffffff
TEST_AMO_OP(amominu.w, x28, x28, x20, 0x8, 0xffffffff, x2, 0*XLEN/8, x4)

inst_1:
// rs1 != rs2 == rd, rs1==x27, rs2==x28, rd==x27, rs2_val == 0, 
// opcode: amominu.w ; op1:x27; op2:x28; dest:x27; op1val:0xefffffff;  op2val:0xefffffff
TEST_AMO_OP(amominu.w, x27, x27, x28, 0xefffffff, 0xefffffff, x2, 2*XLEN/8, x4)

inst_2:
// rs1 != rs2 != rd, rs1==x7, rs2==x8, rd==x23, rs2_val == 1, 
// opcode: amominu.w ; op1:x7; op2:x8; dest:x23; op1val:0xfffdffff;  op2val:0xfffdffff
TEST_AMO_OP(amominu.w, x23, x7, x8, 0xfffdffff, 0xfffdffff, x2, 4*XLEN/8, x4)

inst_3:
// rs2 == rd != rs1, rs1==x8, rs2==x10, rd==x10, rs2_val == 1431655765, 
// opcode: amominu.w ; op1:x8; op2:x10; dest:x10; op1val:0xfeffffff;  op2val:0x55555555
TEST_AMO_OP(amominu.w, x10, x8, x10, 0xfeffffff, 0x55555555, x2, 6*XLEN/8, x4)

inst_4:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x14, rd==x22, rs2_val == 2863311530, 
// opcode: amominu.w ; op1:x24; op2:x14; dest:x22; op1val:0xfffffffb;  op2val:0xaaaaaaaa
TEST_AMO_OP(amominu.w, x22, x24, x14, 0xfffffffb, 0xaaaaaaaa, x2, 8*XLEN/8, x4)

inst_5:
// rs1==x16, rs2==x29, rd==x15, rs2_val == 2, 
// opcode: amominu.w ; op1:x16; op2:x29; dest:x15; op1val:0xfffffffe;  op2val:0x2
TEST_AMO_OP(amominu.w, x15, x16, x29, 0xfffffffe, 0x2, x2, 10*XLEN/8, x4)

inst_6:
// rs1==x1, rs2==x15, rd==x3, rs2_val == 4, 
// opcode: amominu.w ; op1:x1; op2:x15; dest:x3; op1val:0x80;  op2val:0x4
TEST_AMO_OP(amominu.w, x3, x1, x15, 0x80, 0x4, x2, 12*XLEN/8, x4)

inst_7:
// rs1==x23, rs2==x24, rd==x0, rs2_val == 4294967294, 
// opcode: amominu.w ; op1:x23; op2:x24; dest:x0; op1val:0xff7fffff;  op2val:0xfffffffe
TEST_AMO_OP(amominu.w, x0, x23, x24, 0xff7fffff, 0xfffffffe, x2, 14*XLEN/8, x4)

inst_8:
// rs1==x14, rs2==x1, rd==x17, rs2_val == 4294967293, 
// opcode: amominu.w ; op1:x14; op2:x1; dest:x17; op1val:0xdfffffff;  op2val:0xfffffffd
TEST_AMO_OP(amominu.w, x17, x14, x1, 0xdfffffff, 0xfffffffd, x2, 16*XLEN/8, x4)

inst_9:
// rs1==x17, rs2==x6, rd==x30, rs2_val == 4294967291, 
// opcode: amominu.w ; op1:x17; op2:x6; dest:x30; op1val:0xffffffbf;  op2val:0xfffffffb
TEST_AMO_OP(amominu.w, x30, x17, x6, 0xffffffbf, 0xfffffffb, x2, 18*XLEN/8, x4)

inst_10:
// rs1==x10, rs2==x21, rd==x26, rs2_val == 4294967287, 
// opcode: amominu.w ; op1:x10; op2:x21; dest:x26; op1val:0x8;  op2val:0xfffffff7
TEST_AMO_OP(amominu.w, x26, x10, x21, 0x8, 0xfffffff7, x2, 20*XLEN/8, x4)

inst_11:
// rs1==x18, rs2==x17, rd==x14, rs2_val == 4294967279, 
// opcode: amominu.w ; op1:x18; op2:x17; dest:x14; op1val:0xfffdffff;  op2val:0xffffffef
TEST_AMO_OP(amominu.w, x14, x18, x17, 0xfffdffff, 0xffffffef, x2, 22*XLEN/8, x4)

inst_12:
// rs1==x31, rs2==x26, rd==x11, rs2_val == 4294967263, 
// opcode: amominu.w ; op1:x31; op2:x26; dest:x11; op1val:0x10000000;  op2val:0xffffffdf
TEST_AMO_OP(amominu.w, x11, x31, x26, 0x10000000, 0xffffffdf, x2, 24*XLEN/8, x4)

inst_13:
// rs1==x12, rs2==x13, rd==x24, rs2_val == 4294967231, 
// opcode: amominu.w ; op1:x12; op2:x13; dest:x24; op1val:0xff7fffff;  op2val:0xffffffbf
TEST_AMO_OP(amominu.w, x24, x12, x13, 0xff7fffff, 0xffffffbf, x2, 26*XLEN/8, x4)

inst_14:
// rs1==x20, rs2==x18, rd==x9, rs2_val == 4294967167, 
// opcode: amominu.w ; op1:x20; op2:x18; dest:x9; op1val:0x7;  op2val:0xffffff7f
TEST_AMO_OP(amominu.w, x9, x20, x18, 0x7, 0xffffff7f, x2, 28*XLEN/8, x14)
RVTEST_SIGBASE(x10,signature_x10_0)

inst_15:
// rs1==x15, rs2==x23, rd==x21, rs2_val == 4294967039, 
// opcode: amominu.w ; op1:x15; op2:x23; dest:x21; op1val:0xffffbfff;  op2val:0xfffffeff
TEST_AMO_OP(amominu.w, x21, x15, x23, 0xffffbfff, 0xfffffeff, x10, 0*XLEN/8, x14)

inst_16:
// rs1==x19, rs2==x27, rd==x1, rs2_val == 4294966783, 
// opcode: amominu.w ; op1:x19; op2:x27; dest:x1; op1val:0x80000000;  op2val:0xfffffdff
TEST_AMO_OP(amominu.w, x1, x19, x27, 0x80000000, 0xfffffdff, x10, 2*XLEN/8, x14)

inst_17:
// rs1==x22, rs2==x16, rd==x29, rs2_val == 4294966271, 
// opcode: amominu.w ; op1:x22; op2:x16; dest:x29; op1val:0xd;  op2val:0xfffffbff
TEST_AMO_OP(amominu.w, x29, x22, x16, 0xd, 0xfffffbff, x10, 4*XLEN/8, x14)

inst_18:
// rs1==x11, rs2==x19, rd==x13, rs2_val == 4294965247, 
// opcode: amominu.w ; op1:x11; op2:x19; dest:x13; op1val:0xfffffdff;  op2val:0xfffff7ff
TEST_AMO_OP(amominu.w, x13, x11, x19, 0xfffffdff, 0xfffff7ff, x10, 6*XLEN/8, x14)

inst_19:
// rs1==x21, rs2==x5, rd==x12, rs2_val == 4294963199, 
// opcode: amominu.w ; op1:x21; op2:x5; dest:x12; op1val:0x80000;  op2val:0xffffefff
TEST_AMO_OP(amominu.w, x12, x21, x5, 0x80000, 0xffffefff, x10, 8*XLEN/8, x14)

inst_20:
// rs1==x6, rs2==x30, rd==x5, rs2_val == 4294959103, 
// opcode: amominu.w ; op1:x6; op2:x30; dest:x5; op1val:0x8;  op2val:0xffffdfff
TEST_AMO_OP(amominu.w, x5, x6, x30, 0x8, 0xffffdfff, x10, 10*XLEN/8, x14)

inst_21:
// rs1==x26, rs2==x22, rd==x20, rs2_val == 4294950911, 
// opcode: amominu.w ; op1:x26; op2:x22; dest:x20; op1val:0xffdfffff;  op2val:0xffffbfff
TEST_AMO_OP(amominu.w, x20, x26, x22, 0xffdfffff, 0xffffbfff, x10, 12*XLEN/8, x14)

inst_22:
// rs1==x25, rs2==x7, rd==x7, rs2_val == 4294934527, 
// opcode: amominu.w ; op1:x25; op2:x7; dest:x7; op1val:0xf;  op2val:0xffff7fff
TEST_AMO_OP(amominu.w, x7, x25, x7, 0xf, 0xffff7fff, x10, 14*XLEN/8, x14)

inst_23:
// rs1==x3, rs2==x9, rd==x2, rs2_val == 4294901759, 
// opcode: amominu.w ; op1:x3; op2:x9; dest:x2; op1val:0x9;  op2val:0xfffeffff
TEST_AMO_OP(amominu.w, x2, x3, x9, 0x9, 0xfffeffff, x10, 16*XLEN/8, x14)

inst_24:
// rs1==x4, rs2==x0, rd==x31, rs2_val == 4294836223, 
// opcode: amominu.w ; op1:x4; op2:x0; dest:x31; op1val:0x9;  op2val:0x0
TEST_AMO_OP(amominu.w, x31, x4, x0, 0x9, 0x0, x10, 18*XLEN/8, x14)

inst_25:
// rs1==x9, rs2==x3, rd==x25, rs2_val == 4294705151, 
// opcode: amominu.w ; op1:x9; op2:x3; dest:x25; op1val:0xaaaaaaaa;  op2val:0xfffbffff
TEST_AMO_OP(amominu.w, x25, x9, x3, 0xaaaaaaaa, 0xfffbffff, x10, 20*XLEN/8, x14)

inst_26:
// rs1==x2, rs2==x11, rd==x8, rs2_val == 4294443007, 
// opcode: amominu.w ; op1:x2; op2:x11; dest:x8; op1val:0x3;  op2val:0xfff7ffff
TEST_AMO_OP(amominu.w, x8, x2, x11, 0x3, 0xfff7ffff, x10, 22*XLEN/8, x14)

inst_27:
// rs1==x5, rs2==x12, rd==x4, rs2_val == 4293918719, 
// opcode: amominu.w ; op1:x5; op2:x12; dest:x4; op1val:0xfffffdff;  op2val:0xffefffff
TEST_AMO_OP(amominu.w, x4, x5, x12, 0xfffffdff, 0xffefffff, x10, 24*XLEN/8, x14)

inst_28:
// rs1==x13, rs2==x31, rd==x18, rs2_val == 4292870143, 
// opcode: amominu.w ; op1:x13; op2:x31; dest:x18; op1val:0xffffffff;  op2val:0xffdfffff
TEST_AMO_OP(amominu.w, x18, x13, x31, 0xffffffff, 0xffdfffff, x10, 26*XLEN/8, x14)
RVTEST_SIGBASE(x1,signature_x1_0)

inst_29:
// rs1==x29, rs2==x4, rd==x16, rs2_val == 4290772991, 
// opcode: amominu.w ; op1:x29; op2:x4; dest:x16; op1val:0x40000;  op2val:0xffbfffff
TEST_AMO_OP(amominu.w, x16, x29, x4, 0x40000, 0xffbfffff, x1, 0*XLEN/8, x14)

inst_30:
// rs1==x30, rs2==x2, rd==x19, rs2_val == 4286578687, 
// opcode: amominu.w ; op1:x30; op2:x2; dest:x19; op1val:0xdfffffff;  op2val:0xff7fffff
TEST_AMO_OP(amominu.w, x19, x30, x2, 0xdfffffff, 0xff7fffff, x1, 2*XLEN/8, x14)

inst_31:
// rs2==x25, rd==x6, rs2_val == 4278190079, 
// opcode: amominu.w ; op1:x7; op2:x25; dest:x6; op1val:0xffffffdf;  op2val:0xfeffffff
TEST_AMO_OP(amominu.w, x6, x7, x25, 0xffffffdf, 0xfeffffff, x1, 4*XLEN/8, x14)

inst_32:
// rs2_val == 4261412863, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff;  op2val:0xfdffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xefffffff, 0xfdffffff, x1, 6*XLEN/8, x14)

inst_33:
// rs2_val == 4227858431, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffbff;  op2val:0xfbffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffffbff, 0xfbffffff, x1, 8*XLEN/8, x14)

inst_34:
// rs2_val == 4160749567, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xf;  op2val:0xf7ffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xf, 0xf7ffffff, x1, 10*XLEN/8, x14)

inst_35:
// rs2_val == 4026531839, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffbfff;  op2val:0xefffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xffffbfff, 0xefffffff, x1, 12*XLEN/8, x14)

inst_36:
// rs2_val == 3758096383, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x20000000;  op2val:0xdfffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x20000000, 0xdfffffff, x1, 14*XLEN/8, x14)

inst_37:
// rs2_val == 268435456, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x0;  op2val:0x10000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x0, 0x10000000, x1, 16*XLEN/8, x14)

inst_38:
// rs2_val == 536870912, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x40000000;  op2val:0x20000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x40000000, 0x20000000, x1, 18*XLEN/8, x14)

inst_39:
// rs2_val == 1073741824, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x400000;  op2val:0x40000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x400000, 0x40000000, x1, 20*XLEN/8, x14)

inst_40:
// rs2_val == 2147483648, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x55555555;  op2val:0x80000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x55555555, 0x80000000, x1, 22*XLEN/8, x14)

inst_41:
// rs2_val == 3221225471, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x200;  op2val:0xbfffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x200, 0xbfffffff, x1, 24*XLEN/8, x14)

inst_42:
// rs2_val == 2147483647, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffbfffff;  op2val:0x7fffffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xffbfffff, 0x7fffffff, x1, 26*XLEN/8, x14)

inst_43:
// rs2_val == 8, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x400000;  op2val:0x8
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x400000, 0x8, x1, 28*XLEN/8, x14)

inst_44:
// rs2_val == 16, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xf;  op2val:0x10
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xf, 0x10, x1, 30*XLEN/8, x14)

inst_45:
// rs2_val == 32, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x80000;  op2val:0x20
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x80000, 0x20, x1, 32*XLEN/8, x14)

inst_46:
// rs2_val == 64, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x0;  op2val:0x40
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x0, 0x40, x1, 34*XLEN/8, x14)

inst_47:
// rs2_val == 128, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffff7;  op2val:0x80
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffffff7, 0x80, x1, 36*XLEN/8, x14)

inst_48:
// rs2_val == 256, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffdfffff;  op2val:0x100
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xffdfffff, 0x100, x1, 38*XLEN/8, x14)

inst_49:
// rs2_val == 512, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x9;  op2val:0x200
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x9, 0x200, x1, 40*XLEN/8, x14)

inst_50:
// rs2_val == 1024, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x40000;  op2val:0x400
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x40000, 0x400, x1, 42*XLEN/8, x14)

inst_51:
// rs2_val == 2048, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffff;  op2val:0x800
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xff7fffff, 0x800, x1, 44*XLEN/8, x14)

inst_52:
// rs2_val == 4096, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xbfffffff;  op2val:0x1000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xbfffffff, 0x1000, x1, 46*XLEN/8, x14)

inst_53:
// rs2_val == 8192, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x10;  op2val:0x2000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x10, 0x2000, x1, 48*XLEN/8, x14)

inst_54:
// rs2_val == 16384, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x40000;  op2val:0x4000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x40000, 0x4000, x1, 50*XLEN/8, x14)

inst_55:
// rs2_val == 32768, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffb;  op2val:0x8000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffffffb, 0x8000, x1, 52*XLEN/8, x14)

inst_56:
// rs2_val == 65536, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x11;  op2val:0x10000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x11, 0x10000, x1, 54*XLEN/8, x14)

inst_57:
// rs2_val == 131072, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x10000;  op2val:0x20000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x10000, 0x20000, x1, 56*XLEN/8, x14)

inst_58:
// rs2_val == 262144, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x40;  op2val:0x40000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x40, 0x40000, x1, 58*XLEN/8, x14)

inst_59:
// rs2_val == 524288, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xdfffffff;  op2val:0x80000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xdfffffff, 0x80000, x1, 60*XLEN/8, x14)

inst_60:
// rs2_val == 1048576, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff;  op2val:0x100000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffdffff, 0x100000, x1, 62*XLEN/8, x14)

inst_61:
// rs2_val == 2097152, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff;  op2val:0x200000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffdffff, 0x200000, x1, 64*XLEN/8, x14)

inst_62:
// rs2_val == 4194304, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x200000;  op2val:0x400000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x200000, 0x400000, x1, 66*XLEN/8, x14)

inst_63:
// rs2_val == 8388608, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x100000;  op2val:0x800000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x100000, 0x800000, x1, 68*XLEN/8, x14)

inst_64:
// rs2_val == 16777216, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xffffffff;  op2val:0x1000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xffffffff, 0x1000000, x1, 70*XLEN/8, x14)

inst_65:
// rs2_val == 33554432, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfdffffff;  op2val:0x2000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfdffffff, 0x2000000, x1, 72*XLEN/8, x14)

inst_66:
// rs2_val == 67108864, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff;  op2val:0x4000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffdffff, 0x4000000, x1, 74*XLEN/8, x14)

inst_67:
// rs2_val == 134217728, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffffffd;  op2val:0x8000000
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffffffd, 0x8000000, x1, 76*XLEN/8, x14)

inst_68:
// rs2_val == 0, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xefffffff;  op2val:0x0
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xefffffff, 0x0, x1, 78*XLEN/8, x14)

inst_69:
// rs2_val == 1, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xfffdffff;  op2val:0x1
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xfffdffff, 0x1, x1, 80*XLEN/8, x14)

inst_70:
// rs2_val == 4294967294, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0xff7fffff;  op2val:0xfffffffe
TEST_AMO_OP(amominu.w, x31, x30, x29, 0xff7fffff, 0xfffffffe, x1, 82*XLEN/8, x14)

inst_71:
// rs2_val == 4294836223, 
// opcode: amominu.w ; op1:x30; op2:x29; dest:x31; op1val:0x9;  op2val:0xfffdffff
TEST_AMO_OP(amominu.w, x31, x30, x29, 0x9, 0xfffdffff, x1, 84*XLEN/8, x14)
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



signature_x2_0:
    .fill 0*((XLEN/8)/4),4,0xdeadbeef


signature_x2_1:
    .fill 30*((XLEN/8)/4),4,0xdeadbeef


signature_x10_0:
    .fill 28*((XLEN/8)/4),4,0xdeadbeef


signature_x1_0:
    .fill 86*((XLEN/8)/4),4,0xdeadbeef

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
