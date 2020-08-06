/*symlink function info:
https://www.freebsd.org/cgi/man.cgi?query=symlink&sektion=2
*/

#include <iostream>
#include <unistd.h>

#define SUCCESS 0

using namespace std;

int main(int argc, char const *argv[])
{
     if( argc < 3){
        cout<<"Espeficque los argumentos"<<endl;
        return EXIT_FAILURE;
    }

    if(!symlink(argv[1],argv[2])){
        cout<<"Link simbolico creado..."<<endl;
    }else{
        cout<<"Un error ha ocurrido"<<endl;
        return EXIT_FAILURE;
    }

    return 0;
}
