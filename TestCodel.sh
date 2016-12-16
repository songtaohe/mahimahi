#mm-link trace10 trace10 --uplink-queue=droptail --downlink-queue=infinite --uplink-queue-args="packets=10000"
mm-delay $1 mm-link $2 $3 --uplink-queue=codel --downlink-queue=infinite --uplink-queue-args="packets=1000000, target=$5, interval=$6" ./start.sh $4
#mm-link trace10 trace10 --uplink-queue=infinite --downlink-queue=pie --downlink-queue-args="packets=300, qdelay_ref=50, max_burst=1" mm-delay 10

