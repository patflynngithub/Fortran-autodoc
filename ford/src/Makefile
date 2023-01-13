# FORT?=ifort
FORT?=gfortran
main.exe: a_module.F90 main.F90
	$(FORT) -c a_module.F90 main.F90
	$(FORT) -o main a_module.o main.o


# main.exe: types_mod.F90 types_submod.F90 a_module.F90 main.F90
#	$(FORT) -c types_mod.F90 types_submod.F90 a_module.F90 main.F90
#	$(FORT) -o main types_mod.o types_submod.o a_module.o main.o

clean:
	rm main *.o *.mod *.smod
