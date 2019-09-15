.SUFFIXES: .cpp .o

OBJECTS = main.o student_id.o print.o

CXX = g++
CPPFLAGS = -c

TARGET = test

$(TARGET) : $(OBJECTS)
	$(CXX) -o $(TARGET) $(OBJECTS)

clean :
	rm -rf $(OBJECTS) $(TARGET)

main.o : main.cpp
student_id.o : student_id.cpp student_id.h
print.o : print.cpp print.h
