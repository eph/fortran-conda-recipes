cp /home/eherbst/anaconda3/include/mpi.mod .
which mpif90
mpif90 -f90=ifort -c -fpic -O3 src/fruit.f90
#mpif90 -c -fpic -O3 src/fruit_mpi.f90
#mpif90 -shared -o libfruit.so fruit_mpi.o fruit.o
mpif90 -f90=ifort -shared -o libfruit.so fruit.o
cp libfruit.so $PREFIX/lib
mkdir -p $PREFIX/include/fruit
cp *.mod $PREFIX/include/fruit
