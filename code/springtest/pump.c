
#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

static void sig_fct1(int no);

int main(int argc, const char * argv[])
{

    printf("Waiting for Startbutton\n");
    if(signal(SIGUSR1, sig_fct1) == SIG_ERR)
    {
        printf("Cant catch SIGUSR1\n");
    }

    while (1)
        pause();
    return 0;
}


static void sig_fct1(int no)
{
    printf("Module : Pump\n");
    printf("Caught Signal\n");
    exit(0);
          
}

