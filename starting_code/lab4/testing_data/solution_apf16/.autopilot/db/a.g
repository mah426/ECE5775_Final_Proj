#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/mah426/ece5775/lab4/ecelinux/bnn.prj/solution3/.autopilot/db/a.g.bc ${1+"$@"}
