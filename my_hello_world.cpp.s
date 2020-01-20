# 1 "my_hello_world.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "my_hello_world.s"
# 21 "my_hello_world.s"
# 1 "/home/irodrig/UPC/Master/PD/RISCV_RTCS_Core//configs/snapshots/randomcache/defines.h" 1
# 22 "my_hello_world.s" 2





.section .text
.global _start
_start:


    csrw minstret, zero
    csrw minstreth, zero


    li x1, 0xee000000
    csrw mtvec, x1



    li x1, 0x55555555
    csrw 0x7c0, x1




    li x3, 0xd0580000
    la x4, hw_data


loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop


    addi x6, x6, 32
    addi x7, x7, 4
    div x8, x6, x7
    addi x8, x8, 48
    sb x8, 0(x3)


_finish:
    li x3, 0xd0580000
    addi x5, x0, 0xff
    sb x5, 0(x3)
    beq x0, x0, _finish
.rept 100
    nop
.endr

.data
hw_data:
.ascii "------------------------------------\n"
.ascii "Hello World from my test in my core NEW!!\n"
.ascii "------------------------------------"
.byte 0
