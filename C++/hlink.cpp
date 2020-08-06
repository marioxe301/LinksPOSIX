/*link function info:
https://www.freebsd.org/cgi/man.cgi?query=link&apropos=0&sektion=2
*/

#include <iostream>
#include <unistd.h>
//crewrcwrqw
using namespace std;

int main(int argc, char const *argv[])
{
    if (argc < 3){
        cout<<"Especifique los argumentos"<<endl;
        return EXIT_FAILURE;
    }

    if(!link(argv[1],argv[2])){
        cout<<"Link Duro creado..."<<endl;
    }else{
        return EXIT_FAILURE;
    }
    return 0;
}