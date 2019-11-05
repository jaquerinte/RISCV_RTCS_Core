#!/bin/bash
# remove the last base one
rm -rf modules_base
# move the old one to base
mv modules modules_base

# compile de skeletor code
./bin/sk_compiler modules_rdn_cache.sk -d modules -t -v -i -a
# copy testbenchs from old
cp -f modules_base/tb/verilator/*.sh modules/tb/verilator
cp -f modules_base/tb/verilator/*.cpp modules/tb/verilator
cp -f modules_base/tb/verilator/*.gtkw modules/tb/verilator
