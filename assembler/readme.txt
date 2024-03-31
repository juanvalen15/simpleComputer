Instructions to generate the data.mif and instr.mif files:

flex -d flexScan.l && gcc lex.yy.c variables.c labels.c -lfl -lm -o asm2mif.o && ./asm2mif.o test.asm ../hardware/data.mif ../hardware/instr.mif &> log.txt && vim log.txt 

If a segmentation fault occurs due to the character "^M" it means that the input file test.asm needs to be updated to unix using the dos2unix tool.
