#source files.
SRC =   $(wildcard *.cpp)

OBJ = $(SRC:.cpp=.o)

OUT = libuchardet.a

.SUFFIXES: .cpp


.cpp.o:
	$(CXX) $(CXXFLAGS) -I. -c $< -o $@

$(OUT): $(OBJ)
	$(AR) cr $(OUT) $(OBJ)
	$(RANLIB) $(OUT)

clean:
	rm -f $(OBJ) $(OUT) 
