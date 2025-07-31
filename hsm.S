# Hart State Management Extensions

.section .text

.equ eid_hsm, 0x48534D

.globl sbi_hart_start
.globl sbi_hart_stop
.globl sbi_hart_get_status
.globl sbi_hart_suspend

# 0
# struct sbiret sbi_hart_start(unsigned long hartid, unsigned long start_addr, unsigned long opaque)
sbi_hart_start:
    li      a7, eid_hsm
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_hart_stop(void)
sbi_hart_stop:
    li      a7, eid_hsm
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_hart_get_status(unsigned long hartid)
sbi_hart_get_status:
    li      a7, eid_hsm
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_hart_suspend(uint32_t suspend_type, unsigned long resume_addr, unsigned long opaque)
sbi_hart_suspend:
    li      a7, eid_hsm
    li      a6, 3
    ecall
    ret
