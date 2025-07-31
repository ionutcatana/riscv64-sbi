# SBI Firmware features extension

.section .text

.equ eid_fwft, 0x46574654

.globl sbi_debug_num_triggers
.globl sbi_debug_set_shmem
.globl sbi_debug_read_triggers
.globl sbi_debug_install_triggers
.globl sbi_debug_update_triggers
.globl sbi_debug_uninstall_triggers
.globl sbi_debug_enable_triggers
.globl sbi_debug_disable_triggers

# 0
sbi_debug_num_triggers:
    li      a7, eid_fwft
    li      a6, 0
    ecall
    ret

# 1
sbi_debug_set_shmem:
    li      a7, eid_fwft
    li      a6, 1
    ecall
    ret

# 2
sbi_debug_read_triggers:
    li      a7, eid_fwft
    li      a6, 2
    ecall
    ret

# 3
sbi_debug_install_triggers:
    li      a7, eid_fwft
    li      a6, 3
    ecall
    ret

# 4
sbi_debug_update_triggers:
    li      a7, eid_fwft
    li      a6, 4
    ecall
    ret

# 5
sbi_debug_uninstall_triggers:
    li      a7, eid_fwft
    li      a6, 5
    ecall
    ret

# 6
sbi_debug_enable_triggers:
    li      a7, eid_fwft
    li      a6, 6
    ecall
    ret

# 7
sbi_debug_disable_triggers:
    li      a7, eid_fwft
    li      a6, 7
    ecall
    ret

