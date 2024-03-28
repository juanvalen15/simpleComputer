#include "variables.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define NVARMAX 100

int  v_count = 0;
char v_name[NVARMAX][32];
int  v_val [NVARMAX];

int find_var(char *val)
{
	int i, ind = -1;

	for (i = 0; i < v_count; i++)
	{
		if (strcmp(val, v_name[i]) == 0)
		{
			ind = i;
			break;
		}
	}
	return ind;
}

void add_var(char *var, int is_const)
{
    if (v_count == NVARMAX)
    {
        printf("ERROR: number of variables > %d", NVARMAX);
    }
    else
    {
        strcpy(v_name[v_count], var);
        v_val[v_count] = (is_const) ? atoi(var) : 0;
        v_count++;
    }
}

int get_vcont()
{
    return v_count;
}
