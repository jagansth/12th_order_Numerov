FC=gfortran -c
LD=gfortran
SRC=params.f90 allocatearrays.f90 deallocatearrays.f90 sch12thorder.f90
OBJ=params.o allocatearrays.o deallocatearrays.o sch12thorder.o
schrodinger:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o sch12thorder.x -llapack -lblas
	rm -rf *.o
clean:
	rm -rf *.o *.mod *.x *.dat
        
