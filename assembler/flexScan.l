%{

#include <math.h>
#include <string.h>
#include "variables.h"

#define NBITS_OPC 3                // #bits opcode
#define NBITS_OPR 8                // #bits operand
#define NBITS_DAT 32               // #bits data

FILE *f_data, *f_instr;

int  pp    = 1; // pre-processor flag
int  state = 0; // 0 -> search opcode, 1 -> search operand
int  c_op;      // save current opcode

void pp_opcode(int   op);
void pp_opernd(char *va, int is_const);
void eval_opcode(int   op);
void eval_opernd(char *id, int is_const);

int n_ins = 0;  // # of added instructions
int *opc, *opr;  // list of instructions

void add_instr(int opco, int oper);
void build_instr();
void build_data ();

%}

ADDRE   $[0-9]+
CONST   [-+ ][0-9]+
VARIA   [a-zA-Z][a-zA-Z0-9_]*

COMEN   "//"[^\n]*
EMPTY   [ \t]
LINHA   \n

%%

"NOP"     if (!pp) eval_opcode( 0); else pp_opcode( 0);
"STOP"    if (!pp) eval_opcode( 1); else pp_opcode( 1);
"LOAD"    if (!pp) eval_opcode( 2); else pp_opcode( 2);
"SET"     if (!pp) eval_opcode( 3); else pp_opcode( 3);
"ADD"     if (!pp) eval_opcode( 4); else pp_opcode( 4);
"MULT"    if (!pp) eval_opcode( 5); else pp_opcode( 5);

{ADDRE}   if (!pp) eval_opernd(yytext,1); else state = 0;
{CONST}   if (!pp) eval_opernd(yytext,0); else pp_opernd(yytext,1);
{VARIA}   if (!pp) eval_opernd(yytext,0); else pp_opernd(yytext,0);

{COMEN}
{EMPTY}
{LINHA}   if (state != 0) fprintf(f_instr, "ERROR: waiting operand\n");
.                         fprintf(f_instr, "Syntax ERROR: %s\n", yytext);
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

void pp_opcode(int op)
{
    if (state != 0)
    {
        printf("ERROR: waiting opcode\n");
    }

    n_ins++;

    switch (op)
    {
        case 2  : state = 1; break;
        case 3  : state = 1; break;
        case 4  : state = 1; break;
        case 5  : state = 1; break;
        default :            break;
    }
}

void pp_opernd(char *va, int is_const)
{
    if (state == 1)
    {
        if (find_var(va) == -1)
        {
            add_var(va, is_const);
            int val = (is_const) ? atoi(va) : 0;
            fprintf(f_data, "%s\n", itob(val, NBITS_DAT));
        }
    }
    else fprintf(f_instr, "ERROR: waiting operand\n");

	state = 0;
}

void eval_opcode(int op)
{
    c_op = op;

	switch (op)
    {
        case 2  : state = 1;       break;
        case 3  : state = 1;       break;
        case 4  : state = 1;       break;
        case 5  : state = 1;       break;
        default : add_instr(op,0); break;
    }
}

void eval_opernd(char *id, int is_const)
{
    int add = (is_const) ? atoi(id+1) : find_var(id);
    add_instr(c_op, add);
    state = 0;
}

void add_instr(int opco, int oper)
{
    opc[n_ins] = opco;
    opr[n_ins] = oper;
    n_ins++;
}

void build_instr()
{
    int i;

    for (i = 0; i < n_ins; i++)
    fprintf(f_instr, "%s%s\n", itob(opc[i],NBITS_OPC), itob(opr[i],NBITS_OPR));
}

int main(int argc, char *argv[])
{
    // input file
    yyin   = fopen(argv[1], "r");

    // data.mif
	f_data = fopen(argv[2], "w");
	pp = 1;
    yylex();
	fclose(yyin);
	fclose(f_data);

	opc = (int*)malloc(2*n_ins*sizeof(int));
	opr = (int*)malloc(2*n_ins*sizeof(int));

	yyin    = fopen(argv[1], "r");

    // instr.mif
	f_instr = fopen(argv[3], "w");
	pp = 0;
	n_ins = 0;
	yylex();
	build_instr();
    fclose(yyin);
	fclose(f_instr);

    return 0;
}