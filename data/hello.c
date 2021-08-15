#include <stdio.h>
#include <string.h>

void weird(void) {
  printf("ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn\n");
  return;
}

void hello(char *name) {
  char buffer[10];
  strcpy(buffer, name);
  printf("Hello, %s!\n", buffer);
  return;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    printf("Usage: %s <your name>\n", argv[0]);
    return 1;
  }
  printf("This program is going to greet you.\n");
  hello(argv[1]);
  printf("You have been greeted.\n");
  return 0;
}
