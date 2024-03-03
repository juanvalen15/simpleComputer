%{

#include <math.h>
#include <string.h>

#define NBITS_OPC 3   // # bits of the opcode
#define NBITS_OPR 8   // # bits of the operand

FILE *f_instr;

int  c_op;      // store current opcode

void eval_opcode(int   op);
void eval_opernd(char *id);
void add_instr(int opco, int oper);

%}

ADDRE   $[0-9]+
EMPTY    [ \t\n]

%%

"NOP"     eval_opcode( 0);
"STOP"    eval_opcode( 1);
"LOAD"    eval_opcode( 2);
"SET"     eval_opcode( 3);
"ADD"     eval_opcode( 4);
"MULT"    eval_opcode( 5);

{ADDRE}   eval_opernd(yytext);
{EMPTY}
.         fprintf(f_instr, "Syntax error: %s\n", yytext);
%%

char *itob(int x, int w)
{
	int z;
    char *b = (char *) malloc(w+1);
    b[0] = '\0';

	int s = (w > 31) ? 31 : w;
	if (w > 31)
	for (z = 0; z < w-31; z++)
		if (x < 0) strcat(b, "1"); else strcat(b, "0");
    for (z = pow(2,s-1); z > 0; z >>= 1)
		strcat(b, ((x & z) == z) ? "1" : "0");

    return b;
}

void eval_opcode(int op)
{
    c_op = op;

	switch (op)
    {
        case 2  :                  break;
        case 3  :                  break;
        case 4  :                  break;
        case 5  :                  break;
        default : add_instr(op,0); break;
    }
}

void eval_opernd(char *id)
{
    int add = atoi(id+1);
    add_instr(c_op, add);
}

void add_instr(int opco, int oper)
{
    fprintf(f_instr, "%s%s\n", itob(opco,NBITS_OPC), itob(oper,NBITS_OPR));
}

int main(int argc, char *argv[])
{
	yyin    = fopen(argv[1], "r");
	f_instr = fopen(argv[3], "w");
	yylex();
    fclose(yyin   );
	fclose(f_instr);

    return 0;
}
