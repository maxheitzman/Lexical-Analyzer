CC = gcc #wherever $(CC) we gonna replace it the the gnu C compiler////this allows for easier modifications so i can look back on this
CFLAGS = -Wall -std=c11 #compiles under gcc with -std=c11 ////also gives the flags warnings
TARGET = cooke_analyzer #variable assigment-wherever $(TARGET) is used it means cook_analzyzer is used
SRC = LexicalAnalyzer.c #source file or main C file being refered for $(SRC)

all: $(TARGET) #whenver make is used or ran ut builds whatver is in $(TARGET)

#below has the actual comand line that compiles the program implmenting TARGET and CC 
#it builds the cook_analzyer program from the source file which is SRC or LexicalAnalyzer....
#think of -o as output to which will name the file the compiler will create
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) 

#allows us to use make clean
#rm rmeobes file
#-f forces deletions
#*.o removes all files ending in .o or all object files
clean:
	rm -f $(TARGET) *.o
