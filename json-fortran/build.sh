./build.sh
mkdir -p $PREFIX/include/json-fortran
cp lib/{*.mod,*.o} $PREFIX/include/json-fortran
mkdir -p $PREFIX/lib/json-fortran
cp lib/*.a $PREFIX/lib/json-fortran
