# FORT?=ifort
FORT?=gfortran
main: kinds_mod.f08 types_mod.f08 classes_mod.f08 int_class_submod.f08 real_class_submod.f08 a_mod.f08 main.f08
	$(FORT) -cpp -c $? 
	$(FORT) -o $@ *.o 

clean:
	rm main *.o *.mod *.smod
