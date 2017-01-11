FoBiS.py build -mode shared-intel
#mkdir $PREFIX/include
mkdir $PREFIX/include/flap
# cp tests/mod/* $PREFIX/include/flap
# gfortran -shared -fPIC -o libflap.so tests/obj/flap_command_line_interface_t.o tests/obj/flap.o tests/obj/flap_command_line_arguments_group_t.o tests/obj/flap_command_line_argument_t.o tests/obj/flap_object_t.o tests/obj/flap_utils_m.o tests/obj/penf.o 
cp shared/libflap.so $PREFIX/lib
cp shared/mod/* $PREFIX/include/flap
