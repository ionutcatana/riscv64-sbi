# a6 ignored
# a1 nothing returned
# all except a0 _must_ be preserved by callee
# a0 not standard

.section .text

.globl sbi_legacy_set_timer
.globl sbi_legacy_console_putchar
.globl sbi_legacy_console_getchar
.globl sbi_legacy_clear_ipi
.globl sbi_legacy_send_ipi
.globl sbi_legacy_remote_fence_i
.globl sbi_legacy_remote_sfence_vma
.globl sbi_legacy_remote_sfence_vma_asid
.globl sbi_legacy_shutdown

# long sbi_legacy_set_timer(uint64_t stime_value)
sbi_legacy_set_timer:
    li      a7, 0x01
    ecall
    ret

# long sbi_legacy_console_putchar(int ch)
sbi_legacy_console_putchar:
    li      a7, 0x02
    ecall
    ret

# long sbi_legacy_console_getchar(void)
sbi_legacy_console_getchar:
    li      a7, 0x03
    ecall
    ret

# long sbi_legacy_clear_ipi(void)
sbi_legacy_clear_ipi:
    li      a7, 0x04
    ecall
    ret

# long sbi_legacy_send_ipi(const unsigned long *hart_mask)
sbi_legacy_send_ipi:
    li      a7, 0x05
    ecall
    ret

# long sbi_legacy_remote_fence_i(const unsigned log *hart_mask)
sbi_legacy_remote_fence_i:
    li      a7, 0x06
    ecall
    ret

# long sbi_legacy_remote_sfence_vma(const unsigned long *hart_mask, unsigned long start, unsigned long size)
sbi_legacy_remote_sfence_vma:
    li      a7, 0x07
    ecall
    ret

# long sbi_legacy_remote_sfence_vma_asid(const unsigned long *hart_mask, unsigned long start, unsigned long size, unsigned long asid)
sbi_legacy_remote_sfence_vma_asid:
    li      a7, 0x08
    ecall
    ret

# void sbi_legacy_shutdown(void)
sbi_legacy_shutdown:
    li      a7, 0x09
    ecall
    # should never return
sbi_legacy_shutdown_loop:
    wfi
    j       sbi_legacy_shutdown_loop

