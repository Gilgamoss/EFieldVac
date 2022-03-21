
#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

static void sig_fct1(int no);
static void sig_fct2(int no2);

int main(int argc, const char * argv[])
{

    printf("Generator: waiting for desired pressure\n");
    if(signal(SIGUSR1, sig_fct1) == SIG_ERR)
    {
        printf("Cant catch SIGUSR1\n");
    }

    if(signal(SIGUSR2, sig_fct2) == SIG_ERR)
    {
        printf("Cant catch emergency signal\n");
        
    }

    while (1)
        pause();
    return 0;
}


static void sig_fct1(int no)
{
    printf("Module : Generator\n");
    printf("Caught Signal\n");
    exit(0);
          
}

static void sig_fct2(int no2)
{
    printf("Emergency case\n");
    printf("Reset process\n");
    exit(1);

}


