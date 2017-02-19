
for n in 1
do

#for preference in 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
#for preference in 1.2 1.4 1.6 1.8 2.0 2.5
for preference in 0.0 0.25 0.5 0.75 1.0 1.5 2.0 2.5 3.0 3.5 4.0 5.0
#preference=1.0
#for delay in 2 5 8 70 100

do
echo ${preference} > ../rl-qm/rl-framework/Preference
echo uplink_log_p_${preference}_${n} 

timeout 300s ./TestPie.sh 20 traces/Verizon-LTE-short.up trace14000 1 1 uplink_log_rl290_p_${preference}_${n} 
pkill python
sleep 5

#timeout 300s mm-delay 20 mm-link traces/Verizon-LTE-short.up trace14000  --uplink-queue=codel --downlink-queue=infinite  --uplink-log=uplink_log_codel_i20_${delay}_${n} --meter-uplink --uplink-queue-args="packets=200, target=${delay}, interval=20" ./iperf.sh 1
#pkill python
#sleep 5

#timeout 300s mm-delay 20 mm-link traces/Verizon-LTE-short.up trace14000  --uplink-queue=codel --downlink-queue=infinite  --uplink-log=uplink_log_codel_i100_${delay}_${n} --meter-uplink --uplink-queue-args="packets=200, target=${delay}, interval=100" ./iperf.sh 1
#pkill python
#sleep 5

#timeout 300s mm-delay 20 mm-link traces/Verizon-LTE-short.up trace14000  --uplink-queue=pie --downlink-queue=infinite  --uplink-log=uplink_log_pie_${delay}_${n} --meter-uplink --uplink-queue-args="packets=200, qdelay_ref=${delay}, max_burst=1" ./iperf.sh 1
#pkill python
#sleep 5


done

done
