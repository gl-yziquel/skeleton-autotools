#include <stdio.h>

#include "config.h"

int main (void)
{
  printf("Package: %s\n", PACKAGE_STRING);
  printf("This is an executable built with a skeletal GNU autotools build "
         "system.\n");
  printf("\n");
  return 0;
}
