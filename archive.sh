#!/usr/bin/env bash

AR="riscv64-unknown-elf-ar"

mkdir out
$AR rcs out/libsbi.a build/*.o
