# Nested Virtualization Extension

.section .text

.equ eid_nacl, 0x4E41434C

.globl sbi_nacl_probe_feature
.globl sbi_nacl_set_shmem
.globl sbi_nacl_sync_csr
.globl sbi_nacl_sync_hfence
.globl sbi_nacl_sync_sret

# 0
# struct sbiret sbi_nacl_probe_feature(uint32_t feature_id)
sbi_nacl_probe_feature:
    li      a7, eid_nacl
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_nacl_set_shmem(unsigned long shmem_phys_lo, unsigned long shmem_phys_hi, unsigned long flags)
sbi_nacl_set_shmem:
    li      a7, eid_nacl
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_nacl_sync_csr(unsigned long csr_num)
sbi_nacl_sync_csr:
    li      a7, eid_nacl
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_nacl_sync_hfence(unsigned long entry_index)
sbi_nacl_sync_hfence:
    li      a7, eid_nacl
    li      a6, 3
    ecall
    ret

# 4
# struct sbiret sbi_nacl_sync_sret(void)
sbi_nacl_sync_sret:
    li      a7, eid_nacl
    li      a6, 4
    ecall
    ret

