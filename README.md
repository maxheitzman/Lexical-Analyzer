# Lexical Analyzer

This project is a lexical analyzer written in C. It reads a source file, breaks it into lexemes, and prints out the type of each token it finds.

## Features

- Identifies keywords, identifiers, operators, symbols, and integer literals
- Flags any unrecognized characters as UNKNOWN
- Takes a file path as a command-line argument
- Output format is clean and consistent

## How to Compile

To compile the program, use the provided Makefile:

    make

Or manually:

    gcc -o cooke_analyzer John_Heitzman_R11626572_Project1.c

## How to Run

Run the compiled program with a `.dc` source file as input:

    ./cooke_analyzer input_output/test.dc

## Folder Structure

    lexical-analyzer/
    ├── John_Heitzman_R11626572_Project1.c
    ├── lexical.h
    ├── tokens.h
    ├── Makefile
    ├── README.md
    ├── input_output/
    │   ├── test.dc
    │   ├── other test files...
    └── test_outputs/
        ├── test.out
        ├── other output files...

## Example Output

If `test.dc` contains:

    f:=15;
    read(n);

The output will be:

    Cooke Analyzer :: R11626572
    f IDENT
    := ASSIGN_OP
    15 INT_LIT
    ; SEMICOLON
    read KEY_READ
    ( LEFT_PAREN
    n IDENT
    ) RIGHT_PAREN
    ; SEMICOLON

## Notes

- The program prints `Cooke Analyzer :: R11626572` at the top of the output
- If a lexeme is not recognized, it is labeled as `UNKNOWN`
- The program uses `ungetc()` for character lookahead when parsing multi-character operators

