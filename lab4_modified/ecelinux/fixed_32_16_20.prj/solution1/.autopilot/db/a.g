#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/qs73/ece5775/b_qi2/ECE5775_Final_Proj/lab4_modified/ecelinux/fixed_32_16_20.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
