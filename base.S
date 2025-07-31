# RISC-V SBI Base extension functions

# struct sbiret {
#     long error; // <-- a0
#     union {     // <-- a1
#         long value;
#         unsinged long uvalue;
#     }
# }

# a0 .. a5 arguments
# a7 EID
# a6 FID
# ecall

.section .text

.equ eid_base, 0x10

.globl sbi_get_spec_version
.globl sbi_get_impl_id
.globl sbi_get_impl_version
.globl sbi_probe_extension
.globl sbi_get_mvendorid
.globl sbi_get_marchid
.globl sbi_get_mimpid

# 0
# struct sbiret sbi_get_spec_version(void)
sbi_get_spec_version:
    li      a7, eid_base
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_get_impl_id(void)
sbi_get_impl_id:
    li      a7, eid_base
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_get_impl_version(void)
sbi_get_impl_version:
    li      a7, eid_base
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_probe_extension(long id)
sbi_probe_extension:
    li      a7, eid_base
    li      a6, 3
    ecall
    ret

# 4
# struct sbiret sbi_get_mvendorid(void)
sbi_get_mvendorid:
    li      a7, eid_base
    li      a6, 4
    ecall
    ret

# 5
# struct sbiret sbi_get_marchid(void)
sbi_get_marchid:
    li      a7, eid_base
    li      a6, 5
    ecall
    ret

# 6
# struct sbiret sbi_get_mimpid(void)
sbi_get_mimpid:
    li      a7, eid_base
    li      a6, 6
    ecall
    ret
