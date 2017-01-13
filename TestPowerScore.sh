delay=20
flow=1
iperf -s &

for delay in 5 20 50
do
for flow in 1 10
do

#timeout 150s mm-delay ${delay} mm-link traces/Verizon-LTE-short.up trace14000 --uplink-queue=pie --downlink-queue=infinite --uplink-queue-args="packets=200, qdelay_ref=20, max_burst=1" --uplink-log=uplinklog/PIE${delay}ms_${flow} --meter-uplink ./iperf.sh ${flow}

echo PIE${delay}ms_${flow}
mm-throughput-graph 500 uplinklog/PIE${delay}ms_${flow} > /dev/null


done
done


for delay in 5 20 50
do
for flow in 1 10
do

#timeout 150s mm-delay ${delay} mm-link traces/Verizon-LTE-short.up trace14000 --uplink-queue=codel --downlink-queue=infinite --uplink-queue-args="packets=200, target=5, interval=100" --uplink-log=uplinklog/Codel${delay}ms_${flow} --meter-uplink ./iperf.sh ${flow}

echo Codel${delay}ms_${flow}
mm-throughput-graph 500 uplinklog/Codel${delay}ms_${flow} > /dev/null

done
done




