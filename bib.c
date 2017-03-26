#include <stdio.h>
#include "bib.h"

void wyswietl(int argc, char* argv[]){

	int i;
	for(i=1; i<argc; i++){

		printf("arg %d: %s\n",i,  argv[i]);

	}

}
