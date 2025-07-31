.section .text

.equ eid_ipi, 0x735049

.globl sbi_send_ipi

# struct sbiret sbi_send_ipi(unsigned long hart_mask, unsigned long hart_mask_base)
sbi_send_ipi:
    li      a7, eid_ipi
    li      a6, 0
    ecall
    ret
