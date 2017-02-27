for ((i=0; i<5; i=i+1)) do
timeout 300s ./TestPie.sh 20 traces/Verizon-LTE-short.up  trace14000 1 1 vm_log_raw$i
sleep 5

done
