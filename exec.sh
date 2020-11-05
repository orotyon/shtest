. ./config

### start function ###
is_dir () {
	if [ -d $1 ]; then return 0;else echo "error: $1 not found";return 1;fi
}
out_csv() {
	echo "mysql csv output"
}
exec_job() {
	echo "job script read"
}

### e n d function ###

# print dirs
# echo BASE_DIR = ${BASE_DIR}
# echo SCRIPT_DIR = ${SCRIPT_DIR}
# echo CONFIG_DIR = ${CONFIG_DIR}
echo OUTPUT_DIR = ${OUTPUT_DIR}

# check dirs
is_dir ${BASE_DIR};r1=$?
is_dir ${SCRIPT_DIR};r2=$?
is_dir ${OUTPUT_DIR};r3=$?
is_dir ${CONFIG_DIR};r4=$?
if [ `expr ${r1} + ${r2} + ${r3} + ${r4}` -ne 0 ];then exit 1;fi

# check args[]
if [ $# -lt 1 ];then echo "Set Arguments Ex: exec.sh sjob1 sjob2....";exit 1;fi

for i in `seq 1 ${#}`
do
	echo ${i}
done
