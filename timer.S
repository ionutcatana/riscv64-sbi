.section .text

.equ eid_timer, 0x54494D45

.globl sbi_set_timer

# 0
# struct sbiret sbi_set_timer(uint64_t stime_value)
sbi_set_timer:
    li      a7, eid_timer
    li      a6, 0
    ecall
    ret
