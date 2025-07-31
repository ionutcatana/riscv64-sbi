# Steal-time accounting extension

.section .text

.equ eid_sta, 0x535441

.globl sbi_steal_time_set_shmem

# struct sbiret sbi_steal_time_set_shmem(unsigned long shmem_phys_lo, unsigned long shmem_phys_hi, unsigned long flags)
sbi_steal_time_set_shmem:
    li      a7, eid_sta
    li      a6, 0
    ecall
    ret
