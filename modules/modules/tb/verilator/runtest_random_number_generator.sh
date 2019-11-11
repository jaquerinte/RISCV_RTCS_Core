RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${RED} Modify the script if you need to set your verilator path ${NC}"
#____________start set path verilator
#export TOP=/home/bscuser/BSC/lowrisc
#export VERILATOR_ROOT=$TOP/verilator
#____________end set path verilator
rm -rf obj_dir
verilator -Wall --cc --trace ../../hdl/random_number_generator.v -I../../hdl/ --exe tb_random_number_generator.cpp -CFLAGS "-std=c++14"

cd obj_dir/
make -f Vrandom_number_generator.mk 
cd ../
./obj_dir/Vrandom_number_generator
gtkwave obj_dir/Vrandom_number_generator.vcd  test_rnd.gtkw

