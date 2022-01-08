---
title: Three New Bytebeat Tunes
author: Olivia Lucca Fraser
date: 2019-12-12
tags: [music, bytebeat]
abstract: There's three of them, and they're new.
---

Getting back into composing
[bytebeat tunes](/posts/defrag-0.md#drone), 
lately, and I'm pretty happy with
how these two turned out:

# Chitauri Teeth

This one's a refinement of [drone.c](/posts/defrag-0.md#drone), and I
think it's a significant improvement. I let GPT-2 name it (and the
next one as well). 


```
#include <stdio.h>

void main() {
  int t = 1;
  for (;;t++) {
    fprintf(stderr, "t = 0x%x\n", t);
    putchar(
        0xfa
        & ((
            (t 
             & t >> 6
             & ((t % (1 << 14)) < (1 << 13)? 
               t ^ t >> 8
               : t >> 8) 
             / (t <= 0? 1 : (1 + t % 32))
             ^ (t % 30)
            )
            | (((t >> 18) && (t <= (1 << 18) + (1 << 17))) * t << 1)
           )
          + ((t * (t >> 18)) & 0xe0)
          | ((t / 10) & (t >> 14) & (t >> 15) & 0xaa)
          )
        );
  }
}
```



<audio controls>
  <source src="/data/bb/drone/drone.flac" type="audio/flac">
  <source src="/data/bb/drone/drone.wav" type="audio/wav"> 
  Your browser does not support the audio element.
</audio>


# A Tangerine Arm for Piercing

```
#include <stdio.h>

void main() {
  int t = 1;
  int s1 = 18;
  int s2 = 19;
  for (;;t++) {
    fprintf(stderr,"0x%x\n",t);
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
```

<audio controls>
  <source src="/data/bb/fawn/fawn.flac" type="audio/flac">
  <source src="/data/bb/fawn/fawn.wav" type="audio/wav"> 
  Your browser does not support the audio element.
</audio>

# And Who But

What got me tinkering with this sort of thing, again, was that my friend Andrew
Glencross, operating under the name 
[Pale Son](https://paleson.bandcamp.com/), had dug up one of my earlier
attempts at bytebeat -- a wav file just labelled "marm", for which I've either
misplaced or overwritten the code, and produced
[this really interesting piece](https://paleson.bandcamp.com/track/and-who-but), layering his own ethereal electric organ work overtop the bytebeat, and
weaving in elements of Greensleeves. 

<audio controls>
  <source src="/data/bb/Pale_Son-And_Who_But.flac" type="audio/flac">
  Your browser does not support the audio element.
</audio>

