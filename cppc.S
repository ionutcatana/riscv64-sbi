# Collaborative processor performance control mechanism extension

.section .text

.equ eid_cppc, 0x43505043

.globl sbi_cppc_probe
.globl sbi_cppc_read
.globl sbi_cppc_read_hi
.globl sbi_cppc_write

# 0
# struct sbiret sbi_cppc_probe(uint32_t cppc_reg_id)
sbi_cppc_probe:
    li      a7, eid_cppc
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_cppc_read(uint32_t cppc_reg_id)
sbi_cppc_read:
    li      a7, eid_cppc
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_cppc_read_hi(uint32_t cppc_reg_id)
sbi_cppc_read_hi:
    li      a7, eid_cppc
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_cppc_write(uint32_t cppc_reg_id, uint64_t val)
sbi_cppc_write:
    li      a7, eid_cppc
    li      a6, 3
    ecall
    ret
