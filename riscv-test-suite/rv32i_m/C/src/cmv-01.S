
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.0
// timestamp : Fri Dec  4 15:18:06 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32ic.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32IC")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

RVTEST_SIGBASE( x5,signature_x5_1)

inst_0:
// rs2 == rd and rs2 != 0, rd==x13, rs2==x13, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
// opcode: c.mv; op2:x13; dest:x13; op2val:-0x80000000
TEST_CMV_OP( c.mv, x13, x13, 0x00000000, -0x80000000, x5, 0, x21)

inst_1:
// rs2 != rd and rs2 != 0, rd==x26, rs2==x10, rs2_val == 0, rs2_val==0
// opcode: c.mv; op2:x10; dest:x26; op2val:0x0
TEST_CMV_OP( c.mv, x26, x10, 0x00000000, 0x0, x5, 4, x21)

inst_2:
// rd==x3, rs2==x19, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647
// opcode: c.mv; op2:x19; dest:x3; op2val:0x7fffffff
TEST_CMV_OP( c.mv, x3, x19, 0x00000000, 0x7fffffff, x5, 8, x21)

inst_3:
// rd==x30, rs2==x27, rs2_val == 1, 
// opcode: c.mv; op2:x27; dest:x30; op2val:0x1
TEST_CMV_OP( c.mv, x30, x27, 0x00000000, 0x1, x5, 12, x21)

inst_4:
// rd==x14, rs2==x4, rs2_val == 2, rs2_val==2
// opcode: c.mv; op2:x4; dest:x14; op2val:0x2
TEST_CMV_OP( c.mv, x14, x4, 0x00000000, 0x2, x5, 16, x21)

inst_5:
// rd==x22, rs2==x26, rs2_val == 4, rs2_val==4
// opcode: c.mv; op2:x26; dest:x22; op2val:0x4
TEST_CMV_OP( c.mv, x22, x26, 0x00000000, 0x4, x5, 20, x21)

inst_6:
// rd==x16, rs2==x30, rs2_val == 8, 
// opcode: c.mv; op2:x30; dest:x16; op2val:0x8
TEST_CMV_OP( c.mv, x16, x30, 0x00000000, 0x8, x5, 24, x21)

inst_7:
// rd==x7, rs2==x3, rs2_val == 16, 
// opcode: c.mv; op2:x3; dest:x7; op2val:0x10
TEST_CMV_OP( c.mv, x7, x3, 0x00000000, 0x10, x5, 28, x21)

inst_8:
// rd==x8, rs2==x14, rs2_val == 32, 
// opcode: c.mv; op2:x14; dest:x8; op2val:0x20
TEST_CMV_OP( c.mv, x8, x14, 0x00000000, 0x20, x5, 32, x21)

inst_9:
// rd==x1, rs2==x11, rs2_val == 64, 
// opcode: c.mv; op2:x11; dest:x1; op2val:0x40
TEST_CMV_OP( c.mv, x1, x11, 0x00000000, 0x40, x5, 36, x21)

inst_10:
// rd==x15, rs2==x20, rs2_val == 128, 
// opcode: c.mv; op2:x20; dest:x15; op2val:0x80
TEST_CMV_OP( c.mv, x15, x20, 0x00000000, 0x80, x5, 40, x21)

inst_11:
// rd==x17, rs2==x28, rs2_val == 256, 
// opcode: c.mv; op2:x28; dest:x17; op2val:0x100
TEST_CMV_OP( c.mv, x17, x28, 0x00000000, 0x100, x5, 44, x21)

inst_12:
// rd==x12, rs2==x18, rs2_val == 512, 
// opcode: c.mv; op2:x18; dest:x12; op2val:0x200
TEST_CMV_OP( c.mv, x12, x18, 0x00000000, 0x200, x5, 48, x21)

inst_13:
// rd==x29, rs2==x23, rs2_val == 1024, 
// opcode: c.mv; op2:x23; dest:x29; op2val:0x400
TEST_CMV_OP( c.mv, x29, x23, 0x00000000, 0x400, x5, 52, x21)

inst_14:
// rd==x2, rs2==x8, rs2_val == 2048, 
// opcode: c.mv; op2:x8; dest:x2; op2val:0x800
TEST_CMV_OP( c.mv, x2, x8, 0x00000000, 0x800, x5, 56, x21)

inst_15:
// rd==x9, rs2==x1, rs2_val == 4096, 
// opcode: c.mv; op2:x1; dest:x9; op2val:0x1000
TEST_CMV_OP( c.mv, x9, x1, 0x00000000, 0x1000, x5, 60, x21)

inst_16:
// rd==x6, rs2==x29, rs2_val == 8192, 
// opcode: c.mv; op2:x29; dest:x6; op2val:0x2000
TEST_CMV_OP( c.mv, x6, x29, 0x00000000, 0x2000, x5, 64, x21)

inst_17:
// rd==x25, rs2==x2, rs2_val == 16384, 
// opcode: c.mv; op2:x2; dest:x25; op2val:0x4000
TEST_CMV_OP( c.mv, x25, x2, 0x00000000, 0x4000, x5, 68, x21)

inst_18:
// rd==x31, rs2==x9, rs2_val == 32768, 
// opcode: c.mv; op2:x9; dest:x31; op2val:0x8000
TEST_CMV_OP( c.mv, x31, x9, 0x00000000, 0x8000, x5, 72, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_19:
// rd==x19, rs2==x31, rs2_val == 65536, 
// opcode: c.mv; op2:x31; dest:x19; op2val:0x10000
TEST_CMV_OP( c.mv, x19, x31, 0x00000000, 0x10000, x1, 0, x2)

inst_20:
// rd==x5, rs2==x21, rs2_val == 131072, 
// opcode: c.mv; op2:x21; dest:x5; op2val:0x20000
TEST_CMV_OP( c.mv, x5, x21, 0x00000000, 0x20000, x1, 4, x2)

inst_21:
// rd==x27, rs2==x25, rs2_val == 262144, 
// opcode: c.mv; op2:x25; dest:x27; op2val:0x40000
TEST_CMV_OP( c.mv, x27, x25, 0x00000000, 0x40000, x1, 8, x2)

inst_22:
// rd==x28, rs2==x7, rs2_val == 524288, 
// opcode: c.mv; op2:x7; dest:x28; op2val:0x80000
TEST_CMV_OP( c.mv, x28, x7, 0x00000000, 0x80000, x1, 12, x2)

inst_23:
// rd==x10, rs2==x17, rs2_val == 1048576, 
// opcode: c.mv; op2:x17; dest:x10; op2val:0x100000
TEST_CMV_OP( c.mv, x10, x17, 0x00000000, 0x100000, x1, 16, x2)

inst_24:
// rd==x0, rs2==x6, rs2_val == 2097152, 
// opcode: c.mv; op2:x6; dest:x0; op2val:0x200000
TEST_CMV_OP( c.mv, x0, x6, 0x00000000, 0x200000, x1, 20, x2)

inst_25:
// rd==x20, rs2==x15, rs2_val == 4194304, 
// opcode: c.mv; op2:x15; dest:x20; op2val:0x400000
TEST_CMV_OP( c.mv, x20, x15, 0x00000000, 0x400000, x1, 24, x2)

inst_26:
// rd==x21, rs2==x24, rs2_val == 8388608, 
// opcode: c.mv; op2:x24; dest:x21; op2val:0x800000
TEST_CMV_OP( c.mv, x21, x24, 0x00000000, 0x800000, x1, 28, x2)

inst_27:
// rd==x11, rs2==x22, rs2_val == 16777216, 
// opcode: c.mv; op2:x22; dest:x11; op2val:0x1000000
TEST_CMV_OP( c.mv, x11, x22, 0x00000000, 0x1000000, x1, 32, x2)

inst_28:
// rd==x4, rs2==x16, rs2_val == 33554432, 
// opcode: c.mv; op2:x16; dest:x4; op2val:0x2000000
TEST_CMV_OP( c.mv, x4, x16, 0x00000000, 0x2000000, x1, 36, x2)

inst_29:
// rd==x18, rs2==x5, rs2_val == 67108864, 
// opcode: c.mv; op2:x5; dest:x18; op2val:0x4000000
TEST_CMV_OP( c.mv, x18, x5, 0x00000000, 0x4000000, x1, 40, x2)

inst_30:
// rd==x24, rs2==x12, rs2_val == 134217728, 
// opcode: c.mv; op2:x12; dest:x24; op2val:0x8000000
TEST_CMV_OP( c.mv, x24, x12, 0x00000000, 0x8000000, x1, 44, x2)

inst_31:
// rd==x23, rs2_val == 268435456, 
// opcode: c.mv; op2:x5; dest:x23; op2val:0x10000000
TEST_CMV_OP( c.mv, x23, x5, 0x00000000, 0x10000000, x1, 48, x2)

inst_32:
// rs2_val == 536870912, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x20000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x20000000, x1, 52, x2)

inst_33:
// rs2_val == 1073741824, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x40000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x40000000, x1, 56, x2)

inst_34:
// rs2_val == -2, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x2
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x2, x1, 60, x2)

inst_35:
// rs2_val == -3, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x3
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x3, x1, 64, x2)

inst_36:
// rs2_val == -5, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x5
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x5, x1, 68, x2)

inst_37:
// rs2_val == -9, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x9
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x9, x1, 72, x2)

inst_38:
// rs2_val == -17, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x11
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x11, x1, 76, x2)

inst_39:
// rs2_val == -33, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x21
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x21, x1, 80, x2)

inst_40:
// rs2_val == -65, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x41
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x41, x1, 84, x2)

inst_41:
// rs2_val == -129, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x81
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x81, x1, 88, x2)

inst_42:
// rs2_val == -257, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x101
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x101, x1, 92, x2)

inst_43:
// rs2_val == -513, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x201
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x201, x1, 96, x2)

inst_44:
// rs2_val == -1025, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x401
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x401, x1, 100, x2)

inst_45:
// rs2_val == -2049, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x801
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x801, x1, 104, x2)

inst_46:
// rs2_val == -4097, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x1001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x1001, x1, 108, x2)

inst_47:
// rs2_val == -8193, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x2001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x2001, x1, 112, x2)

inst_48:
// rs2_val == -16385, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x4001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x4001, x1, 116, x2)

inst_49:
// rs2_val == -32769, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x8001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x8001, x1, 120, x2)

inst_50:
// rs2_val == -65537, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x10001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x10001, x1, 124, x2)

inst_51:
// rs2_val == -131073, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x20001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x20001, x1, 128, x2)

inst_52:
// rs2_val == -262145, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x40001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x40001, x1, 132, x2)

inst_53:
// rs2_val == -524289, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x80001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x80001, x1, 136, x2)

inst_54:
// rs2_val == -1048577, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x100001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x100001, x1, 140, x2)

inst_55:
// rs2_val == -536870913, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x20000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x20000001, x1, 144, x2)

inst_56:
// rs2_val == -1073741825, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x40000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x40000001, x1, 148, x2)

inst_57:
// rs2_val == 1431655765, rs2_val==1431655765
// opcode: c.mv; op2:x11; dest:x10; op2val:0x55555555
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555555, x1, 152, x2)

inst_58:
// rs2_val == -1431655766, rs2_val==-1431655766
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x55555556
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x55555556, x1, 156, x2)

inst_59:
// rs2_val==3, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x3
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x3, x1, 160, x2)

inst_60:
// rs2_val==5, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x5
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x5, x1, 164, x2)

inst_61:
// rs2_val==858993459, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x33333333
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x33333333, x1, 168, x2)

inst_62:
// rs2_val==1717986918, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x66666666
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x66666666, x1, 172, x2)

inst_63:
// rs2_val==-46340, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0xb504
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0xb504, x1, 176, x2)

inst_64:
// rs2_val==46340, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0xb504
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xb504, x1, 180, x2)

inst_65:
// rs2_val==1431655764, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x55555554
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555554, x1, 184, x2)

inst_66:
// rs2_val==858993458, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x33333332
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x33333332, x1, 188, x2)

inst_67:
// rs2_val==1717986917, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x66666665
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x66666665, x1, 192, x2)

inst_68:
// rs2_val==46339, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0xb503
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xb503, x1, 196, x2)

inst_69:
// rs2_val == -2097153, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x200001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x200001, x1, 200, x2)

inst_70:
// rs2_val==46341, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0xb505
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xb505, x1, 204, x2)

inst_71:
// rs2_val==-46339, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0xb503
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0xb503, x1, 208, x2)

inst_72:
// rs2_val==1431655766, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x55555556
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555556, x1, 212, x2)

inst_73:
// rs2_val==-1431655765, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x55555555
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x55555555, x1, 216, x2)

inst_74:
// rs2_val==6, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x6
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x6, x1, 220, x2)

inst_75:
// rs2_val==858993460, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x33333334
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x33333334, x1, 224, x2)

inst_76:
// rs2_val==1717986919, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x66666667
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x66666667, x1, 228, x2)

inst_77:
// rs2_val == -4194305, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x400001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x400001, x1, 232, x2)

inst_78:
// rs2_val == -8388609, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x800001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x800001, x1, 236, x2)

inst_79:
// rs2_val == -16777217, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x1000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x1000001, x1, 240, x2)

inst_80:
// rs2_val == -33554433, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x2000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x2000001, x1, 244, x2)

inst_81:
// rs2_val == -67108865, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x4000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x4000001, x1, 248, x2)

inst_82:
// rs2_val == -134217729, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x8000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x8000001, x1, 252, x2)

inst_83:
// rs2_val == -268435457, 
// opcode: c.mv; op2:x11; dest:x10; op2val:-0x10000001
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, -0x10000001, x1, 256, x2)

inst_84:
// rs2_val == 2097152, 
// opcode: c.mv; op2:x11; dest:x10; op2val:0x200000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x200000, x1, 260, x2)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 66*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
