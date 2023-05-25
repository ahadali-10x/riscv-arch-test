
// This assembly file tests the amoxor.w instruction of the RISC-V A extension for the amoxor covergroup.

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IA")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*A.*);def TEST_CASE_1=True;",amoxor)

RVTEST_SIGBASE( x3,signature_x3_1)

inst_0:
// rs2 == rd != rs1, rs1==x4, rs2==x24, rd==x24, rs1_val > 0 and rs2_val > 0, rs2_val == 1, rs1_val == (2**(xlen-1)-1), rs1_val != rs2_val, rs1_val == 2147483647
// opcode: amoxor.w ; op1:x4; op2:x24; dest:x24; op1val:0x7fffffff;  op2val:0x1
TEST_AMO_OP(amoxor.w, x24, x4, x24, rvtest_data, 0x7fffffff, 0x1, x3, 0)

inst_1:
// rs1 != rs2 != rd, rs1==x10, rs2==x10, rd==x28, rs1_val > 0 and rs2_val < 0, rs2_val == -257, rs1_val == 131072
// opcode: amoxor.w ; op1:x10; op2:x10; dest:x28; op1val:0x20000;  op2val:0x20000
TEST_AMO_OP(amoxor.w, x28, x11, x10, rvtest_data, 0x20000, 0x20000, x3, 4)

inst_2:
// rs1 == rd != rs2, rs1==x21, rs2==x21, rd==x21, rs1_val < 0 and rs2_val < 0, rs1_val == -16777217
// opcode: amoxor.w ; op1:x21; op2:x21; dest:x21; op1val:-0x1000001;  op2val:-0x1000001
TEST_AMO_OP(amoxor.w, x21, x21, x30, rvtest_data, -0x1000001, -0x1000001, x3, 8)

inst_3:
// rs1 == rd != rs2, rs1==x22, rs2==x31, rd==x22, rs1_val < 0 and rs2_val > 0, rs1_val == -2, rs2_val == 262144
// opcode: amoxor.w ; op1:x22; op2:x31; dest:x22; op1val:-0x2;  op2val:0x40000
TEST_AMO_OP(amoxor.w, x22, x22, x31, rvtest_data, -0x2, 0x40000, x3, 12)

inst_4:
// rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x12, rs2==x6, rd==x11, rs1_val == rs2_val, rs1_val==1431655766 and rs2_val==1431655766
// opcode: amoxor.w ; op1:x12; op2:x6; dest:x11; op1val:0x55555556;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x11, x12, x6, rvtest_data, 0x55555556, 0x55555556, x3, 16)

inst_5:
// rs1==x29, rs2==x13, rd==x10, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 2
// opcode: amoxor.w ; op1:x29; op2:x13; dest:x10; op1val:0x2;  op2val:-0x80000000
TEST_AMO_OP(amoxor.w, x10, x29, x13, rvtest_data, 0x2, -0x80000000, x3, 20)

inst_6:
// rs1==x31, rs2==x5, rd==x26, rs2_val == 0, rs1_val == -17
// opcode: amoxor.w ; op1:x31; op2:x5; dest:x26; op1val:-0x11;  op2val:0x0
TEST_AMO_OP(amoxor.w, x26, x31, x5, rvtest_data, -0x11, 0x0, x3, 24)

inst_7:
// rs1==x2, rs2==x1, rd==x7, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
// opcode: amoxor.w ; op1:x2; op2:x1; dest:x7; op1val:0x66666666;  op2val:0x7fffffff
TEST_AMO_OP(amoxor.w, x7, x2, x1, rvtest_data, 0x66666666, 0x7fffffff, x3, 28)

inst_8:
// rs1==x8, rs2==x25, rd==x14, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, rs2_val == -1431655766
// opcode: amoxor.w ; op1:x8; op2:x25; dest:x14; op1val:-0x80000000;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x14, x8, x25, rvtest_data, -0x80000000, -0x55555556, x3, 32)

inst_9:
// rs1==x13, rs2==x8, rd==x1, rs1_val == 0, rs2_val == -33554433
// opcode: amoxor.w ; op1:x13; op2:x8; dest:x1; op1val:0x0;  op2val:-0x2000001
TEST_AMO_OP(amoxor.w, x1, x13, x8, rvtest_data, 0x0, -0x2000001, x3, 36)

inst_10:
// rs1==x28, rs2==x9, rd==x0, rs1_val == 1, rs2_val == 8388608
// opcode: amoxor.w ; op1:x28; op2:x9; dest:x0; op1val:0x1;  op2val:0x800000
TEST_AMO_OP(amoxor.w, x0, x28, x9, rvtest_data, 0x1, 0x800000, x3, 40)

inst_11:
// rs1==x14, rs2==x4, rd==x20, rs2_val == 2, 
// opcode: amoxor.w ; op1:x14; op2:x4; dest:x20; op1val:0x7;  op2val:0x2
TEST_AMO_OP(amoxor.w, x20, x14, x4, rvtest_data, 0x7, 0x2, x3, 44)

inst_12:
// rs1==x7, rs2==x19, rd==x16, rs2_val == 4, rs1_val == 8
// opcode: amoxor.w ; op1:x7; op2:x19; dest:x16; op1val:0x8;  op2val:0x4
TEST_AMO_OP(amoxor.w, x16, x7, x19, rvtest_data, 0x8, 0x4, x3, 48)

inst_13:
// rs1==x23, rs2==x29, rd==x8, rs2_val == 8, rs1_val == 2048
// opcode: amoxor.w ; op1:x23; op2:x29; dest:x8; op1val:0x800;  op2val:0x8
TEST_AMO_OP(amoxor.w, x8, x23, x29, rvtest_data, 0x800, 0x8, x3, 52)

inst_14:
// rs1==x5, rs2==x27, rd==x13, rs2_val == 16, 
// opcode: amoxor.w ; op1:x5; op2:x27; dest:x13; op1val:0x0;  op2val:0x10
TEST_AMO_OP(amoxor.w, x13, x5, x27, rvtest_data, 0x0, 0x10, x3, 56)

inst_15:
// rs1==x25, rs2==x20, rd==x27, rs2_val == 32, 
// opcode: amoxor.w ; op1:x25; op2:x20; dest:x27; op1val:0x55555556;  op2val:0x20
TEST_AMO_OP(amoxor.w, x27, x25, x20, rvtest_data, 0x55555556, 0x20, x3, 60)

inst_16:
// rs1==x15, rs2==x26, rd==x17, rs2_val == 64, 
// opcode: amoxor.w ; op1:x15; op2:x26; dest:x17; op1val:-0x11;  op2val:0x40
TEST_AMO_OP(amoxor.w, x17, x15, x26, rvtest_data, -0x11, 0x40, x3, 64)
RVTEST_SIGBASE( x8,signature_x8_0)

inst_17:
// rs1==x17, rs2==x2, rd==x29, rs2_val == 128, rs1_val == -5
// opcode: amoxor.w ; op1:x17; op2:x2; dest:x29; op1val:-0x5;  op2val:0x80
TEST_AMO_OP(amoxor.w, x29, x17, x2, rvtest_data, -0x5, 0x80, x8, 0)

inst_18:
// rs1==x24, rs2==x17, rd==x4, rs2_val == 256, rs1_val == 32
// opcode: amoxor.w ; op1:x24; op2:x17; dest:x4; op1val:0x20;  op2val:0x100
TEST_AMO_OP(amoxor.w, x4, x24, x17, rvtest_data, 0x20, 0x100, x8, 4)

inst_19:
// rs1==x16, rs2==x11, rd==x2, rs2_val == 512, rs1_val == 1073741824
// opcode: amoxor.w ; op1:x16; op2:x11; dest:x2; op1val:0x40000000;  op2val:0x200
TEST_AMO_OP(amoxor.w, x2, x16, x11, rvtest_data, 0x40000000, 0x200, x8, 8)

inst_20:
// rs1==x0, rs2==x16, rd==x6, rs2_val == 1024, 
// opcode: amoxor.w ; op1:x0; op2:x16; dest:x6; op1val:0x0;  op2val:0x400
TEST_AMO_OP(amoxor.w, x6, x0, x16, rvtest_data, 0x0, 0x400, x8, 12)

inst_21:
// rs1==x11, rs2==x3, rd==x31, rs2_val == 2048, 
// opcode: amoxor.w ; op1:x11; op2:x3; dest:x31; op1val:-0x55555555;  op2val:0x800
TEST_AMO_OP(amoxor.w, x31, x11, x3, rvtest_data, -0x55555555, 0x800, x8, 16)

inst_22:
// rs1==x18, rs2==x0, rd==x12, rs2_val == 4096, rs1_val == 4
// opcode: amoxor.w ; op1:x18; op2:x0; dest:x12; op1val:0x4;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x18, x1, rvtest_data, 0x4, 0x0, x8, 20)

inst_23:
// rs1==x30, rs2==x7, rd==x9, rs2_val == 8192, rs1_val == -33554433
// opcode: amoxor.w ; op1:x30; op2:x7; dest:x9; op1val:-0x2000001;  op2val:0x2000
TEST_AMO_OP(amoxor.w, x9, x30, x7, rvtest_data, -0x2000001, 0x2000, x8, 24)

inst_24:
// rs1==x3, rs2==x30, rd==x5, rs2_val == 16384, 
// opcode: amoxor.w ; op1:x3; op2:x30; dest:x5; op1val:0xb503;  op2val:0x4000
TEST_AMO_OP(amoxor.w, x5, x3, x30, rvtest_data, 0xb503, 0x4000, x8, 28)

inst_25:
// rs1==x27, rs2==x28, rd==x18, rs2_val == 32768, 
// opcode: amoxor.w ; op1:x27; op2:x28; dest:x18; op1val:-0xb503;  op2val:0x8000
TEST_AMO_OP(amoxor.w, x18, x27, x28, rvtest_data, -0xb503, 0x8000, x8, 32)

inst_26:
// rs1==x9, rs2==x14, rd==x15, rs2_val == 65536, rs1_val == -513
// opcode: amoxor.w ; op1:x9; op2:x14; dest:x15; op1val:-0x201;  op2val:0x10000
TEST_AMO_OP(amoxor.w, x15, x9, x14, rvtest_data, -0x201, 0x10000, x8, 36)

inst_27:
// rs1==x26, rs2==x15, rd==x3, rs2_val == 131072, rs1_val == 64
// opcode: amoxor.w ; op1:x26; op2:x15; dest:x3; op1val:0x40;  op2val:0x20000
TEST_AMO_OP(amoxor.w, x3, x26, x15, rvtest_data, 0x40, 0x20000, x8, 40)

inst_28:
// rs1==x1, rs2==x18, rd==x23, rs2_val == 524288, 
// opcode: amoxor.w ; op1:x1; op2:x18; dest:x23; op1val:0x3;  op2val:0x80000
TEST_AMO_OP(amoxor.w, x23, x1, x18, rvtest_data, 0x3, 0x80000, x8, 44)

inst_29:
// rs1==x6, rs2==x12, rd==x30, rs2_val == 1048576, rs1_val == -65537
// opcode: amoxor.w ; op1:x6; op2:x12; dest:x30; op1val:-0x10001;  op2val:0x100000
TEST_AMO_OP(amoxor.w, x30, x6, x12, rvtest_data, -0x10001, 0x100000, x8, 48)

inst_30:
// rs1==x20, rs2==x22, rd==x19, rs2_val == 2097152, rs1_val == -4194305
// opcode: amoxor.w ; op1:x20; op2:x22; dest:x19; op1val:-0x400001;  op2val:0x200000
TEST_AMO_OP(amoxor.w, x19, x20, x22, rvtest_data, -0x400001, 0x200000, x8, 52)

inst_31:
// rs1==x19, rs2==x23, rd==x25, rs2_val == 4194304, rs1_val == 4194304
// opcode: amoxor.w ; op1:x19; op2:x23; dest:x25; op1val:0x400000;  op2val:0x400000
TEST_AMO_OP(amoxor.w, x25, x19, x23, rvtest_data, 0x400000, 0x400000, x8, 56)

inst_32:
// rs2_val == 16777216, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x1000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x1000000, x8, 60)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_33:
// rs2_val == 33554432, rs1_val == -131073
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20001;  op2val:0x2000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x20001, 0x2000000, x1, 0)

inst_34:
// rs2_val == 67108864, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x4000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x4000000, x1, 4)

inst_35:
// rs2_val == 134217728, rs1_val == -32769
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8001;  op2val:0x8000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x8001, 0x8000000, x1, 8)

inst_36:
// rs2_val == 268435456, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x10000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x40000000, 0x10000000, x1, 12)

inst_37:
// rs2_val == 536870912, rs1_val == -16385
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4001;  op2val:0x20000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x4001, 0x20000000, x1, 16)

inst_38:
// rs2_val == 1073741824, rs1_val == 65536
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000;  op2val:0x40000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x10000, 0x40000000, x1, 20)

inst_39:
// rs2_val == -2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0x2, x1, 24)

inst_40:
// rs2_val == -3, rs1_val == -33
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:-0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x21, -0x3, x1, 28)

inst_41:
// rs2_val == -5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:-0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x21, -0x5, x1, 32)

inst_42:
// rs2_val == -9, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20001;  op2val:-0x9
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x20001, -0x9, x1, 36)

inst_43:
// rs2_val == -17, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800;  op2val:-0x11
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x800, -0x11, x1, 40)

inst_44:
// rs2_val == -33, rs1_val == 536870912
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:-0x21
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x20000000, -0x21, x1, 44)

inst_45:
// rs2_val == -65, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:-0x41
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x7fffffff, -0x41, x1, 48)

inst_46:
// rs2_val == -129, rs1_val == -8388609
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x800001;  op2val:-0x81
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x800001, -0x81, x1, 52)

inst_47:
// rs2_val == -513, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:-0x201
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, -0x201, x1, 56)

inst_48:
// rs2_val == -1025, rs1_val == -4097
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1001;  op2val:-0x401
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x1001, -0x401, x1, 60)

inst_49:
// rs2_val == -2049, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x801
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0x801, x1, 64)

inst_50:
// rs2_val == -4097, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:-0x1001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, -0x1001, x1, 68)

inst_51:
// rs2_val == -8193, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:-0x2001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, -0x2001, x1, 72)

inst_52:
// rs2_val == -16385, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:-0x4001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x7fffffff, -0x4001, x1, 76)

inst_53:
// rs2_val == -32769, rs1_val == -3
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x3;  op2val:-0x8001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x3, -0x8001, x1, 80)

inst_54:
// rs2_val == -65537, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:-0x10001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, -0x10001, x1, 84)

inst_55:
// rs2_val == -131073, rs1_val == -1431655766
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:-0x20001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, -0x20001, x1, 88)

inst_56:
// rs2_val == -262145, rs1_val == 16777216
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000000;  op2val:-0x40001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x1000000, -0x40001, x1, 92)

inst_57:
// rs2_val == -524289, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:-0x80001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x7fffffff, -0x80001, x1, 96)

inst_58:
// rs2_val == -1048577, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800;  op2val:-0x100001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x800, -0x100001, x1, 100)

inst_59:
// rs2_val == -2097153, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8;  op2val:-0x200001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x8, -0x200001, x1, 104)

inst_60:
// rs2_val == -4194305, rs1_val == 8192
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000;  op2val:-0x400001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2000, -0x400001, x1, 108)

inst_61:
// rs2_val == -8388609, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x21;  op2val:-0x800001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x21, -0x800001, x1, 112)

inst_62:
// rs2_val == -16777217, rs1_val == -2097153
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x200001;  op2val:-0x1000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x200001, -0x1000001, x1, 116)

inst_63:
// rs2_val == -67108865, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0x4000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, -0x4000001, x1, 120)

inst_64:
// rs2_val == -134217729, rs1_val == 1431655765
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:-0x8000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, -0x8000001, x1, 124)

inst_65:
// rs2_val == -268435457, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000;  op2val:-0x10000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x20000, -0x10000001, x1, 128)

inst_66:
// rs2_val == -536870913, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000;  op2val:-0x20000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x20000, -0x20000001, x1, 132)

inst_67:
// rs2_val == -1073741825, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x7;  op2val:-0x40000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x7, -0x40000001, x1, 136)

inst_68:
// rs2_val == 1431655765, rs1_val == 1048576
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100000;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x100000, 0x55555555, x1, 140)

inst_69:
// rs1_val == 16, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x10, 0x33333333, x1, 144)

inst_70:
// rs1_val == 128, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x80, 0x33333332, x1, 148)

inst_71:
// rs1_val == 256, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x100;  op2val:-0xa
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x100, -0xa, x1, 152)

inst_72:
// rs1_val == 512, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x200, -0xb503, x1, 156)

inst_73:
// rs1_val == 1024, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x400;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x400, 0x55555555, x1, 160)

inst_74:
// rs1_val == 4096, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1000;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x1000, 0x5, x1, 164)

inst_75:
// rs1_val == 16384, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000;  op2val:-0x801
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4000, -0x801, x1, 168)

inst_76:
// rs1_val == 32768, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8000;  op2val:-0x1000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x8000, -0x1000001, x1, 172)

inst_77:
// rs1_val == 262144, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x40000;  op2val:0x1000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x40000, 0x1000000, x1, 176)

inst_78:
// rs1_val == 524288, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x80000;  op2val:0x8000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x80000, 0x8000, x1, 180)

inst_79:
// rs1_val == 2097152, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x200000;  op2val:0x10000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x200000, 0x10000000, x1, 184)

inst_80:
// rs1_val == 8388608, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x800000;  op2val:-0x401
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x800000, -0x401, x1, 188)

inst_81:
// rs1_val == 33554432, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2000000;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2000000, 0x55555555, x1, 192)

inst_82:
// rs1_val == 67108864, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4000000;  op2val:0x8000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4000000, 0x8000, x1, 196)

inst_83:
// rs1_val == 134217728, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x8000000;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x8000000, 0x33333332, x1, 200)

inst_84:
// rs1_val == 268435456, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:-0x40000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x10000000, -0x40000000, x1, 204)

inst_85:
// rs1_val == -9, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x9;  op2val:-0x80001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x9, -0x80001, x1, 208)

inst_86:
// rs1_val == -65, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x41;  op2val:-0x80000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x41, -0x80000000, x1, 212)

inst_87:
// rs1_val == -129, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x81;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x81, -0x55555556, x1, 216)

inst_88:
// rs1_val == -257, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x101;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x101, 0x3, x1, 220)

inst_89:
// rs1_val == -1025, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x401;  op2val:-0x8
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x401, -0x8, x1, 224)

inst_90:
// rs1_val == -2049, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x801;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x801, 0x3, x1, 228)

inst_91:
// rs1_val == -8193, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x2001;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x2001, 0x2, x1, 232)

inst_92:
// rs1_val == -262145, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40001;  op2val:-0x800001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x40001, -0x800001, x1, 236)

inst_93:
// rs1_val == -524289, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x80001;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x80001, 0xb504, x1, 240)

inst_94:
// rs1_val == -1048577, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x100001;  op2val:-0x40000000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x100001, -0x40000000, x1, 244)

inst_95:
// rs1_val == -67108865, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x4000001;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x4000001, 0x66666665, x1, 248)

inst_96:
// rs1_val == -134217729, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x8000001;  op2val:-0x10000001
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x8000001, -0x10000001, x1, 252)

inst_97:
// rs1_val == -268435457, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x10000001;  op2val:0x800
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x10000001, 0x800, x1, 256)

inst_98:
// rs1_val == -536870913, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x20000001;  op2val:0x20000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x20000001, 0x20000, x1, 260)

inst_99:
// rs1_val == -1073741825, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x40000001;  op2val:-0x81
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x40000001, -0x81, x1, 264)

inst_100:
// rs1_val==3 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x3, x1, 268)

inst_101:
// rs1_val==3 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x55555555, x1, 272)

inst_102:
// rs1_val==3 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, -0x55555556, x1, 276)

inst_103:
// rs1_val==3 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x5, x1, 280)

inst_104:
// rs1_val==3 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x33333333, x1, 284)

inst_105:
// rs1_val==3 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x66666666, x1, 288)

inst_106:
// rs1_val==3 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, -0xb504, x1, 292)

inst_107:
// rs1_val==3 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0xb504, x1, 296)

inst_108:
// rs1_val==3 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x2, x1, 300)

inst_109:
// rs1_val==3 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x55555554, x1, 304)

inst_110:
// rs1_val==3 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x0, x1, 308)

inst_111:
// rs1_val==3 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x4, x1, 312)

inst_112:
// rs1_val==3 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x33333332, x1, 316)

inst_113:
// rs1_val==3 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x66666665, x1, 320)

inst_114:
// rs1_val==3 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0xb503, x1, 324)

inst_115:
// rs1_val==3 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x55555556, x1, 328)

inst_116:
// rs1_val==3 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, -0x55555555, x1, 332)

inst_117:
// rs1_val==3 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x6, x1, 336)

inst_118:
// rs1_val==3 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x33333334, x1, 340)

inst_119:
// rs1_val==3 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0x66666667, x1, 344)

inst_120:
// rs1_val==3 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, -0xb503, x1, 348)

inst_121:
// rs1_val==3 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x3;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x3, 0xb505, x1, 352)

inst_122:
// rs1_val==1431655765 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x3, x1, 356)

inst_123:
// rs1_val==1431655765 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x55555555, x1, 360)

inst_124:
// rs1_val==1431655765 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, -0x55555556, x1, 364)

inst_125:
// rs1_val==1431655765 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x5, x1, 368)

inst_126:
// rs1_val==1431655765 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x33333333, x1, 372)

inst_127:
// rs1_val==1431655765 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x66666666, x1, 376)

inst_128:
// rs1_val==1431655765 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, -0xb504, x1, 380)

inst_129:
// rs1_val==1431655765 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0xb504, x1, 384)

inst_130:
// rs1_val==1431655765 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x2, x1, 388)

inst_131:
// rs1_val==1431655765 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x55555554, x1, 392)

inst_132:
// rs1_val==1431655765 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x0, x1, 396)

inst_133:
// rs1_val==1431655765 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x4, x1, 400)

inst_134:
// rs1_val==1431655765 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x33333332, x1, 404)

inst_135:
// rs1_val==1431655765 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x66666665, x1, 408)

inst_136:
// rs1_val==1431655765 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0xb503, x1, 412)

inst_137:
// rs1_val==1431655765 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x55555556, x1, 416)

inst_138:
// rs1_val==1431655765 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, -0x55555555, x1, 420)

inst_139:
// rs1_val==1431655765 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x6, x1, 424)

inst_140:
// rs1_val==1431655765 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x33333334, x1, 428)

inst_141:
// rs1_val==1431655765 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0x66666667, x1, 432)

inst_142:
// rs1_val==1431655765 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, -0xb503, x1, 436)

inst_143:
// rs1_val==1431655765 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555555, 0xb505, x1, 440)

inst_144:
// rs1_val==-1431655766 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x3, x1, 444)

inst_145:
// rs1_val==-1431655766 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x55555555, x1, 448)

inst_146:
// rs1_val==-1431655766 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, -0x55555556, x1, 452)

inst_147:
// rs1_val==-1431655766 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x5, x1, 456)

inst_148:
// rs1_val==-1431655766 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x33333333, x1, 460)

inst_149:
// rs1_val==-1431655766 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x66666666, x1, 464)

inst_150:
// rs1_val==-1431655766 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, -0xb504, x1, 468)

inst_151:
// rs1_val==-1431655766 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0xb504, x1, 472)

inst_152:
// rs1_val==-1431655766 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x2, x1, 476)

inst_153:
// rs1_val==-1431655766 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x55555554, x1, 480)

inst_154:
// rs1_val==-1431655766 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x0, x1, 484)

inst_155:
// rs1_val==-1431655766 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x4, x1, 488)

inst_156:
// rs1_val==-1431655766 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x33333332, x1, 492)

inst_157:
// rs1_val==-1431655766 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x66666665, x1, 496)

inst_158:
// rs1_val==-1431655766 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0xb503, x1, 500)

inst_159:
// rs1_val==-1431655766 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x55555556, x1, 504)

inst_160:
// rs1_val==-1431655766 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, -0x55555555, x1, 508)

inst_161:
// rs1_val==-1431655766 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x6, x1, 512)

inst_162:
// rs1_val==-1431655766 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x33333334, x1, 516)

inst_163:
// rs1_val==-1431655766 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0x66666667, x1, 520)

inst_164:
// rs1_val==-1431655766 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, -0xb503, x1, 524)

inst_165:
// rs1_val==-1431655766 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555556;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555556, 0xb505, x1, 528)

inst_166:
// rs1_val==5 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x3, x1, 532)

inst_167:
// rs1_val==5 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x55555555, x1, 536)

inst_168:
// rs1_val==5 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, -0x55555556, x1, 540)

inst_169:
// rs1_val==5 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x5, x1, 544)

inst_170:
// rs1_val==5 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x33333333, x1, 548)

inst_171:
// rs1_val==5 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x66666666, x1, 552)

inst_172:
// rs1_val==5 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, -0xb504, x1, 556)

inst_173:
// rs1_val==5 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0xb504, x1, 560)

inst_174:
// rs1_val==5 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x2, x1, 564)

inst_175:
// rs1_val==5 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x55555554, x1, 568)

inst_176:
// rs1_val==5 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x0, x1, 572)

inst_177:
// rs1_val==5 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x4, x1, 576)

inst_178:
// rs1_val==5 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x33333332, x1, 580)

inst_179:
// rs1_val==5 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x66666665, x1, 584)

inst_180:
// rs1_val==5 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0xb503, x1, 588)

inst_181:
// rs1_val==5 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x55555556, x1, 592)

inst_182:
// rs1_val==5 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, -0x55555555, x1, 596)

inst_183:
// rs1_val==5 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x6, x1, 600)

inst_184:
// rs1_val==5 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x33333334, x1, 604)

inst_185:
// rs1_val==5 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0x66666667, x1, 608)

inst_186:
// rs1_val==5 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, -0xb503, x1, 612)

inst_187:
// rs1_val==5 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x5;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x5, 0xb505, x1, 616)

inst_188:
// rs1_val==858993459 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x3, x1, 620)

inst_189:
// rs1_val==858993459 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x55555555, x1, 624)

inst_190:
// rs1_val==858993459 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, -0x55555556, x1, 628)

inst_191:
// rs1_val==858993459 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x5, x1, 632)

inst_192:
// rs1_val==858993459 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x33333333, x1, 636)

inst_193:
// rs1_val==858993459 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x66666666, x1, 640)

inst_194:
// rs1_val==858993459 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, -0xb504, x1, 644)

inst_195:
// rs1_val==858993459 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0xb504, x1, 648)

inst_196:
// rs1_val==858993459 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x2, x1, 652)

inst_197:
// rs1_val==858993459 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x55555554, x1, 656)

inst_198:
// rs1_val==858993459 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x0, x1, 660)

inst_199:
// rs1_val==858993459 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x4, x1, 664)

inst_200:
// rs1_val==858993459 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x33333332, x1, 668)

inst_201:
// rs1_val==858993459 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x66666665, x1, 672)

inst_202:
// rs1_val==858993459 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0xb503, x1, 676)

inst_203:
// rs1_val==858993459 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x55555556, x1, 680)

inst_204:
// rs1_val==858993459 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, -0x55555555, x1, 684)

inst_205:
// rs1_val==858993459 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x6, x1, 688)

inst_206:
// rs1_val==858993459 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x33333334, x1, 692)

inst_207:
// rs1_val==858993459 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0x66666667, x1, 696)

inst_208:
// rs1_val==858993459 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, -0xb503, x1, 700)

inst_209:
// rs1_val==858993459 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333333;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333333, 0xb505, x1, 704)

inst_210:
// rs1_val==1717986918 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x3, x1, 708)

inst_211:
// rs1_val==1717986918 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x55555555, x1, 712)

inst_212:
// rs1_val==1717986918 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, -0x55555556, x1, 716)

inst_213:
// rs1_val==1717986918 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x5, x1, 720)

inst_214:
// rs1_val==1717986918 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x33333333, x1, 724)

inst_215:
// rs1_val==1717986918 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x66666666, x1, 728)

inst_216:
// rs1_val==1717986918 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, -0xb504, x1, 732)

inst_217:
// rs1_val==1717986918 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0xb504, x1, 736)

inst_218:
// rs1_val==1717986918 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x2, x1, 740)

inst_219:
// rs1_val==1717986918 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x55555554, x1, 744)

inst_220:
// rs1_val==1717986918 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x0, x1, 748)

inst_221:
// rs1_val==1717986918 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x4, x1, 752)

inst_222:
// rs1_val==1717986918 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x33333332, x1, 756)

inst_223:
// rs1_val==1717986918 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x66666665, x1, 760)

inst_224:
// rs1_val==1717986918 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0xb503, x1, 764)

inst_225:
// rs1_val==1717986918 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x55555556, x1, 768)

inst_226:
// rs1_val==1717986918 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, -0x55555555, x1, 772)

inst_227:
// rs1_val==1717986918 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x6, x1, 776)

inst_228:
// rs1_val==1717986918 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x33333334, x1, 780)

inst_229:
// rs1_val==1717986918 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0x66666667, x1, 784)

inst_230:
// rs1_val==1717986918 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, -0xb503, x1, 788)

inst_231:
// rs1_val==1717986918 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666666;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666666, 0xb505, x1, 792)

inst_232:
// rs1_val==-46340 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x3, x1, 796)

inst_233:
// rs1_val==-46340 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x55555555, x1, 800)

inst_234:
// rs1_val==-46340 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, -0x55555556, x1, 804)

inst_235:
// rs1_val==-46340 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x5, x1, 808)

inst_236:
// rs1_val==-46340 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x33333333, x1, 812)

inst_237:
// rs1_val==-46340 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x66666666, x1, 816)

inst_238:
// rs1_val==-46340 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, -0xb504, x1, 820)

inst_239:
// rs1_val==-46340 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0xb504, x1, 824)

inst_240:
// rs1_val==-46340 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x2, x1, 828)

inst_241:
// rs1_val==-46340 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x55555554, x1, 832)

inst_242:
// rs1_val==-46340 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x0, x1, 836)

inst_243:
// rs1_val==-46340 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x4, x1, 840)

inst_244:
// rs1_val==-46340 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x33333332, x1, 844)

inst_245:
// rs1_val==-46340 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x66666665, x1, 848)

inst_246:
// rs1_val==-46340 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0xb503, x1, 852)

inst_247:
// rs1_val==-46340 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x55555556, x1, 856)

inst_248:
// rs1_val==-46340 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, -0x55555555, x1, 860)

inst_249:
// rs1_val==-46340 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x6, x1, 864)

inst_250:
// rs1_val==-46340 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x33333334, x1, 868)

inst_251:
// rs1_val==-46340 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x66666667, x1, 872)

inst_252:
// rs1_val==-46340 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, -0xb503, x1, 876)

inst_253:
// rs1_val==-46340 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0xb505, x1, 880)

inst_254:
// rs1_val==46340 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x3, x1, 884)

inst_255:
// rs1_val==46340 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x55555555, x1, 888)

inst_256:
// rs1_val==46340 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, -0x55555556, x1, 892)

inst_257:
// rs1_val==46340 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x5, x1, 896)

inst_258:
// rs1_val==46340 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x33333333, x1, 900)

inst_259:
// rs1_val==46340 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x66666666, x1, 904)

inst_260:
// rs1_val==46340 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, -0xb504, x1, 908)

inst_261:
// rs1_val==46340 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0xb504, x1, 912)

inst_262:
// rs1_val==46340 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x2, x1, 916)

inst_263:
// rs1_val==46340 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x55555554, x1, 920)

inst_264:
// rs1_val==46340 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x0, x1, 924)

inst_265:
// rs1_val==46340 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x4, x1, 928)

inst_266:
// rs1_val==46340 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x33333332, x1, 932)

inst_267:
// rs1_val==46340 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x66666665, x1, 936)

inst_268:
// rs1_val==46340 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0xb503, x1, 940)

inst_269:
// rs1_val==46340 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x55555556, x1, 944)

inst_270:
// rs1_val==46340 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, -0x55555555, x1, 948)

inst_271:
// rs1_val==46340 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x6, x1, 952)

inst_272:
// rs1_val==46340 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x33333334, x1, 956)

inst_273:
// rs1_val==46340 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0x66666667, x1, 960)

inst_274:
// rs1_val==46340 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, -0xb503, x1, 964)

inst_275:
// rs1_val==46340 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb504;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb504, 0xb505, x1, 968)

inst_276:
// rs1_val==2 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x3, x1, 972)

inst_277:
// rs1_val==2 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x55555555, x1, 976)

inst_278:
// rs1_val==2 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, -0x55555556, x1, 980)

inst_279:
// rs1_val==2 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x5, x1, 984)

inst_280:
// rs1_val==2 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x33333333, x1, 988)

inst_281:
// rs1_val==2 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x66666666, x1, 992)

inst_282:
// rs1_val==2 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, -0xb504, x1, 996)

inst_283:
// rs1_val==2 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0xb504, x1, 1000)

inst_284:
// rs1_val==2 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x2, x1, 1004)

inst_285:
// rs1_val==2 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x55555554, x1, 1008)

inst_286:
// rs1_val==2 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x0, x1, 1012)

inst_287:
// rs1_val==2 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x4, x1, 1016)

inst_288:
// rs1_val==2 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x33333332, x1, 1020)

inst_289:
// rs1_val==2 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x66666665, x1, 1024)

inst_290:
// rs1_val==2 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0xb503, x1, 1028)

inst_291:
// rs1_val==2 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x55555556, x1, 1032)

inst_292:
// rs1_val==2 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, -0x55555555, x1, 1036)

inst_293:
// rs1_val==2 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x6, x1, 1040)

inst_294:
// rs1_val==2 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x33333334, x1, 1044)

inst_295:
// rs1_val==2 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0x66666667, x1, 1048)

inst_296:
// rs1_val==2 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, -0xb503, x1, 1052)

inst_297:
// rs1_val==2 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x2;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x2, 0xb505, x1, 1056)

inst_298:
// rs1_val==1431655764 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x3, x1, 1060)

inst_299:
// rs1_val==1431655764 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x55555555, x1, 1064)

inst_300:
// rs1_val==1431655764 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, -0x55555556, x1, 1068)

inst_301:
// rs1_val==1431655764 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x5, x1, 1072)

inst_302:
// rs1_val==1431655764 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x33333333, x1, 1076)

inst_303:
// rs1_val==1431655764 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x66666666, x1, 1080)

inst_304:
// rs1_val==1431655764 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, -0xb504, x1, 1084)

inst_305:
// rs1_val==1431655764 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0xb504, x1, 1088)

inst_306:
// rs1_val==1431655764 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x2, x1, 1092)

inst_307:
// rs1_val==1431655764 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x55555554, x1, 1096)

inst_308:
// rs1_val==1431655764 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x0, x1, 1100)

inst_309:
// rs1_val==1431655764 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x4, x1, 1104)

inst_310:
// rs1_val==1431655764 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x33333332, x1, 1108)

inst_311:
// rs1_val==1431655764 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x66666665, x1, 1112)

inst_312:
// rs1_val==1431655764 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0xb503, x1, 1116)

inst_313:
// rs1_val==1431655764 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x55555556, x1, 1120)

inst_314:
// rs1_val==1431655764 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, -0x55555555, x1, 1124)

inst_315:
// rs1_val==1431655764 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x6, x1, 1128)

inst_316:
// rs1_val==1431655764 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x33333334, x1, 1132)

inst_317:
// rs1_val==1431655764 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0x66666667, x1, 1136)

inst_318:
// rs1_val==1431655764 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, -0xb503, x1, 1140)

inst_319:
// rs1_val==1431655764 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555554;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555554, 0xb505, x1, 1144)

inst_320:
// rs1_val==0 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x3, x1, 1148)

inst_321:
// rs1_val==0 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x55555555, x1, 1152)

inst_322:
// rs1_val==0 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, -0x55555556, x1, 1156)

inst_323:
// rs1_val==0 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x5, x1, 1160)

inst_324:
// rs1_val==0 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x33333333, x1, 1164)

inst_325:
// rs1_val==0 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x66666666, x1, 1168)

inst_326:
// rs1_val==0 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, -0xb504, x1, 1172)

inst_327:
// rs1_val==0 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0xb504, x1, 1176)

inst_328:
// rs1_val==-1431655765 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, -0x55555555, x1, 1180)

inst_329:
// rs1_val==-1431655765 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x6, x1, 1184)

inst_330:
// rs1_val==-1431655765 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x33333334, x1, 1188)

inst_331:
// rs1_val==-1431655765 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x66666667, x1, 1192)

inst_332:
// rs1_val==-1431655765 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, -0xb503, x1, 1196)

inst_333:
// rs1_val==-1431655765 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0xb505, x1, 1200)

inst_334:
// rs1_val==6 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x3, x1, 1204)

inst_335:
// rs1_val==6 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x55555555, x1, 1208)

inst_336:
// rs1_val==6 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, -0x55555556, x1, 1212)

inst_337:
// rs1_val==6 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x5, x1, 1216)

inst_338:
// rs1_val==6 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x33333333, x1, 1220)

inst_339:
// rs1_val==6 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x66666666, x1, 1224)

inst_340:
// rs1_val==6 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, -0xb504, x1, 1228)

inst_341:
// rs1_val==6 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0xb504, x1, 1232)

inst_342:
// rs1_val==6 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x2, x1, 1236)

inst_343:
// rs1_val==6 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x55555554, x1, 1240)

inst_344:
// rs1_val==6 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x0, x1, 1244)

inst_345:
// rs1_val==6 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x4, x1, 1248)

inst_346:
// rs1_val==6 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x33333332, x1, 1252)

inst_347:
// rs1_val==6 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x66666665, x1, 1256)

inst_348:
// rs1_val==6 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0xb503, x1, 1260)

inst_349:
// rs1_val==6 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x55555556, x1, 1264)

inst_350:
// rs1_val==6 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, -0x55555555, x1, 1268)

inst_351:
// rs1_val==6 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x6, x1, 1272)

inst_352:
// rs1_val==6 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x33333334, x1, 1276)

inst_353:
// rs1_val==6 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0x66666667, x1, 1280)

inst_354:
// rs1_val==6 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, -0xb503, x1, 1284)

inst_355:
// rs1_val==6 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x6;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x6, 0xb505, x1, 1288)

inst_356:
// rs1_val==858993460 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x3, x1, 1292)

inst_357:
// rs1_val==858993460 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x55555555, x1, 1296)

inst_358:
// rs1_val==858993460 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, -0x55555556, x1, 1300)

inst_359:
// rs1_val==858993460 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x5, x1, 1304)

inst_360:
// rs1_val==858993460 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x33333333, x1, 1308)

inst_361:
// rs1_val==858993460 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x66666666, x1, 1312)

inst_362:
// rs1_val==858993460 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, -0xb504, x1, 1316)

inst_363:
// rs1_val==858993460 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0xb504, x1, 1320)

inst_364:
// rs1_val==858993460 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x2, x1, 1324)

inst_365:
// rs1_val==858993460 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x55555554, x1, 1328)

inst_366:
// rs1_val==858993460 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x0, x1, 1332)

inst_367:
// rs1_val==858993460 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x4, x1, 1336)

inst_368:
// rs1_val==858993460 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x33333332, x1, 1340)

inst_369:
// rs1_val==858993460 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x66666665, x1, 1344)

inst_370:
// rs1_val==858993460 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0xb503, x1, 1348)

inst_371:
// rs1_val==858993460 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x55555556, x1, 1352)

inst_372:
// rs1_val==858993460 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, -0x55555555, x1, 1356)

inst_373:
// rs1_val==858993460 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x6, x1, 1360)

inst_374:
// rs1_val==858993460 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x33333334, x1, 1364)

inst_375:
// rs1_val==858993460 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0x66666667, x1, 1368)

inst_376:
// rs1_val==858993460 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, -0xb503, x1, 1372)

inst_377:
// rs1_val==858993460 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333334;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333334, 0xb505, x1, 1376)

inst_378:
// rs1_val==1717986919 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x3, x1, 1380)

inst_379:
// rs1_val==1717986919 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x55555555, x1, 1384)

inst_380:
// rs1_val==1717986919 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, -0x55555556, x1, 1388)

inst_381:
// rs1_val==1717986919 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x5, x1, 1392)

inst_382:
// rs1_val==1717986919 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x33333333, x1, 1396)

inst_383:
// rs1_val==1717986919 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x66666666, x1, 1400)

inst_384:
// rs1_val==1717986919 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, -0xb504, x1, 1404)

inst_385:
// rs1_val==1717986919 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0xb504, x1, 1408)

inst_386:
// rs1_val==1717986919 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x2, x1, 1412)

inst_387:
// rs1_val==1717986919 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x55555554, x1, 1416)

inst_388:
// rs1_val==1717986919 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x0, x1, 1420)

inst_389:
// rs1_val==1717986919 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x4, x1, 1424)

inst_390:
// rs1_val==1717986919 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x33333332, x1, 1428)

inst_391:
// rs1_val==1717986919 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x66666665, x1, 1432)

inst_392:
// rs1_val==1717986919 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0xb503, x1, 1436)

inst_393:
// rs1_val==1717986919 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x55555556, x1, 1440)

inst_394:
// rs1_val==1717986919 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, -0x55555555, x1, 1444)

inst_395:
// rs1_val==1717986919 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x6, x1, 1448)

inst_396:
// rs1_val==1717986919 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x33333334, x1, 1452)

inst_397:
// rs1_val==1717986919 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0x66666667, x1, 1456)

inst_398:
// rs1_val==1717986919 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, -0xb503, x1, 1460)

inst_399:
// rs1_val==1717986919 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666667;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666667, 0xb505, x1, 1464)

inst_400:
// rs1_val==-46339 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x3, x1, 1468)

inst_401:
// rs1_val==-46339 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x55555555, x1, 1472)

inst_402:
// rs1_val==-46339 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, -0x55555556, x1, 1476)

inst_403:
// rs1_val==-46339 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x5, x1, 1480)

inst_404:
// rs1_val==-46339 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x33333333, x1, 1484)

inst_405:
// rs1_val==-46339 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x66666666, x1, 1488)

inst_406:
// rs1_val==-46339 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, -0xb504, x1, 1492)

inst_407:
// rs1_val==-46339 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0xb504, x1, 1496)

inst_408:
// rs1_val==-46339 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x2, x1, 1500)

inst_409:
// rs1_val==-46339 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x55555554, x1, 1504)

inst_410:
// rs1_val==-46339 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x0, x1, 1508)

inst_411:
// rs1_val==-46339 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x4, x1, 1512)

inst_412:
// rs1_val==-46339 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x33333332, x1, 1516)

inst_413:
// rs1_val==-46339 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x66666665, x1, 1520)

inst_414:
// rs1_val==-46339 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0xb503, x1, 1524)

inst_415:
// rs1_val==-46339 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x55555556, x1, 1528)

inst_416:
// rs1_val==-46339 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, -0x55555555, x1, 1532)

inst_417:
// rs1_val==-46339 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x6, x1, 1536)

inst_418:
// rs1_val==-46339 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x33333334, x1, 1540)

inst_419:
// rs1_val==-46339 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0x66666667, x1, 1544)

inst_420:
// rs1_val==-46339 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, -0xb503, x1, 1548)

inst_421:
// rs1_val==-46339 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb503;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb503, 0xb505, x1, 1552)

inst_422:
// rs1_val==46341 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x3, x1, 1556)

inst_423:
// rs1_val==46341 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x55555555, x1, 1560)

inst_424:
// rs1_val==46341 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, -0x55555556, x1, 1564)

inst_425:
// rs1_val==46341 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x5, x1, 1568)

inst_426:
// rs1_val==46341 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x33333333, x1, 1572)

inst_427:
// rs1_val==46341 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x66666666, x1, 1576)

inst_428:
// rs1_val==46341 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, -0xb504, x1, 1580)

inst_429:
// rs1_val==46341 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0xb504, x1, 1584)

inst_430:
// rs1_val==46341 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x2, x1, 1588)

inst_431:
// rs1_val==46341 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x55555554, x1, 1592)

inst_432:
// rs1_val==46341 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x0, x1, 1596)

inst_433:
// rs1_val==46341 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x4, x1, 1600)

inst_434:
// rs1_val==46341 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x33333332, x1, 1604)

inst_435:
// rs1_val==46341 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x66666665, x1, 1608)

inst_436:
// rs1_val==46341 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0xb503, x1, 1612)

inst_437:
// rs1_val==46341 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x55555556, x1, 1616)

inst_438:
// rs1_val==46341 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, -0x55555555, x1, 1620)

inst_439:
// rs1_val==46341 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x6, x1, 1624)

inst_440:
// rs1_val==46341 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x33333334, x1, 1628)

inst_441:
// rs1_val==46341 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0x66666667, x1, 1632)

inst_442:
// rs1_val==46341 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, -0xb503, x1, 1636)

inst_443:
// rs1_val==46341 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb505;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb505, 0xb505, x1, 1640)

inst_444:
// rs1_val==0 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x2, x1, 1644)

inst_445:
// rs1_val==0 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x55555554, x1, 1648)

inst_446:
// rs1_val==0 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x0, x1, 1652)

inst_447:
// rs1_val==0 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x4, x1, 1656)

inst_448:
// rs1_val==0 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x33333332, x1, 1660)

inst_449:
// rs1_val==0 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x66666665, x1, 1664)

inst_450:
// rs1_val==0 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0xb503, x1, 1668)

inst_451:
// rs1_val==0 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x55555556, x1, 1672)

inst_452:
// rs1_val==0 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, -0x55555555, x1, 1676)

inst_453:
// rs1_val==0 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x6, x1, 1680)

inst_454:
// rs1_val==0 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x33333334, x1, 1684)

inst_455:
// rs1_val==0 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0x66666667, x1, 1688)

inst_456:
// rs1_val==0 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, -0xb503, x1, 1692)

inst_457:
// rs1_val==0 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x0;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x0, 0xb505, x1, 1696)

inst_458:
// rs1_val==4 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x3, x1, 1700)

inst_459:
// rs1_val==4 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x55555555, x1, 1704)

inst_460:
// rs1_val==4 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0x55555556, x1, 1708)

inst_461:
// rs1_val==4 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x5, x1, 1712)

inst_462:
// rs1_val==4 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x33333333, x1, 1716)

inst_463:
// rs1_val==4 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x66666666, x1, 1720)

inst_464:
// rs1_val==4 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0xb504, x1, 1724)

inst_465:
// rs1_val==4 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0xb504, x1, 1728)

inst_466:
// rs1_val==4 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x2, x1, 1732)

inst_467:
// rs1_val==4 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x55555554, x1, 1736)

inst_468:
// rs1_val==4 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x0, x1, 1740)

inst_469:
// rs1_val==4 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x4, x1, 1744)

inst_470:
// rs1_val==4 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x33333332, x1, 1748)

inst_471:
// rs1_val==4 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x66666665, x1, 1752)

inst_472:
// rs1_val==4 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0xb503, x1, 1756)

inst_473:
// rs1_val==4 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x55555556, x1, 1760)

inst_474:
// rs1_val==4 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0x55555555, x1, 1764)

inst_475:
// rs1_val==4 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x6, x1, 1768)

inst_476:
// rs1_val==4 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x33333334, x1, 1772)

inst_477:
// rs1_val==4 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x66666667, x1, 1776)

inst_478:
// rs1_val==4 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, -0xb503, x1, 1780)

inst_479:
// rs1_val==4 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0xb505, x1, 1784)

inst_480:
// rs1_val==858993458 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x3, x1, 1788)

inst_481:
// rs1_val==858993458 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x55555555, x1, 1792)

inst_482:
// rs1_val==858993458 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, -0x55555556, x1, 1796)

inst_483:
// rs1_val==858993458 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x5, x1, 1800)

inst_484:
// rs1_val==858993458 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x33333333, x1, 1804)

inst_485:
// rs1_val==858993458 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x66666666, x1, 1808)

inst_486:
// rs1_val==858993458 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, -0xb504, x1, 1812)

inst_487:
// rs1_val==858993458 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0xb504, x1, 1816)

inst_488:
// rs1_val==858993458 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x2, x1, 1820)

inst_489:
// rs1_val==858993458 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x55555554, x1, 1824)

inst_490:
// rs1_val==858993458 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x0, x1, 1828)

inst_491:
// rs1_val==858993458 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x4, x1, 1832)

inst_492:
// rs1_val==858993458 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x33333332, x1, 1836)

inst_493:
// rs1_val==858993458 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x66666665, x1, 1840)

inst_494:
// rs1_val==858993458 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0xb503, x1, 1844)

inst_495:
// rs1_val==858993458 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x55555556, x1, 1848)

inst_496:
// rs1_val==858993458 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, -0x55555555, x1, 1852)

inst_497:
// rs1_val==858993458 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x6, x1, 1856)

inst_498:
// rs1_val==858993458 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x33333334, x1, 1860)

inst_499:
// rs1_val==858993458 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0x66666667, x1, 1864)

inst_500:
// rs1_val==858993458 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, -0xb503, x1, 1868)

inst_501:
// rs1_val==858993458 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x33333332;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x33333332, 0xb505, x1, 1872)

inst_502:
// rs1_val==1717986917 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x3, x1, 1876)

inst_503:
// rs1_val==1717986917 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x55555555, x1, 1880)

inst_504:
// rs1_val==1717986917 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, -0x55555556, x1, 1884)

inst_505:
// rs1_val==1717986917 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x5, x1, 1888)

inst_506:
// rs1_val==1717986917 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x33333333, x1, 1892)

inst_507:
// rs1_val==1717986917 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x66666666, x1, 1896)

inst_508:
// rs1_val==1717986917 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, -0xb504, x1, 1900)

inst_509:
// rs1_val==1717986917 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0xb504, x1, 1904)

inst_510:
// rs1_val==1717986917 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x2, x1, 1908)

inst_511:
// rs1_val==1717986917 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x55555554, x1, 1912)

inst_512:
// rs1_val==1717986917 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x0, x1, 1916)

inst_513:
// rs1_val==1717986917 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x4, x1, 1920)

inst_514:
// rs1_val==1717986917 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x33333332, x1, 1924)

inst_515:
// rs1_val==1717986917 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x66666665, x1, 1928)

inst_516:
// rs1_val==1717986917 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0xb503, x1, 1932)

inst_517:
// rs1_val==1717986917 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x55555556, x1, 1936)

inst_518:
// rs1_val==1717986917 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, -0x55555555, x1, 1940)

inst_519:
// rs1_val==1717986917 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x6, x1, 1944)

inst_520:
// rs1_val==1717986917 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x33333334, x1, 1948)

inst_521:
// rs1_val==1717986917 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0x66666667, x1, 1952)

inst_522:
// rs1_val==1717986917 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, -0xb503, x1, 1956)

inst_523:
// rs1_val==1717986917 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x66666665;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x66666665, 0xb505, x1, 1960)

inst_524:
// rs1_val==46339 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x3, x1, 1964)

inst_525:
// rs1_val==46339 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x55555555, x1, 1968)

inst_526:
// rs1_val==46339 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, -0x55555556, x1, 1972)

inst_527:
// rs1_val==46339 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x5, x1, 1976)

inst_528:
// rs1_val==46339 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x33333333, x1, 1980)

inst_529:
// rs1_val==46339 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x66666666, x1, 1984)

inst_530:
// rs1_val==46339 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, -0xb504, x1, 1988)

inst_531:
// rs1_val==46339 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0xb504, x1, 1992)

inst_532:
// rs1_val==46339 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x2, x1, 1996)

inst_533:
// rs1_val==46339 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x55555554, x1, 2000)

inst_534:
// rs1_val==46339 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x0, x1, 2004)

inst_535:
// rs1_val==46339 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x4, x1, 2008)

inst_536:
// rs1_val==46339 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x33333332, x1, 2012)

inst_537:
// rs1_val==46339 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x66666665, x1, 2016)

inst_538:
// rs1_val==46339 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0xb503, x1, 2020)

inst_539:
// rs1_val==46339 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x55555556, x1, 2024)

inst_540:
// rs1_val==46339 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, -0x55555555, x1, 2028)

inst_541:
// rs1_val==46339 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x6, x1, 2032)

inst_542:
// rs1_val==46339 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x33333334, x1, 2036)

inst_543:
// rs1_val==46339 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0x66666667, x1, 2040)

inst_544:
// rs1_val==46339 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, -0xb503, x1, 2044)
RVTEST_SIGBASE( x1,signature_x1_1)

inst_545:
// rs1_val==46339 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0xb503;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0xb503, 0xb505, x1, 0)

inst_546:
// rs1_val==1431655766 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x3, x1, 4)

inst_547:
// rs1_val==1431655766 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x55555555, x1, 8)

inst_548:
// rs1_val==1431655766 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, -0x55555556, x1, 12)

inst_549:
// rs1_val==1431655766 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x5, x1, 16)

inst_550:
// rs1_val==1431655766 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x33333333, x1, 20)

inst_551:
// rs1_val==1431655766 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x66666666, x1, 24)

inst_552:
// rs1_val==1431655766 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, -0xb504, x1, 28)

inst_553:
// rs1_val==1431655766 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0xb504, x1, 32)

inst_554:
// rs1_val==1431655766 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x2, x1, 36)

inst_555:
// rs1_val==1431655766 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x55555554, x1, 40)

inst_556:
// rs1_val==1431655766 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x0, x1, 44)

inst_557:
// rs1_val==1431655766 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x4, x1, 48)

inst_558:
// rs1_val==1431655766 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x33333332, x1, 52)

inst_559:
// rs1_val==1431655766 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x66666665, x1, 56)

inst_560:
// rs1_val==1431655766 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0xb503, x1, 60)

inst_561:
// rs1_val==1431655766 and rs2_val==-1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:-0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, -0x55555555, x1, 64)

inst_562:
// rs1_val==1431655766 and rs2_val==6, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x6
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x6, x1, 68)

inst_563:
// rs1_val==1431655766 and rs2_val==858993460, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x33333334
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x33333334, x1, 72)

inst_564:
// rs1_val==1431655766 and rs2_val==1717986919, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0x66666667
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0x66666667, x1, 76)

inst_565:
// rs1_val==1431655766 and rs2_val==-46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:-0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, -0xb503, x1, 80)

inst_566:
// rs1_val==1431655766 and rs2_val==46341, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x55555556;  op2val:0xb505
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x55555556, 0xb505, x1, 84)

inst_567:
// rs1_val==-1431655765 and rs2_val==3, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x3
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x3, x1, 88)

inst_568:
// rs1_val==-1431655765 and rs2_val==1431655765, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x55555555
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x55555555, x1, 92)

inst_569:
// rs1_val==-1431655765 and rs2_val==-1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:-0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, -0x55555556, x1, 96)

inst_570:
// rs1_val==-1431655765 and rs2_val==5, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x5
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x5, x1, 100)

inst_571:
// rs1_val==-1431655765 and rs2_val==858993459, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x33333333
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x33333333, x1, 104)

inst_572:
// rs1_val==-1431655765 and rs2_val==1717986918, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x66666666
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x66666666, x1, 108)

inst_573:
// rs1_val==-1431655765 and rs2_val==-46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:-0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, -0xb504, x1, 112)

inst_574:
// rs1_val==-1431655765 and rs2_val==46340, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0xb504
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0xb504, x1, 116)

inst_575:
// rs1_val==-1431655765 and rs2_val==2, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x2
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x2, x1, 120)

inst_576:
// rs1_val==-1431655765 and rs2_val==1431655764, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x55555554
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x55555554, x1, 124)

inst_577:
// rs1_val==-1431655765 and rs2_val==0, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x0
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x0, x1, 128)

inst_578:
// rs1_val==-1431655765 and rs2_val==4, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x4
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x4, x1, 132)

inst_579:
// rs1_val==-1431655765 and rs2_val==858993458, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x33333332
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x33333332, x1, 136)

inst_580:
// rs1_val==-1431655765 and rs2_val==1717986917, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x66666665
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x66666665, x1, 140)

inst_581:
// rs1_val==-1431655765 and rs2_val==46339, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0xb503
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0xb503, x1, 144)

inst_582:
// rs1_val==-1431655765 and rs2_val==1431655766, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x55555555;  op2val:0x55555556
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x55555555, 0x55555556, x1, 148)

inst_583:
// rs1_val > 0 and rs2_val < 0, rs2_val == -257, rs1_val == 131072
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x20000;  op2val:-0x101
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x20000, -0x101, x1, 152)

inst_584:
// rs1_val < 0 and rs2_val < 0, rs1_val == -16777217
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0x1000001;  op2val:-0x7
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0x1000001, -0x7, x1, 156)

inst_585:
// rs1_val == 1, rs2_val == 8388608
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x1;  op2val:0x800000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x1, 0x800000, x1, 160)

inst_586:
// rs2_val == 1024, 
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:-0xb504;  op2val:0x400
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, -0xb504, 0x400, x1, 164)

inst_587:
// rs2_val == 4096, rs1_val == 4
// opcode: amoxor.w ; op1:x10; op2:x11; dest:x12; op1val:0x4;  op2val:0x1000
TEST_AMO_OP(amoxor.w, x12, x10, x11, rvtest_data, 0x4, 0x1000, x1, 168)
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


signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 512*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 43*(XLEN/32),4,0xdeadbeef

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
