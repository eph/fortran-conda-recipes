# builds FRUIT as a shared library

# these paths specify where to put the resulting library object
# and Fortran module files:
INSTALL_DIR = $(PREFIX)/lib
INCL_DIR = $(PREFIX)/include/fruit

F90=.f90
OBJ=.o
LIB = libfruit.so
SRC = src
BUILD = $(SRC)

# compiler options:
FC = mpif90
FLAGS = -c -fpic -O3

SOURCES = $(wildcard $(SRC)/*$(F90))
OBJS = $(patsubst $(SRC)/%$(F90), $(BUILD)/%$(OBJ), $(SOURCES))

$(LIB) : $(OBJS)
	$(FC) -shared -o $(LIB) $(OBJS)

$(BUILD)/%$(OBJ): $(SRC)/%$(F90)
	$(FC) $(FLAGS) -c $< -o $@

install :
	cp $(LIB) $(INSTALL_DIR)
	cp $(BUILD)/*.mod $(INCL_DIR)
