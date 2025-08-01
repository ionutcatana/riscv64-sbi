AS := "riscv64-unknown-elf-as"
AR := "riscv64-unknown-elf-ar"

default: archive

build:
	@mkdir -p build
	{{AS}} base.S -o build/base.o
	{{AS}} cppc.S -o build/cppc.o
	{{AS}} dbcn.S -o build/dbcn.o
	{{AS}} fwft.S -o build/fwft.o
	{{AS}} hsm.S -o build/hsm.o
	{{AS}} ipi.S -o build/ipi.o
	{{AS}} legacy.S -o build/legacy.o
	{{AS}} mpxy.S -o build/mpxy.o
	{{AS}} nacl.S -o build/nacl.o
	{{AS}} pmu.S -o build/pmu.o
	{{AS}} rfnc.S -o build/rfnc.o
	{{AS}} srst.S -o build/srst.o
	{{AS}} sse.S -o build/sse.o
	{{AS}} sta.S -o build/sta.o
	{{AS}} susp.S -o build/susp.o
	{{AS}} timer.S -o build/timer.o

archive: build
	@mkdir -p out
	{{AR}} rcs out/libsbi.a build/*.o

clean:
	@rm -rf build out
