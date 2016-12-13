#mm-link trace10 trace10 --uplink-queue=droptail --downlink-queue=infinite --uplink-queue-args="packets=10000"
mm-delay $1 mm-link $2 $2 --uplink-queue=pie --downlink-queue=infinite --uplink-queue-args="packets=300, qdelay_ref=$4, max_burst=1" ./start.sh $3 #xterm -e "cd ../rl-qm/mahimahiSocketInterfaceSingleLoop; python RLMahimahiInterface.py 100.64.0.4" &
#mm-link trace10 trace10 --uplink-queue=infinite --downlink-queue=pie --downlink-queue-args="packets=300, qdelay_ref=50, max_burst=1" mm-delay 10

