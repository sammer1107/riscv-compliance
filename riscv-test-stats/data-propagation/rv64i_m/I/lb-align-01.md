
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006a0')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
| COV_LABELS                | lb-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lb-align-01.S/lb-align-01.S    |
| Total Number of coverpoints| 85     |
| Total Coverpoints Hit     | 85      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|            signature             |                                                        coverpoints                                                         |                                                                    code                                                                     |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFFFFFE|- opcode : lb<br> - rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x800003a0]:lb t0, 4092(t0)<br> [0x800003a4]:addi zero, zero, 0<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:sd t0, 0(a0)<br>       |
|   2|[0x80002018]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x26<br> - rd : x22<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                   |[0x800003b8]:lb s6, 4089(s10)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:sd s6, 8(a0)<br>      |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x29<br> - rd : x21<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val > 0<br>                                 |[0x800003d0]:lb s5, 2(t4)<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:addi zero, zero, 0<br> [0x800003dc]:sd s5, 16(a0)<br>         |
|   4|[0x80002028]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x18<br> - rd : x17<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                   |[0x800003e8]:lb a7, 1023(s2)<br> [0x800003ec]:addi zero, zero, 0<br> [0x800003f0]:addi zero, zero, 0<br> [0x800003f4]:sd a7, 24(a0)<br>      |
|   5|[0x80002030]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x21<br> - rd : x4<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                    |[0x80000400]:lb tp, 4(s5)<br> [0x80000404]:addi zero, zero, 0<br> [0x80000408]:addi zero, zero, 0<br> [0x8000040c]:sd tp, 32(a0)<br>         |
|   6|[0x80002038]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x27<br> - rd : x9<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                    |[0x80000418]:lb s1, 5(s11)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:sd s1, 40(a0)<br>        |
|   7|[0x80002040]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x31<br> - rd : x7<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                    |[0x80000430]:lb t2, 2730(t6)<br> [0x80000434]:addi zero, zero, 0<br> [0x80000438]:addi zero, zero, 0<br> [0x8000043c]:sd t2, 48(a0)<br>      |
|   8|[0x80002048]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x1<br> - rd : x2<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                     |[0x80000448]:lb sp, 4087(ra)<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:addi zero, zero, 0<br> [0x80000454]:sd sp, 56(a0)<br>      |
|   9|[0x80002050]<br>0xFFFFFFFFFFFFFFCA|- rs1 : x22<br> - rd : x24<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                   |[0x80000460]:lb s8, 4092(s6)<br> [0x80000464]:addi zero, zero, 0<br> [0x80000468]:addi zero, zero, 0<br> [0x8000046c]:sd s8, 64(a0)<br>      |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFFFCA|- rs1 : x3<br> - rd : x23<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                    |[0x80000478]:lb s7, 5(gp)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:sd s7, 72(a0)<br>         |
|  11|[0x80002060]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x15<br> - rd : x29<br> - imm_val == 0<br>                                                                           |[0x80000490]:lb t4, 0(a5)<br> [0x80000494]:addi zero, zero, 0<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:sd t4, 80(a0)<br>         |
|  12|[0x80002068]<br>0xFFFFFFFFFFFFFFCA|- rs1 : x16<br> - rd : x3<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                    |[0x800004a8]:lb gp, 6(a6)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:sd gp, 88(a0)<br>         |
|  13|[0x80002070]<br>0xFFFFFFFFFFFFFFCA|- rs1 : x19<br> - rd : x1<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                    |[0x800004c0]:lb ra, 7(s3)<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:addi zero, zero, 0<br> [0x800004cc]:sd ra, 96(a0)<br>         |
|  14|[0x80002078]<br>0xFFFFFFFFFFFFFFBA|- rs1 : x2<br> - rd : x15<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                    |[0x800004d8]:lb a5, 2048(sp)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:sd a5, 104(a0)<br>     |
|  15|[0x80002080]<br>0xFFFFFFFFFFFFFFBA|- rs1 : x8<br> - rd : x16<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                    |[0x800004f0]:lb a6, 1365(fp)<br> [0x800004f4]:addi zero, zero, 0<br> [0x800004f8]:addi zero, zero, 0<br> [0x800004fc]:sd a6, 112(a0)<br>     |
|  16|[0x80002088]<br>0xFFFFFFFFFFFFFFBA|- rs1 : x7<br> - rd : x31<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                    |[0x80000508]:lb t6, 2(t2)<br> [0x8000050c]:addi zero, zero, 0<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:sd t6, 120(a0)<br>        |
|  17|[0x80002090]<br>0xFFFFFFFFFFFFFFBA|- rs1 : x28<br> - rd : x12<br> - ea_align == 3 and (imm_val % 4) == 3<br>                                                   |[0x80000520]:lb a2, 4091(t3)<br> [0x80000524]:addi zero, zero, 0<br> [0x80000528]:addi zero, zero, 0<br> [0x8000052c]:sd a2, 128(a0)<br>     |
|  18|[0x80002098]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x23<br> - rd : x14<br>                                                                                              |[0x80000538]:lb a4, 2048(s7)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:sd a4, 136(a0)<br>     |
|  19|[0x800020a0]<br>0x0000000000000000|- rs1 : x13<br> - rd : x0<br>                                                                                               |[0x80000550]:lb zero, 2048(a3)<br> [0x80000554]:addi zero, zero, 0<br> [0x80000558]:addi zero, zero, 0<br> [0x8000055c]:sd zero, 144(a0)<br> |
|  20|[0x800020a8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x25<br> - rd : x19<br>                                                                                              |[0x80000568]:lb s3, 2048(s9)<br> [0x8000056c]:addi zero, zero, 0<br> [0x80000570]:addi zero, zero, 0<br> [0x80000574]:sd s3, 152(a0)<br>     |
|  21|[0x800020b0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x14<br> - rd : x18<br>                                                                                              |[0x80000580]:lb s2, 2048(a4)<br> [0x80000584]:addi zero, zero, 0<br> [0x80000588]:addi zero, zero, 0<br> [0x8000058c]:sd s2, 160(a0)<br>     |
|  22|[0x800020b8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x4<br> - rd : x28<br>                                                                                               |[0x80000598]:lb t3, 2048(tp)<br> [0x8000059c]:addi zero, zero, 0<br> [0x800005a0]:addi zero, zero, 0<br> [0x800005a4]:sd t3, 168(a0)<br>     |
|  23|[0x800020c0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x20<br> - rd : x6<br>                                                                                               |[0x800005b0]:lb t1, 2048(s4)<br> [0x800005b4]:addi zero, zero, 0<br> [0x800005b8]:addi zero, zero, 0<br> [0x800005bc]:sd t1, 176(a0)<br>     |
|  24|[0x800020c8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x12<br> - rd : x13<br>                                                                                              |[0x800005d0]:lb a3, 2048(a2)<br> [0x800005d4]:addi zero, zero, 0<br> [0x800005d8]:addi zero, zero, 0<br> [0x800005dc]:sd a3, 0(ra)<br>       |
|  25|[0x800020d0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x17<br> - rd : x27<br>                                                                                              |[0x800005e8]:lb s11, 2048(a7)<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:addi zero, zero, 0<br> [0x800005f4]:sd s11, 8(ra)<br>     |
|  26|[0x800020d8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x30<br> - rd : x10<br>                                                                                              |[0x80000600]:lb a0, 2048(t5)<br> [0x80000604]:addi zero, zero, 0<br> [0x80000608]:addi zero, zero, 0<br> [0x8000060c]:sd a0, 16(ra)<br>      |
|  27|[0x800020e0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x9<br> - rd : x26<br>                                                                                               |[0x80000618]:lb s10, 2048(s1)<br> [0x8000061c]:addi zero, zero, 0<br> [0x80000620]:addi zero, zero, 0<br> [0x80000624]:sd s10, 24(ra)<br>    |
|  28|[0x800020e8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x24<br> - rd : x8<br>                                                                                               |[0x80000630]:lb fp, 2048(s8)<br> [0x80000634]:addi zero, zero, 0<br> [0x80000638]:addi zero, zero, 0<br> [0x8000063c]:sd fp, 32(ra)<br>      |
|  29|[0x800020f0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x10<br> - rd : x11<br>                                                                                              |[0x80000648]:lb a1, 2048(a0)<br> [0x8000064c]:addi zero, zero, 0<br> [0x80000650]:addi zero, zero, 0<br> [0x80000654]:sd a1, 40(ra)<br>      |
|  30|[0x800020f8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x6<br> - rd : x30<br>                                                                                               |[0x80000660]:lb t5, 2048(t1)<br> [0x80000664]:addi zero, zero, 0<br> [0x80000668]:addi zero, zero, 0<br> [0x8000066c]:sd t5, 48(ra)<br>      |
|  31|[0x80002100]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x11<br> - rd : x25<br>                                                                                              |[0x80000678]:lb s9, 2048(a1)<br> [0x8000067c]:addi zero, zero, 0<br> [0x80000680]:addi zero, zero, 0<br> [0x80000684]:sd s9, 56(ra)<br>      |
|  32|[0x80002108]<br>0xFFFFFFFFFFFFFFFE|- rd : x20<br>                                                                                                              |[0x80000690]:lb s4, 2048(a0)<br> [0x80000694]:addi zero, zero, 0<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:sd s4, 64(ra)<br>      |
