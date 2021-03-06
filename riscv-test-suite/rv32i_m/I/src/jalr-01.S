
// -----------
// This file was generated by riscv_ctg (https://gitlab.com/incoresemi/riscv-compliance/riscv_ctg)
// version   : 0.4.0
// timestamp : Fri Dec  4 15:11:13 2020 GMT
// usage     : riscv_ctg \
//                  -- cgf ('/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/dataset.cgf', '/scratch/git-repo/incoresemi/riscv-compliance/riscv_ctg/sample_cgfs/rv32i.cgf') \
//                  -- xlen 32 \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x8,signature_x8_1)

inst_0:
// rs1 != rd, rs1==x25, rd==x17, imm_val > 0, imm_val == 1
// opcode: jalr; op1:x25; dest:x17; immval:0x1; align:0 
TEST_JALR_OP(x9, x17, x25, 0x1, x8, 0,0)

inst_1:
// rs1 == rd, rs1==x16, rd==x16, imm_val < 0, imm_val == -257
// opcode: jalr; op1:x16; dest:x16; immval:-0x101; align:0 
TEST_JALR_OP(x9, x16, x16, -0x101, x8, 4,0)

inst_2:
// rs1==x31, rd==x29, imm_val == 2, 
// opcode: jalr; op1:x31; dest:x29; immval:0x2; align:0 
TEST_JALR_OP(x9, x29, x31, 0x2, x8, 8,0)

inst_3:
// rs1==x18, rd==x12, imm_val == 4, 
// opcode: jalr; op1:x18; dest:x12; immval:0x4; align:0 
TEST_JALR_OP(x9, x12, x18, 0x4, x8, 12,0)

inst_4:
// rs1==x1, rd==x4, imm_val == 8, 
// opcode: jalr; op1:x1; dest:x4; immval:0x8; align:0 
TEST_JALR_OP(x9, x4, x1, 0x8, x8, 16,0)

inst_5:
// rs1==x15, rd==x18, imm_val == 16, 
// opcode: jalr; op1:x15; dest:x18; immval:0x10; align:0 
TEST_JALR_OP(x9, x18, x15, 0x10, x8, 20,0)

inst_6:
// rs1==x17, rd==x2, imm_val == 32, 
// opcode: jalr; op1:x17; dest:x2; immval:0x20; align:0 
TEST_JALR_OP(x9, x2, x17, 0x20, x8, 24,0)

inst_7:
// rs1==x24, rd==x19, imm_val == 64, 
// opcode: jalr; op1:x24; dest:x19; immval:0x40; align:0 
TEST_JALR_OP(x9, x19, x24, 0x40, x8, 28,0)

inst_8:
// rs1==x14, rd==x10, imm_val == 128, 
// opcode: jalr; op1:x14; dest:x10; immval:0x80; align:0 
TEST_JALR_OP(x9, x10, x14, 0x80, x8, 32,0)

inst_9:
// rs1==x28, rd==x23, imm_val == 256, 
// opcode: jalr; op1:x28; dest:x23; immval:0x100; align:0 
TEST_JALR_OP(x9, x23, x28, 0x100, x8, 36,0)

inst_10:
// rs1==x19, rd==x0, imm_val == 512, 
// opcode: jalr; op1:x19; dest:x0; immval:0x200; align:0 
TEST_JALR_OP(x9, x0, x19, 0x200, x8, 40,0)

inst_11:
// rs1==x13, rd==x28, imm_val == 1024, 
// opcode: jalr; op1:x13; dest:x28; immval:0x400; align:0 
TEST_JALR_OP(x9, x28, x13, 0x400, x8, 44,0)

inst_12:
// rs1==x7, rd==x6, imm_val == -2048, 
// opcode: jalr; op1:x7; dest:x6; immval:-0x800; align:0 
TEST_JALR_OP(x9, x6, x7, -0x800, x8, 48,0)

inst_13:
// rs1==x3, rd==x30, imm_val == -2, 
// opcode: jalr; op1:x3; dest:x30; immval:-0x2; align:0 
TEST_JALR_OP(x9, x30, x3, -0x2, x8, 52,0)

inst_14:
// rs1==x2, rd==x1, imm_val == -3, 
// opcode: jalr; op1:x2; dest:x1; immval:-0x3; align:0 
TEST_JALR_OP(x9, x1, x2, -0x3, x8, 56,0)

inst_15:
// rs1==x21, rd==x24, imm_val == -5, 
// opcode: jalr; op1:x21; dest:x24; immval:-0x5; align:0 
TEST_JALR_OP(x9, x24, x21, -0x5, x8, 60,0)

inst_16:
// rs1==x22, rd==x13, imm_val == -9, 
// opcode: jalr; op1:x22; dest:x13; immval:-0x9; align:0 
TEST_JALR_OP(x9, x13, x22, -0x9, x8, 64,0)

inst_17:
// rs1==x11, rd==x5, imm_val == -17, 
// opcode: jalr; op1:x11; dest:x5; immval:-0x11; align:0 
TEST_JALR_OP(x9, x5, x11, -0x11, x8, 68,0)

inst_18:
// rs1==x12, rd==x31, imm_val == -33, 
// opcode: jalr; op1:x12; dest:x31; immval:-0x21; align:0 
TEST_JALR_OP(x9, x31, x12, -0x21, x8, 72,0)

inst_19:
// rs1==x26, rd==x20, imm_val == -65, 
// opcode: jalr; op1:x26; dest:x20; immval:-0x41; align:0 
TEST_JALR_OP(x9, x20, x26, -0x41, x8, 76,0)
RVTEST_SIGBASE( x1,signature_x1_0)

inst_20:
// rs1==x8, rd==x26, imm_val == -129, 
// opcode: jalr; op1:x8; dest:x26; immval:-0x81; align:0 
TEST_JALR_OP(x2, x26, x8, -0x81, x1, 0,0)

inst_21:
// rs1==x5, rd==x9, imm_val == -513, 
// opcode: jalr; op1:x5; dest:x9; immval:-0x201; align:0 
TEST_JALR_OP(x2, x9, x5, -0x201, x1, 4,0)

inst_22:
// rs1==x9, rd==x27, imm_val == -1025, 
// opcode: jalr; op1:x9; dest:x27; immval:-0x401; align:0 
TEST_JALR_OP(x2, x27, x9, -0x401, x1, 8,0)

inst_23:
// rs1==x30, rd==x22, imm_val == 2047, 
// opcode: jalr; op1:x30; dest:x22; immval:0x7ff; align:0 
TEST_JALR_OP(x2, x22, x30, 0x7ff, x1, 12,0)

inst_24:
// rs1==x23, rd==x8, imm_val == 1365, 
// opcode: jalr; op1:x23; dest:x8; immval:0x555; align:0 
TEST_JALR_OP(x2, x8, x23, 0x555, x1, 16,0)

inst_25:
// rs1==x27, rd==x15, imm_val == -1366, 
// opcode: jalr; op1:x27; dest:x15; immval:-0x556; align:0 
TEST_JALR_OP(x2, x15, x27, -0x556, x1, 20,0)

inst_26:
// rs1==x10, rd==x11, 
// opcode: jalr; op1:x10; dest:x11; immval:-0x800; align:0 
TEST_JALR_OP(x2, x11, x10, -0x800, x1, 24,0)

inst_27:
// rs1==x20, rd==x21, 
// opcode: jalr; op1:x20; dest:x21; immval:-0x800; align:0 
TEST_JALR_OP(x2, x21, x20, -0x800, x1, 28,0)

inst_28:
// rs1==x6, rd==x7, 
// opcode: jalr; op1:x6; dest:x7; immval:-0x800; align:0 
TEST_JALR_OP(x2, x7, x6, -0x800, x1, 32,0)

inst_29:
// rs1==x29, rd==x14, 
// opcode: jalr; op1:x29; dest:x14; immval:-0x800; align:0 
TEST_JALR_OP(x2, x14, x29, -0x800, x1, 36,0)

inst_30:
// rs1==x4, rd==x25, 
// opcode: jalr; op1:x4; dest:x25; immval:-0x800; align:0 
TEST_JALR_OP(x2, x25, x4, -0x800, x1, 40,0)

inst_31:
// rd==x3, 
// opcode: jalr; op1:x6; dest:x3; immval:-0x800; align:0 
TEST_JALR_OP(x2, x3, x6, -0x800, x1, 44,0)

inst_32:
// imm_val == 512, 
// opcode: jalr; op1:x10; dest:x11; immval:0x200; align:0 
TEST_JALR_OP(x2, x11, x10, 0x200, x1, 48,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN


signature_x8_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x8_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 13*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
