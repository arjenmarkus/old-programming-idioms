I want to write about the typical idioms you find in old-style FORTRAN
programs:
- What do they mean?
- What are modern equivalents?

This will typically be the common things from FORTRAN 77 onwards, but
perhaps also a wee bit about FORTRAN 66 (like one-pass loops?)

These are the keyword/subjects I am thinking about:

- array(*) versus array(:)
- array(10) as the starting point
- COMMON blocks and BLOCK DATA, named and blank COMMON
- history of computers:
   - hardware
   - memory management
   - tools like source code control systems
   - connections between computers, Internet
- equivalence
- constants as actual arguments
- intent
- temporary arrays - non-contiguous arrays
- implicit types
- double precision versus kind
- checking interfaces
- separate compilations, the misunderstanding of one routine per file
- fixed form and spaces
- standard input and output
- LU-numbers 5 and 6 (and 7)
- command-line arguments for file names
- real do-variables
- entry
- SAVE-attribute and SAVE as compiler property
- ASSIGN
- arithmetic IF
- computed GOTO
- F66: one-pass do-loops
- statement functions
- six characters
- numerical binary representations versus IEEE (IBM, Cray, Convex)
- big-endian and little-endian
- double complex
- unformatted versus binary files
- list-directed input and output - also: /
- narrow formats
- input formats with decimals - F5.1 and there is no decimal point in
  the input
- double precision :: x = 1.01 not the same as double precision :: x = 1.01d0
- use of d00 in input
- format statements
