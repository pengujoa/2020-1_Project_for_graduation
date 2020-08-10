#!/bin/sh
help() {
    echo "[NVML.sh] - get gpu info using 'NVML'"
    echo "USAGE:"
    echo "\tsudo sh NVML.sh -[opt] [value]\n"
    echo "OPTIONS:"
    echo "\t-o [FILENAME]\t(flowdump log Output filename)"
    echo "\t-s [SLEEPTIME]\t(Time interval, default : 1s)"
    echo "\t-g [GREP]\t(GREP String)"
    echo "\t-h \t\t(Help Message)"
    exit 0
}
while getopts "o:s:g:h" opt
do
    case $opt in
        o) FILENAME=$OPTARG
          ;;
        s) SLEEPTIME=$OPTARG
          ;;    
        g) GREP=$OPTARG
          ;;
        h) help ;;
        ?) help ;;
    esac
done
SLEEPTIME=${SLEEPTIME:-0.1};
GREP=${GREP:-"java"};
FILENAME=${FILENAME:-"ps_gpu.txt"};

echo "\$SLEEPTIME:"$SLEEPTIME
#echo "\$GREP:"$GREP
echo "\$FILENAME:"$FILENAME
while true
do
    #date +%H:%M:%S.%N;
    #ps -e -o user,pid,pcpu,pmem,cmd | grep $GREP;
    #echo '\n\n';
    /mxnet/log/ps/NVML;
    sleep $SLEEPTIME;
done >> /mxnet/log/ps/$FILENAME ;
