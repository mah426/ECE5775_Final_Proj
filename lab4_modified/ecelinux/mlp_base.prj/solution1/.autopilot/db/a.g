#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/nrb74/ece5775/ECE5775_Final_Proj/lab4_modified/ecelinux/mlp_base.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
