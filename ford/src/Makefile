# FORT?=ifort
FORT?=gfortran
main: kinds_mod.F90 types_mod.F90 classes_mod.F90 int_class_submod.F90 real_class_submod.F90 a_mod.F90 main.F90
	$(FORT) -c $? 
	$(FORT) -o $@ *.o 

clean:
	rm main *.o *.mod *.smod
