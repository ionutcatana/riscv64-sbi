# Supervisor Software Events Extensions

.section .text

.equ eid_sse, 0x535345

.globl sbi_sse_read_attrs
.globl sbi_sse_write_attrs
.globl sbi_sse_register
.globl sbi_sse_unregister
.globl sbi_sse_enable
.globl sbi_sse_disable
.globl sbi_sse_complete
.globl sbi_sse_inject
.globl sbi_sse_hart_unmask
.globl sbi_sse_hart_mask

# 0
# struct sbiret sbi_sse_read_attrs
sbi_sse_read_attrs:
    li      a7, eid_sse
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_sse_write_attrs
sbi_sse_write_attrs:
    li      a7, eid_sse
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_sse_register
sbi_sse_register:
    li      a7, eid_sse
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_sse_unregister
sbi_sse_unregister:
    li      a7, eid_sse
    li      a6, 3
    ecall
    ret

# 4
# struct sbiret sbi_sse_enable
sbi_sse_enable:
    li      a7, eid_sse
    li      a6, 4
    ecall
    ret

# 5
# struct sbiret sbi_sse_disable
sbi_sse_disable:
    li      a7, eid_sse
    li      a6, 5
    ecall
    ret

# 6
# struct sbiret sbi_sse_complete
sbi_sse_complete:
    li      a7, eid_sse
    li      a6, 6
    ecall
    ret

# 7
# struct sbiret sbi_sse_inject
sbi_sse_inject:
    li      a7, eid_sse
    li      a6, 7
    ecall
    ret

# 8
# struct sbiret sbi_sse_hart_unmask
sbi_sse_hart_unmask:
    li      a7, eid_sse
    li      a6, 8
    ecall
    ret

# 9
# struct sbiret sbi_sse_hart_mask
sbi_sse_hart_mask:
    li      a7, eid_sse
    li      a6, 9
    ecall
    ret

