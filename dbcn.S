# Debug console extension

.section .text

.equ eid_dbcn, 0x4442434E

.globl sbi_debug_console_write
.globl sbi_debug_console_read
.globl sbi_debug_console_write_byte

# 0
# struct sbiret sbi_debug_console_write(unsigned long num_bytes, unsigned long base_addr_lo, unsigned long base_addr_hi)
sbi_debug_console_write:
    li      a7, eid_dbcn
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_debug_console_read(unsigned long num_bytes, unsigned_long base_addr_lo)
sbi_debug_console_read:
    li      a7, eid_dbcn
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_debug_console_write_byte(uint8_t byte)
sbi_debug_console_write_byte:
    li      a7, eid_dbcn
    li      a6, 2
    ecall
    ret
