FoBiS.py build -mode shared-intel
#mkdir $PREFIX/include
mkdir $PREFIX/include/flap
cp shared/libflap.so $PREFIX/lib
cp shared/mod/* $PREFIX/include/flap
