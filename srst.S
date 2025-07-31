# System reset extension

.section .text

.equ eid_srst, 0x53525354

.globl sbi_system_reset

# 0
# struct sbiret sbi_system_reset(uint32_t reset_type, uint32_t reset_reason)
# reset types: 0 shutdown, 1 cold reboot, 2 warm reboot
# reset reasons: 0 no reason, 1 system failure
sbi_system_reset:
    li      a7, eid_srst
    li      a6, 0
    ecall
    ret
