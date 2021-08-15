#include <stdio.h>

void main() {
  int t = 1;
  int s1 = 18;
  int s2 = 19;
  for (;;t++) {
    fprintf(stderr,"%x\n",t);
    putchar(
        ( 
         -t%20 
         + (
           t * 7 & t >> 5
           | t * (4 - (( t>> s2) & 0xF)) & t >> 9
           | t * 3 & t >> 8
           | t * (5 + (( t>> s1) & 0xFF)) & t >> 4
           )
         ^ (t%33) & (t%333)
         | t >> 5 
         | t >> 6 & (-t)
        )
        );
  }
}

