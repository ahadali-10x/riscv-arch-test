
// This assembly file tests the amoxor.w instruction of the RISC-V A extension for the amoxor covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64IA")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*A.*);def TEST_CASE_1=True;",amoxor)

RVTEST_SIGBASE( x8,signature_x8_1)

inst_0:
// rs1 != rs2 == rd, rs1==x2, rs2==x20, rd==x20, rs1_val > 0 and rs2_val > 0, rs1_val == 4, rs1_val==4 and rs2_val==6148914691236517206, rs1_val != rs2_val
// opcode: amoxor.w ; op1:x2; op2:x20; dest:x20; op1val:0x0;  op2val:0x0
TEST_AMO_OP(amoxor.w, x20, x2, x20, 0x0, 0x0, x8, 0)

inst_1:
// rs2 == rd != rs1, rs1==x2, rs2==x26, rd==x26, rs1_val > 0 and rs2_val < 0, rs2_val == -1073741825
// opcode: amoxor.w ; op1:x2; op2:x26; dest:x26; op1val:0x5;  op2val:-0x40000001
TEST_AMO_OP(amoxor.w, x26, x2, x26, 0x5, -0x40000001, x8, 16)

inst_2:
// rs1 != rs2 != rd, rs1==x22, rs2==x23, rd==x24, rs1_val < 0 and rs2_val < 0, rs1_val == -8388609
// opcode: amoxor.w ; op1:x23; op2:x24; dest:x22; op1val:-0x800001;  op2val:-0x800001
TEST_AMO_OP(amoxor.w, x22, x23, x24, -0x800001, -0x800001, x8, 32)

inst_3:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x6, rd==x10, rs1_val < 0 and rs2_val > 0, rs1_val == -65, rs2_val == 36028797018963968
// opcode: amoxor.w ; op1:x26; op2:x6; dest:x10; op1val:-0x41;  op2val:0x80000000000000
TEST_AMO_OP(amoxor.w, x10, x26, x6, -0x41, 0x80000000000000, x8, 48)

inst_4:
// rs1 != rd != rs2, rs1==x25, rs2==x23, rd==x27, rs1_val == rs2_val, rs2_val == 64, rs1_val == 64
// opcode: amoxor.w ; op1:x25; op2:x23; dest:x27; op1val:0x40;  op2val:0x40
TEST_AMO_OP(amoxor.w, x27, x25, x23, 0x40, 0x40, x8, 64)

inst_5:
// rs1==x20, rs2==x3, rd==x2, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
// opcode: amoxor.w ; op1:x20; op2:x3; dest:x2; op1val:0x6666666666666665;  op2val:-0x8000000000000000
TEST_AMO_OP(amoxor.w, x2, x20, x3, 0x6666666666666665, -0x8000000000000000, x8, 80)

inst_6:
// rs1==x13, rs2==x30, rd==x14, rs2_val == 0, rs1_val == 1
// opcode: amoxor.w ; op1:x13; op2:x30; dest:x14; op1val:0x1;  op2val:0x0
TEST_AMO_OP(amoxor.w, x14, x13, x30, 0x1, 0x0, x8, 96)

inst_7:
// rs1==x6, rs2==x10, rd==x7, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, rs1_val == 131072
// opcode: amoxor.w ; op1:x6; op2:x10; dest:x7; op1val:0x20000;  op2val:0x7fffffffffffffff
TEST_AMO_OP(amoxor.w, x7, x6, x10, 0x20000, 0x7fffffffffffffff, x8, 112)

inst_8:
// rs1==x9, rs2==x25, rd==x1, rs2_val == 1, rs1_val == 268435456
// opcode: amoxor.w ; op1:x9; op2:x25; dest:x1; op1val:0x10000000;  op2val:0x1
TEST_AMO_OP(amoxor.w, x1, x9, x25, 0x10000000, 0x1, x8, 128)

inst_9:
// rs1==x14, rs2==x31, rd==x5, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, rs2_val == -257
// opcode: amoxor.w ; op1:x14; op2:x31; dest:x5; op1val:-0x8000000000000000;  op2val:-0x101
TEST_AMO_OP(amoxor.w, x5, x14, x31, -0x8000000000000000, -0x101, x8, 144)

inst_10:
// rs1==x29, rs2==x1, rd==x19, rs1_val == 0, rs2_val == 8796093022208
// opcode: amoxor.w ; op1:x29; op2:x1; dest:x19; op1val:0x0;  op2val:0x80000000000
TEST_AMO_OP(amoxor.w, x19, x29, x1, 0x0, 0x160000000000, x8, 160)

inst_11:
// rs1==x15, rs2==x11, rd==x21, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807, rs2_val == -65537
// opcode: amoxor.w ; op1:x15; op2:x11; dest:x21; op1val:0x7fffffffffffffff;  op2val:-0x10001
TEST_AMO_OP(amoxor.w, x21, x15, x11, 0x7fffffffffffffff, -0x10001, x8, 176)

inst_12:
// rs1==x3, rs2==x7, rd==x9, rs2_val == 2, rs1_val == -5
// opcode: amoxor.w ; op1:x3; op2:x7; dest:x9; op1val:-0x5;  op2val:0x2
TEST_AMO_OP(amoxor.w, x9, x3, x7, -0x5, 0x2, x8, 192)

inst_13:
// rs1==x21, rs2==x27, rd==x6, rs2_val == 4, rs1_val == 2305843009213693952
// opcode: amoxor.w ; op1:x21; op2:x27; dest:x6; op1val:0x2000000000000000;  op2val:0x4
TEST_AMO_OP(amoxor.w, x6, x21, x27, 0x2000000000000000, 0x4, x8, 208)

inst_14:
// rs1==x30, rs2==x13, rd==x23, rs2_val == 8, rs1_val == 137438953472
// opcode: amoxor.w ; op1:x30; op2:x13; dest:x23; op1val:0x2000000000;  op2val:0x8
TEST_AMO_OP(amoxor.w, x23, x30, x13, 0x2000000000, 0x8, x8, 224)

inst_15:
// rs1==x10, rs2==x19, rd==x24, rs2_val == 16, rs1_val == -9007199254740993
// opcode: amoxor.w ; op1:x10; op2:x19; dest:x24; op1val:-0x20000000000001;  op2val:0x10
TEST_AMO_OP(amoxor.w, x24, x10, x19, -0x20000000000001, 0x10, x8, 240)

inst_16:
// rs1==x1, rs2==x9, rd==x30, rs2_val == 32, 
// opcode: amoxor.w ; op1:x1; op2:x9; dest:x30; op1val:0x0;  op2val:0x20
TEST_AMO_OP(amoxor.w, x30, x1, x9, 0x0, 0x20, x8, 256)

inst_17:
// rs1==x12, rs2==x4, rd==x13, rs2_val == 128, rs1_val == 576460752303423488
// opcode: amoxor.w ; op1:x12; op2:x4; dest:x13; op1val:0x800000000000000;  op2val:0x80
TEST_AMO_OP(amoxor.w, x13, x12, x4, 0x800000000000000, 0x80, x8, 272)

inst_18:
// rs1==x18, rs2==x17, rd==x0, rs2_val == 256, 
// opcode: amoxor.w ; op1:x18; op2:x17; dest:x0; op1val:0x1;  op2val:0x100
TEST_AMO_OP(amoxor.w, x0, x18, x17, 0x1, 0x100, x8, 288)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_19:
// rs1==x19, rs2==x15, rd==x16, rs2_val == 512, rs1_val == 65536
// opcode: amoxor.w ; op1:x19; op2:x15; dest:x16; op1val:0x10000;  op2val:0x200
TEST_AMO_OP(amoxor.w, x16, x19, x15, 0x10000, 0x200, x1, 0)

inst_20:
// rs1==x28, rs2==x20, rd==x4, rs2_val == 1024, 
// opcode: amoxor.w ; op1:x28; op2:x20; dest:x4; op1val:0x5;  op2val:0x400
TEST_AMO_OP(amoxor.w, x4, x28, x20, 0x5, 0x400, x1, 16)

inst_21:
// rs1==x8, rs2==x28, rd==x12, rs2_val == 2048, rs1_val == -32769
// opcode: amoxor.w ; op1:x8; op2:x28; dest:x12; op1val:-0x8001;  op2val:0x800
TEST_AMO_OP(amoxor.w, x12, x8, x28, -0x8001, 0x800, x1, 32)

inst_22:
// rs1==x16, rs2==x5, rd==x11, rs2_val == 4096, rs1_val == 2251799813685248
// opcode: amoxor.w ; op1:x16; op2:x5; dest:x11; op1val:0x8000000000000;  op2val:0x1000
TEST_AMO_OP(amoxor.w, x11, x16, x5, 0x8000000000000, 0x1000, x1, 48)

inst_23:
// rs1==x4, rs2==x24, rd==x29, rs2_val == 8192, 
// opcode: amoxor.w ; op1:x4; op2:x24; dest:x29; op1val:-0xb504f332;  op2val:0x2000
TEST_AMO_OP(amoxor.w, x29, x4, x24, -0xb504f364, 0x2000, x1, 64)

inst_24:
// rs1==x11, rs2==x29, rd==x3, rs2_val == 16384, rs1_val == -9
// opcode: amoxor.w ; op1:x11; op2:x29; dest:x3; op1val:-0x9;  op2val:0x4000
TEST_AMO_OP(amoxor.w, x3, x11, x29, -0x9, 0x8000, x1, 80)

inst_25:
// rs1==x7, rs2==x12, rd==x15, rs2_val == 32768, 
// opcode: amoxor.w ; op1:x7; op2:x12; dest:x15; op1val:0x4;  op2val:0x8000
TEST_AMO_OP(amoxor.w, x15, x7, x12, 0x4, 0x8000, x1, 96)

inst_26:
// rs1==x17, rs2==x16, rd==x31, rs2_val == 65536, 
// opcode: amoxor.w ; op1:x17; op2:x16; dest:x31; op1val:-0x4;  op2val:0x10000
TEST_AMO_OP(amoxor.w, x31, x17, x16, -0x4, 0x10000, x1, 112)

inst_27:
// rs1==x31, rs2==x18, rd==x17, rs2_val == 131072, 
// opcode: amoxor.w ; op1:x31; op2:x18; dest:x17; op1val:-0x8000000000000000;  op2val:0x20000
TEST_AMO_OP(amoxor.w, x17, x31, x18, -0x8000000000000000, 0x20000, x1, 128)

inst_28:
// rs1==x5, rs2==x21, rd==x8, rs2_val == 262144, 
// opcode: amoxor.w ; op1:x5; op2:x21; dest:x8; op1val:0x5;  op2val:0x40000
TEST_AMO_OP(amoxor.w, x8, x5, x21, 0x5, 0x40000, x1, 144)

inst_29:
// rs1==x24, rs2==x2, rd==x18, rs2_val == 524288, rs1_val == -536870913
// opcode: amoxor.w ; op1:x24; op2:x2; dest:x18; op1val:-0x20000001;  op2val:0x80000
TEST_AMO_OP(amoxor.w, x18, x24, x2, -0x20000001, 0x160000, x1, 160)

inst_30:
// rs1==x23, rs2==x14, rd==x25, rs2_val == 1048576, 
// opcode: amoxor.w ; op1:x23; op2:x14; dest:x25; op1val:0x5;  op2val:0x100000
TEST_AMO_OP(amoxor.w, x25, x23, x14, 0x5, 0x100000, x1, 176)

inst_31:
// rs1==x25, rs2==x8, rd==x28, rs2_val == 2097152, rs1_val == -262145
// opcode: amoxor.w ; op1:x25; op2:x8; dest:x28; op1val:-0x40001;  op2val:0x200000
TEST_AMO_OP(amoxor.w, x28, x25, x8, -0x40001, 0x200000, x1, 192)

inst_32:
// rs2_val == 4194304, rs1_val == 8
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8;  op2val:0x400000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x8, 0x400000, x1, 208)

inst_33:
// rs2_val == 8388608, rs1_val == -16777217
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000001;  op2val:0x800000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000001, 0x800000, x1, 224)

inst_34:
// rs2_val == 16777216, rs1_val == -2251799813685249
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8000000000001;  op2val:0x1000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x8000000000001, 0x1000000, x1, 240)

inst_35:
// rs2_val == 33554432, rs1_val == 2199023255552
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000000000;  op2val:0x2000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20000000000, 0x2000000, x1, 256)

inst_36:
// rs2_val == 67108864, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40001;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x40001, 0x4000000, x1, 272)

inst_37:
// rs2_val == 134217728, rs1_val == 2147483648
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x8000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x80000000, 0x8000000, x1, 288)

inst_38:
// rs2_val == 268435456, rs1_val == 1073741824
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x10000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x40000000, 0x10000000, x1, 304)

inst_39:
// rs2_val == 536870912, rs1_val == 16
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10;  op2val:0x20000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10, 0x20000000, x1, 320)

inst_40:
// rs2_val == 1073741824, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x40000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x40000000, x1, 336)

inst_41:
// rs2_val == 2147483648, rs1_val == 549755813888
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000;  op2val:0x80000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x8000000000, 0x80000000, x1, 352)

inst_42:
// rs2_val == 4294967296, rs1_val == 35184372088832
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200000000000;  op2val:0x100000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200000000000, 0x100000000, x1, 368)

inst_43:
// rs2_val == 8589934592, rs1_val == 8192
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000;  op2val:0x200000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000, 0x200000000, x1, 384)

inst_44:
// rs2_val == 17179869184, rs1_val == -8589934593
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200000001;  op2val:0x400000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x400000001, 0x400000000, x1, 400)

inst_45:
// rs2_val == 34359738368, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000;  op2val:0x800000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000, 0x800000000, x1, 416)

inst_46:
// rs2_val == 68719476736, rs1_val == 36028797018963968
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80000000000000;  op2val:0x1000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x80000000000000, 0x1000000000, x1, 432)

inst_47:
// rs2_val == 137438953472, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200000001;  op2val:0x2000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x200000001, 0x2000000000, x1, 448)

inst_48:
// rs2_val == 274877906944, rs1_val == 6148914691236517205
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x4000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x4000000000, x1, 464)

inst_49:
// rs2_val == 549755813888, rs1_val == 8388608
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800000;  op2val:0x8000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x800000, 0x8000000000, x1, 480)

inst_50:
// rs2_val == 1099511627776, rs1_val == -274877906945
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4000000001;  op2val:0x10000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4000000001, 0x10000000000, x1, 496)

inst_51:
// rs2_val == 2199023255552, rs1_val == -33
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:0x20000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x21, 0x20000000000, x1, 512)

inst_52:
// rs2_val == 4398046511104, rs1_val == 4194304
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000;  op2val:0x40000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000, 0x40000000000, x1, 528)

inst_53:
// rs2_val == 17592186044416, rs1_val == 1099511627776
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000000000;  op2val:0x100000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10000000000, 0x100000000000, x1, 544)

inst_54:
// rs2_val == 35184372088832, rs1_val == 134217728
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8000000;  op2val:0x200000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x8000000, 0x200000000000, x1, 560)

inst_55:
// rs2_val == 70368744177664, rs1_val == 72057594037927936
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100000000000000;  op2val:0x400000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x100000000000000, 0x400000000000, x1, 576)

inst_56:
// rs2_val == 140737488355328, rs1_val == 562949953421312
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000;  op2val:0x800000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000000000000, 0x800000000000, x1, 592)

inst_57:
// rs2_val == 281474976710656, rs1_val == -4503599627370497
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000000000001;  op2val:0x1000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000000000001, 0x1000000000000, x1, 608)

inst_58:
// rs2_val == 562949953421312, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000000000001;  op2val:0x2000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000000000001, 0x2000000000000, x1, 624)

inst_59:
// rs2_val == 1125899906842624, rs1_val == -2147483649
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80000001;  op2val:0x4000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80000001, 0x4000000000000, x1, 640)

inst_60:
// rs2_val == 2251799813685248, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000;  op2val:0x8000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000, 0x8000000000000, x1, 656)

inst_61:
// rs2_val == 4503599627370496, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000000000001;  op2val:0x10000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000000000001, 0x10000000000000, x1, 672)

inst_62:
// rs2_val == 9007199254740992, rs1_val == 524288
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80000;  op2val:0x20000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x80000, 0x20000000000000, x1, 688)

inst_63:
// rs2_val == 18014398509481984, rs1_val == -2
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2;  op2val:0x40000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2, 0x40000000000000, x1, 704)

inst_64:
// rs2_val == 72057594037927936, rs1_val == -524289
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:0x100000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80001, 0x100000000000000, x1, 720)

inst_65:
// rs2_val == 144115188075855872, rs1_val == 1152921504606846976
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x200000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000000000000000, 0x200000000000000, x1, 736)

inst_66:
// rs2_val == 288230376151711744, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8;  op2val:0x400000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x8, 0x400000000000000, x1, 752)

inst_67:
// rs2_val == 576460752303423488, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x800000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x800000000000000, x1, 768)

inst_68:
// rs2_val == 1152921504606846976, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x1000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x1000000000000000, x1, 784)

inst_69:
// rs2_val == 2305843009213693952, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:0x2000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80001, 0x2000000000000000, x1, 800)

inst_70:
// rs2_val == 4611686018427387904, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x4000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x4000000000000000, x1, 816)

inst_71:
// rs2_val == -2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0x2, x1, 832)

inst_72:
// rs2_val == -3, rs1_val == -1125899906842625
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4000000000001;  op2val:-0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4000000000001, -0x3, x1, 848)

inst_73:
// rs2_val == -5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:-0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, -0x5, x1, 864)

inst_74:
// rs2_val == -9, rs1_val == -268435457
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000001;  op2val:-0x9
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000001, -0x9, x1, 880)

inst_75:
// rs2_val == -17, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1;  op2val:-0x11
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1, -0x11, x1, 896)

inst_76:
// rs2_val == -33, rs1_val == -1152921504606846977
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000000000000001;  op2val:-0x21
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000000000000001, -0x21, x1, 912)

inst_77:
// rs2_val == -65, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000;  op2val:-0x41
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000000000000, -0x41, x1, 928)

inst_78:
// rs2_val == -129, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:-0x81
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, -0x81, x1, 944)

inst_79:
// rs2_val == -513, rs1_val == 32
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20;  op2val:-0x201
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20, -0x201, x1, 960)

inst_80:
// rs2_val == -1025, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20;  op2val:-0x401
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20, -0x401, x1, 976)

inst_81:
// rs2_val == -2049, rs1_val == 256
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100;  op2val:-0x801
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x100, -0x801, x1, 992)

inst_82:
// rs2_val == -4097, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:-0x1001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80001, -0x1001, x1, 1008)

inst_83:
// rs2_val == -8193, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:-0x2001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000000000000000, -0x2001, x1, 1024)

inst_84:
// rs2_val == -16385, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x4001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0x4001, x1, 1040)

inst_85:
// rs2_val == -32769, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000000000000001;  op2val:-0x8001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000000000000001, -0x8001, x1, 1056)

inst_86:
// rs2_val == -131073, rs1_val == -65537
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10001;  op2val:-0x20001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10001, -0x20001, x1, 1072)

inst_87:
// rs2_val == -262145, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000;  op2val:-0x40001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000, -0x40001, x1, 1088)

inst_88:
// rs2_val == -524289, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000001;  op2val:-0x80001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000001, -0x80001, x1, 1104)

inst_89:
// rs2_val == -1048577, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:-0x100001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x7fffffffffffffff, -0x100001, x1, 1120)

inst_90:
// rs2_val == -2097153, rs1_val == -70368744177665
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x400000000001;  op2val:-0x200001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x400000000001, -0x200001, x1, 1136)

inst_91:
// rs2_val == -4194305, rs1_val == -36028797018963969
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80000000000001;  op2val:-0x400001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80000000000001, -0x400001, x1, 1152)

inst_92:
// rs2_val == -8388609, rs1_val == 1048576
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100000;  op2val:-0x800001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x100000, -0x800001, x1, 1168)

inst_93:
// rs2_val == -16777217, rs1_val == 140737488355328
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800000000000;  op2val:-0x1000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x800000000000, -0x1000001, x1, 1184)

inst_94:
// rs2_val == -33554433, rs1_val == -17592186044417
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x100000000001;  op2val:-0x2000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x100000000001, -0x2000001, x1, 1200)

inst_95:
// rs2_val == -67108865, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000;  op2val:-0x4000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10000, -0x4000001, x1, 1216)

inst_96:
// rs2_val == -134217729, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4;  op2val:-0x8000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4, -0x8000001, x1, 1232)

inst_97:
// rs2_val == -268435457, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800000000000;  op2val:-0x10000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x800000000000, -0x10000001, x1, 1248)

inst_98:
// rs2_val == -536870913, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:-0x20000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000000000000000, -0x20000001, x1, 1264)

inst_99:
// rs2_val == -2147483649, rs1_val == -4194305
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x400001;  op2val:-0x80000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x400001, -0x80000001, x1, 1280)

inst_100:
// rs2_val == -4294967297, rs1_val == 9007199254740992
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000000000000;  op2val:-0x100000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20000000000000, -0x100000001, x1, 1296)

inst_101:
// rs2_val == -8589934593, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000;  op2val:-0x200000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000, -0x200000001, x1, 1312)

inst_102:
// rs2_val == -17179869185, rs1_val == -144115188075855873
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200000000000001;  op2val:-0x400000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x200000000000001, -0x400000001, x1, 1328)

inst_103:
// rs2_val == -34359738369, rs1_val == 274877906944
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000;  op2val:-0x800000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000000, -0x800000001, x1, 1344)

inst_104:
// rs2_val == -68719476737, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:-0x1000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, -0x1000000001, x1, 1360)

inst_105:
// rs2_val == -137438953473, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10001;  op2val:-0x2000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10001, -0x2000000001, x1, 1376)

inst_106:
// rs2_val == -274877906945, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x41;  op2val:-0x4000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x41, -0x4000000001, x1, 1392)

inst_107:
// rs2_val == -549755813889, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x8000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0x8000000001, x1, 1408)

inst_108:
// rs2_val == -1099511627777, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40;  op2val:-0x10000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x40, -0x10000000001, x1, 1424)

inst_109:
// rs2_val == -2199023255553, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000000000001;  op2val:-0x20000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000000000001, -0x20000000001, x1, 1440)

inst_110:
// rs2_val == -4398046511105, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x40000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0x40000000001, x1, 1456)

inst_111:
// rs2_val == -8796093022209, rs1_val == -8796093022209
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80000000001;  op2val:-0x80000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80000000001, -0x80000000001, x1, 1472)

inst_112:
// rs2_val == -17592186044417, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10;  op2val:-0x100000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10, -0x100000000001, x1, 1488)

inst_113:
// rs2_val == -35184372088833, rs1_val == -137438953473
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2000000001;  op2val:-0x200000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2000000001, -0x200000000001, x1, 1504)

inst_114:
// rs2_val == -70368744177665, rs1_val == 1024
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400;  op2val:-0x400000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400, -0x400000000001, x1, 1520)

inst_115:
// rs2_val == -140737488355329, rs1_val == 67108864
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000;  op2val:-0x800000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000, -0x800000000001, x1, 1536)

inst_116:
// rs2_val == -281474976710657, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000;  op2val:-0x1000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000000, -0x1000000000001, x1, 1552)

inst_117:
// rs2_val == -562949953421313, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000;  op2val:-0x2000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000, -0x2000000000001, x1, 1568)

inst_118:
// rs2_val == -1125899906842625, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000;  op2val:-0x4000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000000, -0x4000000000001, x1, 1584)

inst_119:
// rs2_val == -2251799813685249, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20000001;  op2val:-0x8000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x20000001, -0x16000000000001, x1, 1600)

inst_120:
// rs2_val == -4503599627370497, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000000000;  op2val:-0x10000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10000000000, -0x10000000000001, x1, 1616)

inst_121:
// rs2_val == -9007199254740993, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:-0x20000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, -0x20000000000001, x1, 1632)

inst_122:
// rs2_val == -18014398509481985, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:-0x40000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, -0x40000000000001, x1, 1648)

inst_123:
// rs2_val == -36028797018963969, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:-0x80000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x80001, -0x80000000000001, x1, 1664)

inst_124:
// rs2_val == -72057594037927937, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x100000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0x100000000000001, x1, 1680)

inst_125:
// rs2_val == -144115188075855873, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0x200000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0x200000000000001, x1, 1696)

inst_126:
// rs2_val == -288230376151711745, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x400000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0x400000000000001, x1, 1712)

inst_127:
// rs2_val == -576460752303423489, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:-0x800000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x21, -0x800000000000001, x1, 1728)

inst_128:
// rs2_val == -1152921504606846977, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20;  op2val:-0x1000000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20, -0x1000000000000001, x1, 1744)

inst_129:
// rs2_val == -2305843009213693953, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0x2000000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0x2000000000000001, x1, 1760)

inst_130:
// rs2_val == -4611686018427387905, rs1_val == 512
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200;  op2val:-0x4000000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200, -0x4000000000000001, x1, 1776)

inst_131:
// rs2_val == 6148914691236517205, rs1_val==7378697629483820646 and rs2_val==6148914691236517205
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x5555555555555555, x1, 1792)

inst_132:
// rs2_val == -6148914691236517206, rs1_val == 18014398509481984
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000000000000;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x40000000000000, -0x5555555555555556, x1, 1808)

inst_133:
// rs1_val == 2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x10000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x10000000000000, x1, 1824)

inst_134:
// rs1_val == 128, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80;  op2val:0x10000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x80, 0x10000000000, x1, 1840)

inst_135:
// rs1_val == 2048, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800;  op2val:-0x80000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x800, -0x80000001, x1, 1856)

inst_136:
// rs1_val == 4096, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000, 0x4000000, x1, 1872)

inst_137:
// rs1_val == 16384, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000;  op2val:-0x100001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000, -0x100001, x1, 1888)

inst_138:
// rs1_val == 32768, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8000;  op2val:-0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x8000, -0x6, x1, 1904)

inst_139:
// rs1_val == 262144, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000;  op2val:-0x40000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x40000, -0x40000001, x1, 1920)

inst_140:
// rs1_val == 2097152, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200000;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200000, 0xb504f334, x1, 1936)

inst_141:
// rs1_val == 16777216, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000;  op2val:-0x4001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000000, -0x4001, x1, 1952)

inst_142:
// rs1_val == 33554432, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000000;  op2val:-0x80000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2000000, -0x80000000000001, x1, 1968)

inst_143:
// rs1_val == 536870912, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x80
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x20000000, 0x80, x1, 1984)

inst_144:
// rs1_val == 4294967296, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100000000;  op2val:-0x8000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200000000, -0x8000000000000000, x1, 2000)

inst_145:
// rs1_val == 8589934592, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200000000;  op2val:0x4000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200000000, 0x4000000000000000, x1, 2016)

inst_146:
// rs1_val == 17179869184, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000000;  op2val:0x80000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000000, 0x80000, x1, 2032)

inst_147:
// rs1_val == 34359738368, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800000000;  op2val:0x20000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x800000000, 0x20000000000000, x1, 2048)

inst_148:
// rs1_val == 68719476736, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000;  op2val:-0x10000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000000000, -0x10000001, x1, 2064)

inst_149:
// rs1_val == 4398046511104, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000000000;  op2val:0x200
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x40000000000, 0x200, x1, 2080)

inst_150:
// rs1_val == 8796093022208, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80000000000;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x80000000000, 0x4000000, x1, 2096)

inst_151:
// rs1_val == 17592186044416, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100000000000;  op2val:0x80000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x100000000000, 0x80000000000000, x1, 2112)

inst_152:
// rs1_val == 70368744177664, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000000000;  op2val:0x800000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000000000, 0x800000000000000, x1, 2128)

inst_153:
// rs1_val == 281474976710656, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000;  op2val:0x40
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1000000000000, 0x40, x1, 2144)

inst_154:
// rs1_val == 1125899906842624, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000;  op2val:0x400000
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000000000, 0x400000, x1, 2160)

inst_155:
// rs1_val == 4503599627370496, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000000000000;  op2val:0x40
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x10000000000000, 0x40, x1, 2176)

inst_156:
// rs1_val == 144115188075855872, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200000000000000;  op2val:-0x10000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x200000000000000, -0x10000001, x1, 2192)

inst_157:
// rs1_val == 288230376151711744, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400000000000000;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x400000000000000, 0x5555555555555554, x1, 2208)

inst_158:
// rs1_val == 4611686018427387904, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4000000000000000, 0x0, x1, 2224)

inst_159:
// rs1_val == -3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x3;  op2val:-0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x3, -0x6, x1, 2240)

inst_160:
// rs1_val == -17, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x11;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x11, 0x4000000, x1, 2256)

inst_161:
// rs1_val == -129, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x81;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x81, 0x0, x1, 2272)

inst_162:
// rs1_val == -257, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x101;  op2val:0x200
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x101, 0x200, x1, 2288)

inst_163:
// rs1_val == -513, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x201;  op2val:-0x4000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x201, -0x4000001, x1, 2304)

inst_164:
// rs1_val == -1025, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x401;  op2val:-0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x401, -0x5, x1, 2320)

inst_165:
// rs1_val == -2049, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x801;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x801, 0x3333333333333332, x1, 2336)

inst_166:
// rs1_val == -4097, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1001;  op2val:-0x200001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1001, -0x200001, x1, 2352)

inst_167:
// rs1_val == -8193, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2001;  op2val:-0x4000000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2001, -0x4000000000000001, x1, 2368)

inst_168:
// rs1_val == -16385, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4001;  op2val:-0x100001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4001, -0x100001, x1, 2384)

inst_169:
// rs1_val == -131073, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20001;  op2val:0x8
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x20001, 0x8, x1, 2400)

inst_170:
// rs1_val == -1048577, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x100001;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x100001, 0x6666666666666665, x1, 2416)

inst_171:
// rs1_val == -2097153, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200001;  op2val:-0x80000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x200001, -0x80000000000001, x1, 2432)

inst_172:
// rs1_val == -33554433, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2000001;  op2val:0x4000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2000001, 0x4000000000000, x1, 2448)

inst_173:
// rs1_val == -67108865, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4000001;  op2val:0x8000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4000001, 0x8000000, x1, 2464)

inst_174:
// rs1_val == -134217729, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8000001;  op2val:-0x1000000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x8000001, -0x1000000000000001, x1, 2480)

inst_175:
// rs1_val == -1073741825, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40000001;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x40000001, 0x4000000, x1, 2496)

inst_176:
// rs1_val == -4294967297, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x100000001;  op2val:-0x200000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x100000001, -0x200000000001, x1, 2512)

inst_177:
// rs1_val == -17179869185, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x400000001;  op2val:-0x20000000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x400000001, -0x20000000000001, x1, 2528)

inst_178:
// rs1_val == -34359738369, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x800000001;  op2val:0x400000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x800000001, 0x400000000000000, x1, 2544)

inst_179:
// rs1_val == -68719476737, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000000001;  op2val:-0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000000001, -0x4, x1, 2560)

inst_180:
// rs1_val == -549755813889, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8000000001;  op2val:0x10000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x8000000001, 0x10000000000, x1, 2576)

inst_181:
// rs1_val == -1099511627777, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000000001;  op2val:0x2000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x10000000001, 0x2000, x1, 2592)

inst_182:
// rs1_val == -2199023255553, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20000000001;  op2val:0x10000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x20000000001, 0x10000000000, x1, 2608)

inst_183:
// rs1_val == -4398046511105, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40000000001;  op2val:-0x40000000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x40000000001, -0x40000000001, x1, 2624)

inst_184:
// rs1_val == -35184372088833, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200000000001;  op2val:-0x8001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x200000000001, -0x8001, x1, 2640)

inst_185:
// rs1_val == -140737488355329, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x800000000001;  op2val:0x20000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x800000000001, 0x20000000000000, x1, 2656)

inst_186:
// rs1_val == -281474976710657, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000000000001;  op2val:-0x800000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x1000000000001, -0x800000001, x1, 2672)

inst_187:
// rs1_val == -562949953421313, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2000000000001;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2000000000001, 0xb504f333, x1, 2688)

inst_188:
// rs1_val == -18014398509481985, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40000000000001;  op2val:-0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x40000000000001, -0x3, x1, 2704)

inst_189:
// rs1_val == -72057594037927937, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x100000000000001;  op2val:-0x801
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x100000000000001, -0x801, x1, 2720)

inst_190:
// rs1_val == -288230376151711745, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x400000000000001;  op2val:0x1000000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x400000000000001, 0x1000000000000000, x1, 2736)

inst_191:
// rs1_val == -576460752303423489, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x800000000000001;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x800000000000001, 0xb504f332, x1, 2752)

inst_192:
// rs1_val == -2305843009213693953, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2000000000000001;  op2val:0x800000000000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x2000000000000001, 0x800000000000000, x1, 2768)

inst_193:
// rs1_val == -4611686018427387905, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4000000000000001;  op2val:-0x401
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x4000000000000001, -0x401, x1, 2784)

inst_194:
// rs1_val == -6148914691236517206, rs1_val==-6148914691236517206 and rs2_val==0
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x0, x1, 2800)

inst_195:
// rs1_val==3 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x3, x1, 2816)

inst_196:
// rs1_val==3 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x5555555555555555, x1, 2832)

inst_197:
// rs1_val==3 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, -0x5555555555555556, x1, 2848)

inst_198:
// rs1_val==3 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x5, x1, 2864)

inst_199:
// rs1_val==3 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x3333333333333333, x1, 2880)

inst_200:
// rs1_val==3 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x6666666666666666, x1, 2896)

inst_201:
// rs1_val==3 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, -0xb504f333, x1, 2912)

inst_202:
// rs1_val==3 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0xb504f333, x1, 2928)

inst_203:
// rs1_val==3 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x2, x1, 2944)

inst_204:
// rs1_val==3 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x5555555555555554, x1, 2960)

inst_205:
// rs1_val==3 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x0, x1, 2976)

inst_206:
// rs1_val==3 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x4, x1, 2992)

inst_207:
// rs1_val==3 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x3333333333333332, x1, 3008)

inst_208:
// rs1_val==3 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x6666666666666665, x1, 3024)

inst_209:
// rs1_val==3 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0xb504f332, x1, 3040)

inst_210:
// rs1_val==3 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x5555555555555556, x1, 3056)

inst_211:
// rs1_val==3 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, -0x5555555555555555, x1, 3072)

inst_212:
// rs1_val==3 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x6, x1, 3088)

inst_213:
// rs1_val==3 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x3333333333333334, x1, 3104)

inst_214:
// rs1_val==3 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0x6666666666666667, x1, 3120)

inst_215:
// rs1_val==3 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, -0xb504f332, x1, 3136)

inst_216:
// rs1_val==3 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3, 0xb504f334, x1, 3152)

inst_217:
// rs1_val==6148914691236517205 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x3, x1, 3168)

inst_218:
// rs1_val==6148914691236517205 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x5555555555555555, x1, 3184)

inst_219:
// rs1_val==6148914691236517205 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, -0x5555555555555556, x1, 3200)

inst_220:
// rs1_val==6148914691236517205 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x5, x1, 3216)

inst_221:
// rs1_val==6148914691236517205 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x3333333333333333, x1, 3232)

inst_222:
// rs1_val==6148914691236517205 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x6666666666666666, x1, 3248)

inst_223:
// rs1_val==6148914691236517205 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, -0xb504f333, x1, 3264)

inst_224:
// rs1_val==6148914691236517205 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0xb504f333, x1, 3280)

inst_225:
// rs1_val==6148914691236517205 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x2, x1, 3296)

inst_226:
// rs1_val==6148914691236517205 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x5555555555555554, x1, 3312)

inst_227:
// rs1_val==6148914691236517205 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x0, x1, 3328)

inst_228:
// rs1_val==6148914691236517205 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x4, x1, 3344)

inst_229:
// rs1_val==6148914691236517205 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x3333333333333332, x1, 3360)

inst_230:
// rs1_val==6148914691236517205 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x6666666666666665, x1, 3376)

inst_231:
// rs1_val==6148914691236517205 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0xb504f332, x1, 3392)

inst_232:
// rs1_val==6148914691236517205 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x5555555555555556, x1, 3408)

inst_233:
// rs1_val==6148914691236517205 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, -0x5555555555555555, x1, 3424)

inst_234:
// rs1_val==6148914691236517205 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x6, x1, 3440)

inst_235:
// rs1_val==6148914691236517205 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x3333333333333334, x1, 3456)

inst_236:
// rs1_val==6148914691236517205 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0x6666666666666667, x1, 3472)

inst_237:
// rs1_val==6148914691236517205 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, -0xb504f332, x1, 3488)

inst_238:
// rs1_val==6148914691236517205 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555555, 0xb504f334, x1, 3504)

inst_239:
// rs1_val==-6148914691236517206 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x3, x1, 3520)

inst_240:
// rs1_val==-6148914691236517206 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x5555555555555555, x1, 3536)

inst_241:
// rs1_val==-6148914691236517206 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, -0x5555555555555556, x1, 3552)

inst_242:
// rs1_val==-6148914691236517206 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x5, x1, 3568)

inst_243:
// rs1_val==-6148914691236517206 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x3333333333333333, x1, 3584)

inst_244:
// rs1_val==-6148914691236517206 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x6666666666666666, x1, 3600)

inst_245:
// rs1_val==-6148914691236517206 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, -0xb504f333, x1, 3616)

inst_246:
// rs1_val==-6148914691236517206 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0xb504f333, x1, 3632)

inst_247:
// rs1_val==-6148914691236517206 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x2, x1, 3648)

inst_248:
// rs1_val==-6148914691236517206 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x5555555555555554, x1, 3664)

inst_249:
// rs1_val==-6148914691236517206 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x4, x1, 3680)

inst_250:
// rs1_val==-6148914691236517206 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x3333333333333332, x1, 3696)

inst_251:
// rs1_val==-6148914691236517206 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x6666666666666665, x1, 3712)

inst_252:
// rs1_val==-6148914691236517206 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0xb504f332, x1, 3728)

inst_253:
// rs1_val==-6148914691236517206 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x5555555555555556, x1, 3744)

inst_254:
// rs1_val==-6148914691236517206 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, -0x5555555555555555, x1, 3760)

inst_255:
// rs1_val==-6148914691236517206 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x6, x1, 3776)

inst_256:
// rs1_val==-6148914691236517206 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x3333333333333334, x1, 3792)

inst_257:
// rs1_val==-6148914691236517206 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0x6666666666666667, x1, 3808)

inst_258:
// rs1_val==-6148914691236517206 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, -0xb504f332, x1, 3824)

inst_259:
// rs1_val==-6148914691236517206 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555556;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555556, 0xb504f334, x1, 3840)

inst_260:
// rs1_val==5 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x3, x1, 3856)

inst_261:
// rs1_val==5 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x5555555555555555, x1, 3872)

inst_262:
// rs1_val==5 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0x5555555555555556, x1, 3888)

inst_263:
// rs1_val==5 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x5, x1, 3904)

inst_264:
// rs1_val==5 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x3333333333333333, x1, 3920)

inst_265:
// rs1_val==5 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x6666666666666666, x1, 3936)

inst_266:
// rs1_val==5 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0xb504f333, x1, 3952)

inst_267:
// rs1_val==5 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0xb504f333, x1, 3968)

inst_268:
// rs1_val==5 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x2, x1, 3984)

inst_269:
// rs1_val==5 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x5555555555555554, x1, 4000)

inst_270:
// rs1_val==5 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x0, x1, 4016)

inst_271:
// rs1_val==5 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x4, x1, 4032)

inst_272:
// rs1_val==5 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x3333333333333332, x1, 4048)

inst_273:
// rs1_val==5 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x6666666666666665, x1, 4064)

inst_274:
// rs1_val==5 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0xb504f332, x1, 4080)
RVTEST_SIGBASE( x1,signature_x1_1)

inst_275:
// rs1_val==5 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x5555555555555556, x1, 0)

inst_276:
// rs1_val==5 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0x5555555555555555, x1, 16)

inst_277:
// rs1_val==5 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x6, x1, 32)

inst_278:
// rs1_val==5 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x3333333333333334, x1, 48)

inst_279:
// rs1_val==5 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0x6666666666666667, x1, 64)

inst_280:
// rs1_val==5 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, -0xb504f332, x1, 80)

inst_281:
// rs1_val==5 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5, 0xb504f334, x1, 96)

inst_282:
// rs1_val==3689348814741910323 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x3, x1, 112)

inst_283:
// rs1_val==3689348814741910323 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x5555555555555555, x1, 128)

inst_284:
// rs1_val==3689348814741910323 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, -0x5555555555555556, x1, 144)

inst_285:
// rs1_val==3689348814741910323 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x5, x1, 160)

inst_286:
// rs1_val==3689348814741910323 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x3333333333333333, x1, 176)

inst_287:
// rs1_val==3689348814741910323 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x6666666666666666, x1, 192)

inst_288:
// rs1_val==3689348814741910323 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, -0xb504f333, x1, 208)

inst_289:
// rs1_val==3689348814741910323 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0xb504f333, x1, 224)

inst_290:
// rs1_val==3689348814741910323 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x2, x1, 240)

inst_291:
// rs1_val==3689348814741910323 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x5555555555555554, x1, 256)

inst_292:
// rs1_val==3689348814741910323 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x0, x1, 272)

inst_293:
// rs1_val==3689348814741910323 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x4, x1, 288)

inst_294:
// rs1_val==3689348814741910323 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x3333333333333332, x1, 304)

inst_295:
// rs1_val==3689348814741910323 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x6666666666666665, x1, 320)

inst_296:
// rs1_val==3689348814741910323 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0xb504f332, x1, 336)

inst_297:
// rs1_val==3689348814741910323 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x5555555555555556, x1, 352)

inst_298:
// rs1_val==3689348814741910323 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, -0x5555555555555555, x1, 368)

inst_299:
// rs1_val==3689348814741910323 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x6, x1, 384)

inst_300:
// rs1_val==3689348814741910323 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x3333333333333334, x1, 400)

inst_301:
// rs1_val==3689348814741910323 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0x6666666666666667, x1, 416)

inst_302:
// rs1_val==3689348814741910323 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, -0xb504f332, x1, 432)

inst_303:
// rs1_val==3689348814741910323 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333333;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333333, 0xb504f334, x1, 448)

inst_304:
// rs1_val==7378697629483820646 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x3, x1, 464)

inst_305:
// rs1_val==7378697629483820646 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, -0x5555555555555556, x1, 480)

inst_306:
// rs1_val==7378697629483820646 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x5, x1, 496)

inst_307:
// rs1_val==7378697629483820646 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x3333333333333333, x1, 512)

inst_308:
// rs1_val==7378697629483820646 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x6666666666666666, x1, 528)

inst_309:
// rs1_val==7378697629483820646 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, -0xb504f333, x1, 544)

inst_310:
// rs1_val==7378697629483820646 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0xb504f333, x1, 560)

inst_311:
// rs1_val==7378697629483820646 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x2, x1, 576)

inst_312:
// rs1_val==7378697629483820646 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x5555555555555554, x1, 592)

inst_313:
// rs1_val==7378697629483820646 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x0, x1, 608)

inst_314:
// rs1_val==7378697629483820646 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x4, x1, 624)

inst_315:
// rs1_val==7378697629483820646 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x3333333333333332, x1, 640)

inst_316:
// rs1_val==7378697629483820646 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x6666666666666665, x1, 656)

inst_317:
// rs1_val==7378697629483820646 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0xb504f332, x1, 672)

inst_318:
// rs1_val==7378697629483820646 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x5555555555555556, x1, 688)

inst_319:
// rs1_val==7378697629483820646 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, -0x5555555555555555, x1, 704)

inst_320:
// rs1_val==7378697629483820646 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x6, x1, 720)

inst_321:
// rs1_val==7378697629483820646 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x3333333333333334, x1, 736)

inst_322:
// rs1_val==7378697629483820646 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0x6666666666666667, x1, 752)

inst_323:
// rs1_val==7378697629483820646 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, -0xb504f332, x1, 768)

inst_324:
// rs1_val==7378697629483820646 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666666;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666666, 0xb504f334, x1, 784)

inst_325:
// rs1_val==-3037000499 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x3, x1, 800)

inst_326:
// rs1_val==-3037000499 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x5555555555555555, x1, 816)

inst_327:
// rs1_val==-3037000499 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, -0x5555555555555556, x1, 832)

inst_328:
// rs1_val==-3037000499 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x5, x1, 848)

inst_329:
// rs1_val==-3037000499 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x3333333333333333, x1, 864)

inst_330:
// rs1_val==-3037000499 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x6666666666666666, x1, 880)

inst_331:
// rs1_val==-3037000499 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, -0xb504f333, x1, 896)

inst_332:
// rs1_val==-3037000499 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0xb504f333, x1, 912)

inst_333:
// rs1_val==-3037000499 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x2, x1, 928)

inst_334:
// rs1_val==-3037000499 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x5555555555555554, x1, 944)

inst_335:
// rs1_val==-3037000499 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x0, x1, 960)

inst_336:
// rs1_val==-3037000499 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x4, x1, 976)

inst_337:
// rs1_val==-3037000499 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x3333333333333332, x1, 992)

inst_338:
// rs1_val==-3037000499 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb1008f333, 0x6666666666666665, x1, 1008)

inst_339:
// rs1_val==-3037000499 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0xb504f332, x1, 1024)

inst_340:
// rs1_val==-3037000499 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x5555555555555556, x1, 1040)

inst_341:
// rs1_val==-3037000499 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, -0x5555555555555555, x1, 1056)

inst_342:
// rs1_val==-3037000499 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x6, x1, 1072)

inst_343:
// rs1_val==-3037000499 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x3333333333333334, x1, 1088)

inst_344:
// rs1_val==-3037000499 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0x6666666666666667, x1, 1104)

inst_345:
// rs1_val==-3037000499 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, -0xb504f332, x1, 1120)

inst_346:
// rs1_val==-3037000499 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f333;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f333, 0xb504f334, x1, 1136)

inst_347:
// rs1_val==3037000499 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x3, x1, 1152)

inst_348:
// rs1_val==3037000499 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x5555555555555555, x1, 1168)

inst_349:
// rs1_val==3037000499 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, -0x5555555555555556, x1, 1184)

inst_350:
// rs1_val==3037000499 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x5, x1, 1200)

inst_351:
// rs1_val==3037000499 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x3333333333333333, x1, 1216)

inst_352:
// rs1_val==3037000499 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x6666666666666666, x1, 1232)

inst_353:
// rs1_val==3037000499 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, -0xb504f333, x1, 1248)

inst_354:
// rs1_val==3037000499 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0xb504f333, x1, 1264)

inst_355:
// rs1_val==3037000499 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x2, x1, 1280)

inst_356:
// rs1_val==3037000499 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x5555555555555554, x1, 1296)

inst_357:
// rs1_val==3037000499 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x0, x1, 1312)

inst_358:
// rs1_val==3037000499 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x4, x1, 1328)

inst_359:
// rs1_val==3037000499 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x3333333333333332, x1, 1344)

inst_360:
// rs1_val==3037000499 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x6666666666666665, x1, 1360)

inst_361:
// rs1_val==3037000499 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0xb504f332, x1, 1376)

inst_362:
// rs1_val==3037000499 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x5555555555555556, x1, 1392)

inst_363:
// rs1_val==3037000499 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, -0x5555555555555555, x1, 1408)

inst_364:
// rs1_val==3037000499 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x6, x1, 1424)

inst_365:
// rs1_val==3037000499 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x3333333333333334, x1, 1440)

inst_366:
// rs1_val==3037000499 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0x6666666666666667, x1, 1456)

inst_367:
// rs1_val==3037000499 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, -0xb504f332, x1, 1472)

inst_368:
// rs1_val==3037000499 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f333;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f333, 0xb504f334, x1, 1488)

inst_369:
// rs1_val==2 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x3, x1, 1504)

inst_370:
// rs1_val==2 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x5555555555555555, x1, 1520)

inst_371:
// rs1_val==2 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, -0x5555555555555556, x1, 1536)

inst_372:
// rs1_val==2 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x5, x1, 1552)

inst_373:
// rs1_val==2 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x3333333333333333, x1, 1568)

inst_374:
// rs1_val==2 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x6666666666666666, x1, 1584)

inst_375:
// rs1_val==2 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, -0xb504f333, x1, 1600)

inst_376:
// rs1_val==2 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0xb504f333, x1, 1616)

inst_377:
// rs1_val==2 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x2, x1, 1632)

inst_378:
// rs1_val==2 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x5555555555555554, x1, 1648)

inst_379:
// rs1_val==2 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x0, x1, 1664)

inst_380:
// rs1_val==2 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x4, x1, 1680)

inst_381:
// rs1_val==2 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x3333333333333332, x1, 1696)

inst_382:
// rs1_val==2 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x6666666666666665, x1, 1712)

inst_383:
// rs1_val==2 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0xb504f332, x1, 1728)

inst_384:
// rs1_val==2 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x5555555555555556, x1, 1744)

inst_385:
// rs1_val==2 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, -0x5555555555555555, x1, 1760)

inst_386:
// rs1_val==2 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x6, x1, 1776)

inst_387:
// rs1_val==2 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x3333333333333334, x1, 1792)

inst_388:
// rs1_val==2 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0x6666666666666667, x1, 1808)

inst_389:
// rs1_val==2 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, -0xb504f332, x1, 1824)

inst_390:
// rs1_val==2 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x2, 0xb504f334, x1, 1840)

inst_391:
// rs1_val==6148914691236517204 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x3, x1, 1856)

inst_392:
// rs1_val==6148914691236517204 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x5555555555555555, x1, 1872)

inst_393:
// rs1_val==6148914691236517204 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, -0x5555555555555556, x1, 1888)

inst_394:
// rs1_val==6148914691236517204 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x5, x1, 1904)

inst_395:
// rs1_val==6148914691236517204 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x3333333333333333, x1, 1920)

inst_396:
// rs1_val==6148914691236517204 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x6666666666666666, x1, 1936)

inst_397:
// rs1_val==6148914691236517204 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, -0xb504f333, x1, 1952)

inst_398:
// rs1_val==6148914691236517204 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0xb504f333, x1, 1968)

inst_399:
// rs1_val==6148914691236517204 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x2, x1, 1984)

inst_400:
// rs1_val==6148914691236517204 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x5555555555555554, x1, 2000)

inst_401:
// rs1_val==6148914691236517204 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x0, x1, 2016)

inst_402:
// rs1_val==6148914691236517204 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x4, x1, 2032)

inst_403:
// rs1_val==6148914691236517204 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x3333333333333332, x1, 2048)

inst_404:
// rs1_val==6148914691236517204 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x6666666666666665, x1, 2064)

inst_405:
// rs1_val==6148914691236517204 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0xb504f332, x1, 2080)

inst_406:
// rs1_val==6148914691236517204 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x5555555555555556, x1, 2096)

inst_407:
// rs1_val==6148914691236517204 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, -0x5555555555555555, x1, 2112)

inst_408:
// rs1_val==6148914691236517204 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x6, x1, 2128)

inst_409:
// rs1_val==6148914691236517204 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x3333333333333334, x1, 2144)

inst_410:
// rs1_val==6148914691236517204 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0x6666666666666667, x1, 2160)

inst_411:
// rs1_val==6148914691236517204 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, -0xb504f332, x1, 2176)

inst_412:
// rs1_val==6148914691236517204 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555554;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555554, 0xb504f334, x1, 2192)

inst_413:
// rs1_val==0 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x3, x1, 2208)

inst_414:
// rs1_val==0 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x5555555555555555, x1, 2224)

inst_415:
// rs1_val==0 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0x5555555555555556, x1, 2240)

inst_416:
// rs1_val==0 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x5, x1, 2256)

inst_417:
// rs1_val==0 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x3333333333333333, x1, 2272)

inst_418:
// rs1_val==0 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x6666666666666666, x1, 2288)

inst_419:
// rs1_val==0 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0xb504f333, x1, 2304)

inst_420:
// rs1_val==0 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0xb504f333, x1, 2320)

inst_421:
// rs1_val==0 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0xb504f332, x1, 2336)

inst_422:
// rs1_val==0 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0xb504f334, x1, 2352)

inst_423:
// rs1_val==4 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x3, x1, 2368)

inst_424:
// rs1_val==4 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x5555555555555555, x1, 2384)

inst_425:
// rs1_val==4 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0x5555555555555556, x1, 2400)

inst_426:
// rs1_val==4 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x5, x1, 2416)

inst_427:
// rs1_val==4 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x3333333333333333, x1, 2432)

inst_428:
// rs1_val==4 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x6666666666666666, x1, 2448)

inst_429:
// rs1_val==4 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0xb504f333, x1, 2464)

inst_430:
// rs1_val==4 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0xb504f333, x1, 2480)

inst_431:
// rs1_val==4 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x2, x1, 2496)

inst_432:
// rs1_val==4 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x5555555555555554, x1, 2512)

inst_433:
// rs1_val==4 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x0, x1, 2528)

inst_434:
// rs1_val==4 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x4, x1, 2544)

inst_435:
// rs1_val==4 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x3333333333333332, x1, 2560)

inst_436:
// rs1_val==4 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x6666666666666665, x1, 2576)

inst_437:
// rs1_val==4 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0xb504f332, x1, 2592)

inst_438:
// rs1_val==4 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0x5555555555555555, x1, 2608)

inst_439:
// rs1_val==4 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x6, x1, 2624)

inst_440:
// rs1_val==4 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x3333333333333334, x1, 2640)

inst_441:
// rs1_val==4 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x6666666666666667, x1, 2656)

inst_442:
// rs1_val==4 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, -0xb504f332, x1, 2672)

inst_443:
// rs1_val==4 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0xb504f334, x1, 2688)

inst_444:
// rs1_val==3689348814741910322 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x3, x1, 2704)

inst_445:
// rs1_val==3689348814741910322 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x5555555555555555, x1, 2720)

inst_446:
// rs1_val==3689348814741910322 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, -0x5555555555555556, x1, 2736)

inst_447:
// rs1_val==3689348814741910322 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x5, x1, 2752)

inst_448:
// rs1_val==3689348814741910322 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x3333333333333333, x1, 2768)

inst_449:
// rs1_val==3689348814741910322 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x6666666666666666, x1, 2784)

inst_450:
// rs1_val==3689348814741910322 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, -0xb504f333, x1, 2800)

inst_451:
// rs1_val==3689348814741910322 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0xb504f333, x1, 2816)

inst_452:
// rs1_val==3689348814741910322 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x2, x1, 2832)

inst_453:
// rs1_val==3689348814741910322 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x5555555555555554, x1, 2848)

inst_454:
// rs1_val==3689348814741910322 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x0, x1, 2864)

inst_455:
// rs1_val==3689348814741910322 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x4, x1, 2880)

inst_456:
// rs1_val==3689348814741910322 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x3333333333333332, x1, 2896)

inst_457:
// rs1_val==3689348814741910322 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x6666666666666665, x1, 2912)

inst_458:
// rs1_val==3689348814741910322 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0xb504f332, x1, 2928)

inst_459:
// rs1_val==3689348814741910322 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x5555555555555556, x1, 2944)

inst_460:
// rs1_val==3689348814741910322 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, -0x5555555555555555, x1, 2960)

inst_461:
// rs1_val==3689348814741910322 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x6, x1, 2976)

inst_462:
// rs1_val==3689348814741910322 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x3333333333333334, x1, 2992)

inst_463:
// rs1_val==3689348814741910322 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0x6666666666666667, x1, 3008)

inst_464:
// rs1_val==3689348814741910322 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, -0xb504f332, x1, 3024)

inst_465:
// rs1_val==3689348814741910322 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333332;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333332, 0xb504f334, x1, 3040)

inst_466:
// rs1_val==7378697629483820645 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x3, x1, 3056)

inst_467:
// rs1_val==7378697629483820645 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x5555555555555555, x1, 3072)

inst_468:
// rs1_val==7378697629483820645 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, -0x5555555555555556, x1, 3088)

inst_469:
// rs1_val==7378697629483820645 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x5, x1, 3104)

inst_470:
// rs1_val==7378697629483820645 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x3333333333333333, x1, 3120)

inst_471:
// rs1_val==7378697629483820645 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x6666666666666666, x1, 3136)

inst_472:
// rs1_val==7378697629483820645 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, -0xb504f333, x1, 3152)

inst_473:
// rs1_val==7378697629483820645 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0xb504f333, x1, 3168)

inst_474:
// rs1_val==7378697629483820645 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x2, x1, 3184)

inst_475:
// rs1_val==7378697629483820645 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x5555555555555554, x1, 3200)

inst_476:
// rs1_val==7378697629483820645 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x0, x1, 3216)

inst_477:
// rs1_val==7378697629483820645 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x4, x1, 3232)

inst_478:
// rs1_val==7378697629483820645 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x3333333333333332, x1, 3248)

inst_479:
// rs1_val==7378697629483820645 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x6666666666666665, x1, 3264)

inst_480:
// rs1_val==7378697629483820645 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0xb504f332, x1, 3280)

inst_481:
// rs1_val==7378697629483820645 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x5555555555555556, x1, 3296)

inst_482:
// rs1_val==7378697629483820645 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, -0x5555555555555555, x1, 3312)

inst_483:
// rs1_val==7378697629483820645 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x6, x1, 3328)

inst_484:
// rs1_val==7378697629483820645 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x3333333333333334, x1, 3344)

inst_485:
// rs1_val==7378697629483820645 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0x6666666666666667, x1, 3360)

inst_486:
// rs1_val==7378697629483820645 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, -0xb504f332, x1, 3376)

inst_487:
// rs1_val==7378697629483820645 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666665;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666665, 0xb504f334, x1, 3392)

inst_488:
// rs1_val==3037000498 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x3, x1, 3408)

inst_489:
// rs1_val==3037000498 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x5555555555555555, x1, 3424)

inst_490:
// rs1_val==3037000498 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, -0x5555555555555556, x1, 3440)

inst_491:
// rs1_val==3037000498 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x5, x1, 3456)

inst_492:
// rs1_val==3037000498 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x3333333333333333, x1, 3472)

inst_493:
// rs1_val==3037000498 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x6666666666666666, x1, 3488)

inst_494:
// rs1_val==3037000498 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, -0xb504f333, x1, 3504)

inst_495:
// rs1_val==3037000498 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0xb504f333, x1, 3520)

inst_496:
// rs1_val==3037000498 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x2, x1, 3536)

inst_497:
// rs1_val==3037000498 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x5555555555555554, x1, 3552)

inst_498:
// rs1_val==3037000498 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x0, x1, 3568)

inst_499:
// rs1_val==3037000498 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x4, x1, 3584)

inst_500:
// rs1_val==3037000498 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x3333333333333332, x1, 3600)

inst_501:
// rs1_val==3037000498 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x6666666666666665, x1, 3616)

inst_502:
// rs1_val==3037000498 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0xb504f332, x1, 3632)

inst_503:
// rs1_val==3037000498 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x5555555555555556, x1, 3648)

inst_504:
// rs1_val==3037000498 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, -0x5555555555555555, x1, 3664)

inst_505:
// rs1_val==3037000498 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x6, x1, 3680)

inst_506:
// rs1_val==3037000498 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x3333333333333334, x1, 3696)

inst_507:
// rs1_val==3037000498 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0x6666666666666667, x1, 3712)

inst_508:
// rs1_val==3037000498 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, -0xb504f332, x1, 3728)

inst_509:
// rs1_val==3037000498 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f332;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f332, 0xb504f334, x1, 3744)

inst_510:
// rs1_val==6148914691236517206 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x3, x1, 3760)

inst_511:
// rs1_val==6148914691236517206 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x5555555555555555, x1, 3776)

inst_512:
// rs1_val==6148914691236517206 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, -0x5555555555555556, x1, 3792)

inst_513:
// rs1_val==6148914691236517206 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x5, x1, 3808)

inst_514:
// rs1_val==6148914691236517206 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x3333333333333333, x1, 3824)

inst_515:
// rs1_val==6148914691236517206 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x6666666666666666, x1, 3840)

inst_516:
// rs1_val==6148914691236517206 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, -0xb504f333, x1, 3856)

inst_517:
// rs1_val==6148914691236517206 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0xb504f333, x1, 3872)

inst_518:
// rs1_val==6148914691236517206 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x2, x1, 3888)

inst_519:
// rs1_val==6148914691236517206 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x5555555555555554, x1, 3904)

inst_520:
// rs1_val==6148914691236517206 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x0, x1, 3920)

inst_521:
// rs1_val==6148914691236517206 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x4, x1, 3936)

inst_522:
// rs1_val==6148914691236517206 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x3333333333333332, x1, 3952)

inst_523:
// rs1_val==6148914691236517206 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x6666666666666665, x1, 3968)

inst_524:
// rs1_val==6148914691236517206 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0xb504f332, x1, 3984)

inst_525:
// rs1_val==6148914691236517206 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x5555555555555556, x1, 4000)

inst_526:
// rs1_val==6148914691236517206 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, -0x5555555555555555, x1, 4016)

inst_527:
// rs1_val==6148914691236517206 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x6, x1, 4032)

inst_528:
// rs1_val==6148914691236517206 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x3333333333333334, x1, 4048)

inst_529:
// rs1_val==6148914691236517206 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0x6666666666666667, x1, 4064)

inst_530:
// rs1_val==6148914691236517206 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, -0xb504f332, x1, 4080)
RVTEST_SIGBASE( x1,signature_x1_2)

inst_531:
// rs1_val==6148914691236517206 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555556;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x5555555555555556, 0xb504f334, x1, 0)

inst_532:
// rs1_val==-6148914691236517205 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x3, x1, 16)

inst_533:
// rs1_val==-6148914691236517205 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x5555555555555555, x1, 32)

inst_534:
// rs1_val==-6148914691236517205 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0x5555555555555556, x1, 48)

inst_535:
// rs1_val==-6148914691236517205 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x5, x1, 64)

inst_536:
// rs1_val==-6148914691236517205 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x3333333333333333, x1, 80)

inst_537:
// rs1_val==-6148914691236517205 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x6666666666666666, x1, 96)

inst_538:
// rs1_val==-6148914691236517205 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0xb504f333, x1, 112)

inst_539:
// rs1_val==-6148914691236517205 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0xb504f333, x1, 128)

inst_540:
// rs1_val==-6148914691236517205 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x2, x1, 144)

inst_541:
// rs1_val==-6148914691236517205 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x5555555555555554, x1, 160)

inst_542:
// rs1_val==-6148914691236517205 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x0, x1, 176)

inst_543:
// rs1_val==-6148914691236517205 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x4, x1, 192)

inst_544:
// rs1_val==-6148914691236517205 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x3333333333333332, x1, 208)

inst_545:
// rs1_val==-6148914691236517205 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x6666666666666665, x1, 224)

inst_546:
// rs1_val==-6148914691236517205 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0xb504f332, x1, 240)

inst_547:
// rs1_val==-6148914691236517205 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x5555555555555556, x1, 256)

inst_548:
// rs1_val==-6148914691236517205 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0x5555555555555555, x1, 272)

inst_549:
// rs1_val==-6148914691236517205 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x6, x1, 288)

inst_550:
// rs1_val==-6148914691236517205 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x3333333333333334, x1, 304)

inst_551:
// rs1_val==-6148914691236517205 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0x6666666666666667, x1, 320)

inst_552:
// rs1_val==-6148914691236517205 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, -0xb504f332, x1, 336)

inst_553:
// rs1_val==-6148914691236517205 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x5555555555555555;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x5555555555555555, 0xb504f334, x1, 352)

inst_554:
// rs1_val==6 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x3, x1, 368)

inst_555:
// rs1_val==6 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x5555555555555555, x1, 384)

inst_556:
// rs1_val==6 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, -0x5555555555555556, x1, 400)

inst_557:
// rs1_val==6 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x5, x1, 416)

inst_558:
// rs1_val==6 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x3333333333333333, x1, 432)

inst_559:
// rs1_val==6 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x6666666666666666, x1, 448)

inst_560:
// rs1_val==6 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, -0xb504f333, x1, 464)

inst_561:
// rs1_val==6 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0xb504f333, x1, 480)

inst_562:
// rs1_val==6 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x2, x1, 496)

inst_563:
// rs1_val==6 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x5555555555555554, x1, 512)

inst_564:
// rs1_val==6 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x0, x1, 528)

inst_565:
// rs1_val==6 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x4, x1, 544)

inst_566:
// rs1_val==6 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x3333333333333332, x1, 560)

inst_567:
// rs1_val==6 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x6666666666666665, x1, 576)

inst_568:
// rs1_val==6 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0xb504f332, x1, 592)

inst_569:
// rs1_val==6 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x5555555555555556, x1, 608)

inst_570:
// rs1_val==6 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, -0x5555555555555555, x1, 624)

inst_571:
// rs1_val==6 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x6, x1, 640)

inst_572:
// rs1_val==6 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x3333333333333334, x1, 656)

inst_573:
// rs1_val==6 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0x6666666666666667, x1, 672)

inst_574:
// rs1_val==6 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, -0xb504f332, x1, 688)

inst_575:
// rs1_val==6 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6, 0xb504f334, x1, 704)

inst_576:
// rs1_val==3689348814741910324 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x3, x1, 720)

inst_577:
// rs1_val==3689348814741910324 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x5555555555555555, x1, 736)

inst_578:
// rs1_val==3689348814741910324 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, -0x5555555555555556, x1, 752)

inst_579:
// rs1_val==3689348814741910324 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x5, x1, 768)

inst_580:
// rs1_val==3689348814741910324 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x3333333333333333, x1, 784)

inst_581:
// rs1_val==3689348814741910324 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x6666666666666666, x1, 800)

inst_582:
// rs1_val==3689348814741910324 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, -0xb504f333, x1, 816)

inst_583:
// rs1_val==3689348814741910324 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0xb504f333, x1, 832)

inst_584:
// rs1_val==3689348814741910324 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x2, x1, 848)

inst_585:
// rs1_val==3689348814741910324 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x5555555555555554, x1, 864)

inst_586:
// rs1_val==3689348814741910324 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x0, x1, 880)

inst_587:
// rs1_val==3689348814741910324 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x4, x1, 896)

inst_588:
// rs1_val==3689348814741910324 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x3333333333333332, x1, 912)

inst_589:
// rs1_val==3689348814741910324 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x6666666666666665, x1, 928)

inst_590:
// rs1_val==3689348814741910324 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0xb504f332, x1, 944)

inst_591:
// rs1_val==3689348814741910324 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x5555555555555556, x1, 960)

inst_592:
// rs1_val==3689348814741910324 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, -0x5555555555555555, x1, 976)

inst_593:
// rs1_val==3689348814741910324 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x6, x1, 992)

inst_594:
// rs1_val==3689348814741910324 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x3333333333333334, x1, 1008)

inst_595:
// rs1_val==3689348814741910324 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0x6666666666666667, x1, 1024)

inst_596:
// rs1_val==3689348814741910324 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, -0xb504f332, x1, 1040)

inst_597:
// rs1_val==3689348814741910324 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3333333333333334;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x3333333333333334, 0xb504f334, x1, 1056)

inst_598:
// rs1_val==7378697629483820647 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x3, x1, 1072)

inst_599:
// rs1_val==7378697629483820647 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x5555555555555555, x1, 1088)

inst_600:
// rs1_val==7378697629483820647 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, -0x5555555555555556, x1, 1104)

inst_601:
// rs1_val==7378697629483820647 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x5, x1, 1120)

inst_602:
// rs1_val==7378697629483820647 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x3333333333333333, x1, 1136)

inst_603:
// rs1_val==7378697629483820647 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x6666666666666666, x1, 1152)

inst_604:
// rs1_val==7378697629483820647 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, -0xb504f333, x1, 1168)

inst_605:
// rs1_val==7378697629483820647 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0xb504f333, x1, 1184)

inst_606:
// rs1_val==7378697629483820647 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x2, x1, 1200)

inst_607:
// rs1_val==7378697629483820647 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x5555555555555554, x1, 1216)

inst_608:
// rs1_val==7378697629483820647 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x0, x1, 1232)

inst_609:
// rs1_val==7378697629483820647 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x4, x1, 1248)

inst_610:
// rs1_val==7378697629483820647 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x3333333333333332, x1, 1264)

inst_611:
// rs1_val==7378697629483820647 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x6666666666666665, x1, 1280)

inst_612:
// rs1_val==7378697629483820647 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0xb504f332, x1, 1296)

inst_613:
// rs1_val==7378697629483820647 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x5555555555555556, x1, 1312)

inst_614:
// rs1_val==7378697629483820647 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, -0x5555555555555555, x1, 1328)

inst_615:
// rs1_val==7378697629483820647 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x6, x1, 1344)

inst_616:
// rs1_val==7378697629483820647 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x3333333333333334, x1, 1360)

inst_617:
// rs1_val==7378697629483820647 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0x6666666666666667, x1, 1376)

inst_618:
// rs1_val==7378697629483820647 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, -0xb504f332, x1, 1392)

inst_619:
// rs1_val==7378697629483820647 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6666666666666667;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x6666666666666667, 0xb504f334, x1, 1408)

inst_620:
// rs1_val==-3037000498 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x3, x1, 1424)

inst_621:
// rs1_val==-3037000498 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x5555555555555555, x1, 1440)

inst_622:
// rs1_val==-3037000498 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, -0x5555555555555556, x1, 1456)

inst_623:
// rs1_val==-3037000498 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x5, x1, 1472)

inst_624:
// rs1_val==-3037000498 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x3333333333333333, x1, 1488)

inst_625:
// rs1_val==-3037000498 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x6666666666666666, x1, 1504)

inst_626:
// rs1_val==-3037000498 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, -0xb504f333, x1, 1520)

inst_627:
// rs1_val==-3037000498 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0xb504f333, x1, 1536)

inst_628:
// rs1_val==-3037000498 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x2, x1, 1552)

inst_629:
// rs1_val==-3037000498 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x5555555555555554, x1, 1568)

inst_630:
// rs1_val==-3037000498 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x0, x1, 1584)

inst_631:
// rs1_val==-3037000498 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x4, x1, 1600)

inst_632:
// rs1_val==-3037000498 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x3333333333333332, x1, 1616)

inst_633:
// rs1_val==-3037000498 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x6666666666666665, x1, 1632)

inst_634:
// rs1_val==-3037000498 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0xb504f332, x1, 1648)

inst_635:
// rs1_val==-3037000498 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x5555555555555556, x1, 1664)

inst_636:
// rs1_val==-3037000498 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, -0x5555555555555555, x1, 1680)

inst_637:
// rs1_val==-3037000498 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x6, x1, 1696)

inst_638:
// rs1_val==-3037000498 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x3333333333333334, x1, 1712)

inst_639:
// rs1_val==-3037000498 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0x6666666666666667, x1, 1728)

inst_640:
// rs1_val==-3037000498 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, -0xb504f332, x1, 1744)

inst_641:
// rs1_val==-3037000498 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504f332;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0xb504f332, 0xb504f334, x1, 1760)

inst_642:
// rs1_val==3037000500 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x3, x1, 1776)

inst_643:
// rs1_val==3037000500 and rs2_val==6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x5555555555555555, x1, 1792)

inst_644:
// rs1_val==3037000500 and rs2_val==-6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:-0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, -0x5555555555555556, x1, 1808)

inst_645:
// rs1_val==3037000500 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x5, x1, 1824)

inst_646:
// rs1_val==3037000500 and rs2_val==3689348814741910323, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x3333333333333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x3333333333333333, x1, 1840)

inst_647:
// rs1_val==3037000500 and rs2_val==7378697629483820646, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x6666666666666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x6666666666666666, x1, 1856)

inst_648:
// rs1_val==3037000500 and rs2_val==-3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:-0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, -0xb504f333, x1, 1872)

inst_649:
// rs1_val==3037000500 and rs2_val==3037000499, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0xb504f333
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0xb504f333, x1, 1888)

inst_650:
// rs1_val==3037000500 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x2, x1, 1904)

inst_651:
// rs1_val==3037000500 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x5555555555555554, x1, 1920)

inst_652:
// rs1_val==3037000500 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x0, x1, 1936)

inst_653:
// rs1_val==3037000500 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x4, x1, 1952)

inst_654:
// rs1_val==3037000500 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x3333333333333332, x1, 1968)

inst_655:
// rs1_val==3037000500 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x6666666666666665, x1, 1984)

inst_656:
// rs1_val==3037000500 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0xb504f332, x1, 2000)

inst_657:
// rs1_val==3037000500 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x5555555555555556, x1, 2016)

inst_658:
// rs1_val==3037000500 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, -0x5555555555555555, x1, 2032)

inst_659:
// rs1_val==3037000500 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x6, x1, 2048)

inst_660:
// rs1_val==3037000500 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x3333333333333334, x1, 2064)

inst_661:
// rs1_val==3037000500 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0x6666666666666667, x1, 2080)

inst_662:
// rs1_val==3037000500 and rs2_val==-3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:-0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, -0xb504f332, x1, 2096)

inst_663:
// rs1_val==3037000500 and rs2_val==3037000500, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504f334;  op2val:0xb504f334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0xb504f334, 0xb504f334, x1, 2112)

inst_664:
// rs1_val==0 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x2, x1, 2128)

inst_665:
// rs1_val==0 and rs2_val==6148914691236517204, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x5555555555555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x5555555555555554, x1, 2144)

inst_666:
// rs1_val==0 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x0, x1, 2160)

inst_667:
// rs1_val==0 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x4, x1, 2176)

inst_668:
// rs1_val==0 and rs2_val==3689348814741910322, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x3333333333333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x3333333333333332, x1, 2192)

inst_669:
// rs1_val==0 and rs2_val==7378697629483820645, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x6666666666666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x6666666666666665, x1, 2208)

inst_670:
// rs1_val==0 and rs2_val==3037000498, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb504f332
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0xb504f332, x1, 2224)

inst_671:
// rs1_val==0 and rs2_val==6148914691236517206, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x5555555555555556, x1, 2240)

inst_672:
// rs1_val==0 and rs2_val==-6148914691236517205, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x5555555555555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, -0x5555555555555555, x1, 2256)

inst_673:
// rs1_val==0 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x6, x1, 2272)

inst_674:
// rs1_val==0 and rs2_val==3689348814741910324, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x3333333333333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x3333333333333334, x1, 2288)

inst_675:
// rs1_val==0 and rs2_val==7378697629483820647, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x6666666666666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x0, 0x6666666666666667, x1, 2304)

inst_676:
// rs1_val > 0 and rs2_val > 0, rs1_val == 4, rs1_val==4 and rs2_val==6148914691236517206, rs1_val != rs2_val
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x5555555555555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x4, 0x5555555555555556, x1, 2320)

inst_677:
// rs1_val < 0 and rs2_val < 0, rs1_val == -8388609
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x800001;  op2val:-0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, -0x800001, -0x4, x1, 2336)

inst_678:
// rs2_val == 256, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1;  op2val:0x100
TEST_AMO_OP(amoxor.w, x12, x10, x11, 0x1, 0x100, x1, 2352)
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


signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 38*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 512*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 512*(XLEN/32),4,0xdeadbeef


signature_x1_2:
    .fill 296*(XLEN/32),4,0xdeadbeef

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
