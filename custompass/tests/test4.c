#include<stdlib.h>
int *x, *y, u,v;
int main(){
	y = &u;
	x = malloc(sizeof(int));
	if(y>0)
	{
		x=malloc(sizeof(int));
	}
	else{
		x=malloc(sizeof(char));
	}
	
	return *x;
	}