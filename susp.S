# System suspend Extension

.section .text

.equ eid_susp, 0x53555350

.globl sbi_system_suspend

# struct sbiret sbi_system_suspend(uint32_t sleep_type, unsinged long resume_addr, unsigned long opaque)
sbi_system_suspend:
    li      a7, eid_susp
    li      a6, 0
    ecall
    ret
