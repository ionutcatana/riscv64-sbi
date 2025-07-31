.section .text

.equ eid_mpxy, 0x4D505859

.globl sbi_mpxy_get_shmem_size
.globl sbi_mpxy_set_shmem
.globl sbi_mpxy_get_channel_ids
.globl sbi_mpxy_read_attributes
.globl sbi_mpxy_write_attributes
.globl sbi_mpxy_send_message_with_response
.globl sbi_mpxy_send_message_without_response
.globl sbi_mpxy_get_notification_events

# 0
sbi_mpxy_get_shmem_size:
    li      a7, eid_mpxy
    li      a6, 0
    ecall
    ret

# 1
sbi_mpxy_set_shmem:
    li      a7, eid_mpxy
    li      a6, 1
    ecall
    ret

# 2
sbi_mpxy_get_channel_ids:
    li      a7, eid_mpxy
    li      a6, 2
    ecall
    ret

# 3
sbi_mpxy_read_attributes:
    li      a7, eid_mpxy
    li      a6, 3
    ecall
    ret

# 4
sbi_mpxy_write_attributes:
    li      a7, eid_mpxy
    li      a6, 4
    ecall
    ret

# 5
sbi_mpxy_send_message_with_response:
    li      a7, eid_mpxy
    li      a6, 5
    ecall
    ret

# 6
sbi_mpxy_send_message_without_response:
    li      a7, eid_mpxy
    li      a6, 6
    ecall
    ret

# 7
sbi_mpxy_get_notification_events:
    li      a7, eid_mpxy
    li      a6, 7
    ecall
    ret

