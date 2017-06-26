dir=`pwd`
gdb_path=/local/mcu/gcc-arm-none-eabi-5_2-2015q4/bin/

export PATH=$dir/src:$PATH
export OPENOCD_SCRIPTS=$dir/tcl

function gdb_connect() {
$gdb_path/arm-none-eabi-gdb -ex "target remote localhost:3333" $1
}

function stm32_flsh {
pkill openocd
openocd -s $OPENOCD_SCRIPTS -f stm32"$1".cfg -c "stm_flash $2"
}
function stm32_flsh_addr {
pkill openocd
openocd -s $OPENOCD_SCRIPTS -f stm32"$1".cfg -c "stm_flash_addr $2 $3"
}


function stm32_dbg {
pkill openocd
openocd -s $OPENOCD_SCRIPTS -f  stm32"$1".cfg  &
gdb_connect "$2"
}

