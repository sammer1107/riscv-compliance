
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000950')]      |
| SIG_REGION                | [('0x80002010', '0x80002130', '72 words')]      |
| COV_LABELS                | sb-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sb-align-01.S/sb-align-01.S    |
| Total Number of coverpoints| 153     |
| Total Coverpoints Hit     | 153      |
| Total Signature Updates   | 72      |
| STAT1                     | 72      |
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

|s.no|        signature         |                                                                                         coverpoints                                                                                         |               code               |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80002010]<br>0x80000000|- opcode : sb<br> - rs1 : x14<br> - rs2 : x20<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br> - rs2_val == -2147483648<br> |[0x80000110]:sb s4, 4089(a4)<br>  |
|   2|[0x80002014]<br>0x00000000|- rs1 : x18<br> - rs2 : x17<br> - rs2_val == 0<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                                                                |[0x8000012c]:sb a7, 4086(s2)<br>  |
|   3|[0x80002018]<br>0x7FFFFFFF|- rs1 : x11<br> - rs2 : x21<br> - rs2_val == (2**(xlen-1)-1)<br> - ea_align == 0 and (imm_val % 4) == 0<br> - rs2_val == 2147483647<br>                                                      |[0x8000014c]:sb s5, 3072(a1)<br>  |
|   4|[0x8000201c]<br>0x00000001|- rs1 : x29<br> - rs2 : x25<br> - rs2_val == 1<br>                                                                                                                                           |[0x80000168]:sb s9, 4086(t4)<br>  |
|   5|[0x80002020]<br>0xFFFFF7FF|- rs1 : x16<br> - rs2 : x14<br> - ea_align == 0 and (imm_val % 4) == 3<br> - imm_val > 0<br> - rs2_val == -2049<br>                                                                          |[0x80000188]:sb a4, 2047(a6)<br>  |
|   6|[0x80002026]<br>0x10000000|- rs1 : x21<br> - rs2 : x24<br> - ea_align == 2 and (imm_val % 4) == 0<br> - rs2_val == 268435456<br>                                                                                        |[0x800001a4]:sb s8, 2048(s5)<br>  |
|   7|[0x8000202a]<br>0xFFFFFFFD|- rs1 : x12<br> - rs2 : x23<br> - ea_align == 2 and (imm_val % 4) == 1<br> - rs2_val == -3<br>                                                                                               |[0x800001c0]:sb s7, 1365(a2)<br>  |
|   8|[0x8000202e]<br>0xFFFFFFFB|- rs1 : x17<br> - rs2 : x10<br> - ea_align == 2 and (imm_val % 4) == 2<br> - rs2_val == -5<br>                                                                                               |[0x800001dc]:sb a0, 6(a7)<br>     |
|   9|[0x80002032]<br>0xFFFF7FFF|- rs1 : x5<br> - rs2 : x16<br> - ea_align == 2 and (imm_val % 4) == 3<br> - rs2_val == -32769<br>                                                                                            |[0x800001fc]:sb a6, 4031(t0)<br>  |
|  10|[0x80002035]<br>0x00001000|- rs1 : x9<br> - rs2 : x13<br> - ea_align == 1 and (imm_val % 4) == 0<br> - rs2_val == 4096<br>                                                                                              |[0x80000218]:sb a3, 128(s1)<br>   |
|  11|[0x80002039]<br>0x00008000|- rs1 : x1<br> - rs2 : x2<br> - ea_align == 1 and (imm_val % 4) == 1<br> - rs2_val == 32768<br>                                                                                              |[0x80000234]:sb sp, 9(ra)<br>     |
|  12|[0x8000203d]<br>0xFFFFFFFB|- rs1 : x3<br> - rs2 : x8<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                                                                                     |[0x80000250]:sb fp, 4090(gp)<br>  |
|  13|[0x80002041]<br>0xFFFFFFFA|- rs1 : x8<br> - rs2 : x18<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                                                                                    |[0x8000026c]:sb s2, 3071(fp)<br>  |
|  14|[0x80002047]<br>0xFFFFFEFF|- rs1 : x30<br> - rs2 : x27<br> - ea_align == 3 and (imm_val % 4) == 0<br> - rs2_val == -257<br>                                                                                             |[0x80000288]:sb s11, 16(t5)<br>   |
|  15|[0x8000204b]<br>0xFFFFFFFA|- rs1 : x19<br> - rs2 : x1<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                                                                                    |[0x800002a4]:sb ra, 1(s3)<br>     |
|  16|[0x8000204f]<br>0xFFFFFFF9|- rs1 : x26<br> - rs2 : x11<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                                                                                   |[0x800002c0]:sb a1, 2(s10)<br>    |
|  17|[0x80002053]<br>0x00000800|- rs1 : x24<br> - rs2 : x7<br> - ea_align == 3 and (imm_val % 4) == 3<br> - rs2_val == 2048<br>                                                                                              |[0x800002e0]:sb t2, 3583(s8)<br>  |
|  18|[0x80002054]<br>0x00100000|- rs1 : x25<br> - rs2 : x3<br> - imm_val == 0<br> - rs2_val == 1048576<br>                                                                                                                   |[0x800002fc]:sb gp, 0(s9)<br>     |
|  19|[0x80002058]<br>0x00000002|- rs1 : x6<br> - rs2 : x31<br> - rs2_val == 2<br>                                                                                                                                            |[0x80000318]:sb t6, 256(t1)<br>   |
|  20|[0x8000205c]<br>0x00000004|- rs1 : x31<br> - rs2 : x30<br> - rs2_val == 4<br>                                                                                                                                           |[0x80000334]:sb t5, 2(t6)<br>     |
|  21|[0x80002060]<br>0x00000008|- rs1 : x7<br> - rs2 : x29<br> - rs2_val == 8<br>                                                                                                                                            |[0x80000350]:sb t4, 4090(t2)<br>  |
|  22|[0x80002064]<br>0x00000010|- rs1 : x2<br> - rs2 : x5<br> - rs2_val == 16<br>                                                                                                                                            |[0x8000036c]:sb t0, 8(sp)<br>     |
|  23|[0x80002068]<br>0x00000020|- rs1 : x28<br> - rs2 : x22<br> - rs2_val == 32<br>                                                                                                                                          |[0x80000388]:sb s6, 512(t3)<br>   |
|  24|[0x8000206c]<br>0x00000040|- rs1 : x27<br> - rs2 : x19<br> - rs2_val == 64<br>                                                                                                                                          |[0x800003ac]:sb s3, 4(s11)<br>    |
|  25|[0x80002070]<br>0x00000080|- rs1 : x4<br> - rs2 : x12<br> - rs2_val == 128<br>                                                                                                                                          |[0x800003c8]:sb a2, 4063(tp)<br>  |
|  26|[0x80002074]<br>0x00000100|- rs1 : x13<br> - rs2 : x26<br> - rs2_val == 256<br>                                                                                                                                         |[0x800003e4]:sb s10, 4088(a3)<br> |
|  27|[0x80002078]<br>0x00000000|- rs1 : x23<br> - rs2 : x0<br>                                                                                                                                                               |[0x80000400]:sb zero, 4(s7)<br>   |
|  28|[0x8000207c]<br>0x00000400|- rs1 : x15<br> - rs2 : x6<br> - rs2_val == 1024<br>                                                                                                                                         |[0x8000041c]:sb t1, 16(a5)<br>    |
|  29|[0x80002080]<br>0x00002000|- rs1 : x10<br> - rs2 : x28<br> - rs2_val == 8192<br>                                                                                                                                        |[0x80000438]:sb t3, 3583(a0)<br>  |
|  30|[0x80002084]<br>0x00004000|- rs1 : x22<br> - rs2 : x15<br> - rs2_val == 16384<br>                                                                                                                                       |[0x80000454]:sb a5, 3967(s6)<br>  |
|  31|[0x80002088]<br>0x00010000|- rs1 : x20<br> - rs2 : x4<br> - rs2_val == 65536<br>                                                                                                                                        |[0x80000470]:sb tp, 3(s4)<br>     |
|  32|[0x8000208c]<br>0x00020000|- rs2 : x9<br> - rs2_val == 131072<br>                                                                                                                                                       |[0x8000048c]:sb s1, 3583(a5)<br>  |
|  33|[0x80002090]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                                                                      |[0x800004a8]:sb a1, 3839(a0)<br>  |
|  34|[0x80002094]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                                                                      |[0x800004c4]:sb a1, 8(a0)<br>     |
|  35|[0x80002098]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                                                     |[0x800004e0]:sb a1, 4089(a0)<br>  |
|  36|[0x8000209c]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                                                                     |[0x800004fc]:sb a1, 4093(a0)<br>  |
|  37|[0x800020a0]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                                                                     |[0x80000518]:sb a1, 4086(a0)<br>  |
|  38|[0x800020a4]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                                                    |[0x80000534]:sb a1, 128(a0)<br>   |
|  39|[0x800020a8]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                                                    |[0x80000550]:sb a1, 16(a0)<br>    |
|  40|[0x800020ac]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                                                                    |[0x8000056c]:sb a1, 4086(a0)<br>  |
|  41|[0x800020b0]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                                       |[0x80000588]:sb a1, 4086(a0)<br>  |
|  42|[0x800020b4]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                                                       |[0x800005a8]:sb a1, 4086(a0)<br>  |
|  43|[0x800020b8]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                                       |[0x800005c8]:sb a1, 4094(a0)<br>  |
|  44|[0x800020bc]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                                      |[0x800005e8]:sb a1, 3583(a0)<br>  |
|  45|[0x800020c0]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                      |[0x80000608]:sb a1, 5(a0)<br>     |
|  46|[0x800020c4]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                                                     |[0x80000628]:sb a1, 4079(a0)<br>  |
|  47|[0x800020c8]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                     |[0x80000648]:sb a1, 512(a0)<br>   |
|  48|[0x800020cc]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                                                     |[0x80000668]:sb a1, 16(a0)<br>    |
|  49|[0x800020d0]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                    |[0x80000688]:sb a1, 3(a0)<br>     |
|  50|[0x800020d4]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                                                    |[0x800006a8]:sb a1, 16(a0)<br>    |
|  51|[0x800020d8]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                    |[0x800006c8]:sb a1, 1023(a0)<br>  |
|  52|[0x800020dc]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                    |[0x800006e8]:sb a1, 128(a0)<br>   |
|  53|[0x800020e0]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                   |[0x80000708]:sb a1, 2047(a0)<br>  |
|  54|[0x800020e4]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                   |[0x80000728]:sb a1, 64(a0)<br>    |
|  55|[0x800020e8]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                                                   |[0x80000748]:sb a1, 4089(a0)<br>  |
|  56|[0x800020ec]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                                                                  |[0x80000768]:sb a1, 2048(a0)<br>  |
|  57|[0x800020f0]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                                        |[0x80000784]:sb a1, 4091(a0)<br>  |
|  58|[0x800020f4]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                                                                   |[0x800007a0]:sb a1, 4092(a0)<br>  |
|  59|[0x800020f8]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                  |[0x800007c0]:sb a1, 256(a0)<br>   |
|  60|[0x800020fc]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                  |[0x800007e0]:sb a1, 4092(a0)<br>  |
|  61|[0x80002100]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                                                   |[0x800007fc]:sb a1, 4088(a0)<br>  |
|  62|[0x80002104]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                 |[0x8000081c]:sb a1, 4087(a0)<br>  |
|  63|[0x80002108]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                                                                  |[0x80000838]:sb a1, 4089(a0)<br>  |
|  64|[0x8000210c]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                                                                  |[0x80000858]:sb a1, 4(a0)<br>     |
|  65|[0x80002110]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                                          |[0x80000874]:sb a1, 1(a0)<br>     |
|  66|[0x80002114]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                                                 |[0x80000894]:sb a1, 9(a0)<br>     |
|  67|[0x80002118]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                                                          |[0x800008b0]:sb a1, 4063(a0)<br>  |
|  68|[0x8000211c]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                                                         |[0x800008cc]:sb a1, 9(a0)<br>     |
|  69|[0x80002120]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                                                         |[0x800008e8]:sb a1, 64(a0)<br>    |
|  70|[0x80002124]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                                         |[0x80000904]:sb a1, 4090(a0)<br>  |
|  71|[0x80002128]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                        |[0x80000920]:sb a1, 1024(a0)<br>  |
|  72|[0x8000212c]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                                                         |[0x8000093c]:sb a1, 4(a0)<br>     |
