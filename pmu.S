# Performance monitoring unit extension

.section .text

.equ eid_pmu, 0x504D55

.globl sbi_pmu_num_counters
.globl sbi_pmu_counter_get_info
.globl sbi_pmu_counter_config_matching
.globl sbi_pmu_counter_start
.globl sbi_pmu_counter_stop
.globl sbi_pmu_counter_fw_read
.globl sbi_pmu_counter_fw_read_hi
.globl sbi_pmu_snapshot_set_shmem
.globl sbi_pmu_event_get_info

# 0
# struct sbiret sbi_pmu_num_counters()
sbi_pmu_num_counters:
    li      a7, eid_pmu
    li      a6, 0
    ecall
    ret

# 1
# struct sbiret sbi_pmu_counter_get_info(unsigned long counter_idx)
sbi_pmu_counter_get_info:
    li      a7, eid_pmu
    li      a6, 1
    ecall
    ret

# 2
# struct sbiret sbi_pmu_counter_config_matching(unsigned long counter_idx_base, unsigned long counter_idx_mask, unsigned long config_flags, unsigned long event_idx, uint64_t event_data)
sbi_pmu_counter_config_matching:
    li      a7, eid_pmu
    li      a6, 2
    ecall
    ret

# 3
# struct sbiret sbi_pmu_counter_start(unsigned long counter_idx_base, unsigned long counter_idx_mask, unsigned long start_flags, uint64_t initial_value)
sbi_pmu_counter_start:
    li      a7, eid_pmu
    li      a6, 3
    ecall
    ret

# 4
# struct sbiret sbi_pmu_counter_stop(unsigned long counter_idx_base, unsigned long counter_idx_mask, unsigned long stop_flags)
sbi_pmu_counter_stop:
    li      a7, eid_pmu
    li      a6, 4
    ecall
    ret

# 5
# struct sbiret sbi_pmu_counter_fw_read(unsigned long counter_idx)
sbi_pmu_counter_fw_read:
    li      a7, eid_pmu
    li      a6, 5
    ecall
    ret

# 6
# struct sbiret sbi_pmu_counter_fw_read_hi(unsigned long counter_idx)
sbi_pmu_counter_fw_read_hi:
    li      a7, eid_pmu
    li      a6, 6
    ecall
    ret

# 7
# struct sbiret sbi_pmu_snapshot_set_shmem(unsigned long shmem_phys_lo, unsigned long shmem_phys_hi, unsigned long flags)
sbi_pmu_snapshot_set_shmem:
    li      a7, eid_pmu
    li      a6, 7
    ecall
    ret

# 8
# struct sbiret sbi_pmu_event_get_info(unsigned long shmem_phys_lo, unsigned long shmem_phys_hi)
sbi_pmu_event_get_info:
    li      a7, eid_pmu
    li      a6, 8
    ecall
    ret

