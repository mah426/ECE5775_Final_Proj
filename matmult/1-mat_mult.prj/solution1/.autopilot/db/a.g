#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
