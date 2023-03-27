#include <stdio.h>

int main(int argc, char **argv){

    if(argc > 0){
        for(int i = 0; i < 2; i++){

            printf("%d : %s\n",i , argv[i]);
        }
    }
    return 0;
}
