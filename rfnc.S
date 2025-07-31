# RFENCE Extension

.section .text

.equ eid_rfence, 0x52464E43

.globl sbi_remote_fence_i
.globl sbi_remote_sfence_vma
.globl sbi_remote_sfence_vma_asid
.globl sbi_remote_sfence_vma_vmid
.globl sbi_remote_hfence_gvma
.globl sbi_remote_hfence_vvma_asid
.globl sbi_remote_hfence_vvma

# 0
# struct sbiret sbi_remote_fence_i(unsigned long hart_mask, unsigned long hart_mask_base)
sbi_remote_fence_i:
    li      a7, eid_rfence
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_remote_sfence_vma(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size)
sbi_remote_sfence_vma:
    li      a7, eid_rfence
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_remote_sfence_vma_asid(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size, unsigned long asid)
sbi_remote_sfence_vma_asid:
    li      a7, eid_rfence
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_remote_sfence_vma_vmid(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size, unsigned long vmid)
sbi_remote_sfence_vma_vmid:
    li      a7, eid_rfence
    li      a6, 3
    ecall
    ret

# 4
# struct sbiret sbi_remote_hfence_gvma(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size)
sbi_remote_hfence_gvma:
    li      a7, eid_rfence
    li      a6, 4
    ecall
    ret

# 5
# struct sbiret sbi_remote_hfence_vvma_asid(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size, unsigned long asid)
sbi_remote_hfence_vvma_asid:
    li      a7, eid_rfence
    li      a6, 5
    ecall
    ret

# 6
# struct sbiret sbi_remote_hfence_vvma(unsigned long hart_mask, unsigned long hart_mask_base, unsigned long start_addr, unsigned long size)
sbi_remote_hfence_vvma:
    li      a7, eid_rfence
    li      a6, 6
    ecall
    ret
