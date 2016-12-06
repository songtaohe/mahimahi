xterm -geometry 93x31+1300+150 -e "iperf -c 100.64.0.1 -P $1 -i 2 -t 10000" & 
xterm -geometry 93x31+2200+150 -e "ping 100.64.0.1"&
xterm -geometry 233x31+1500+650 -e "cd ../rl-qm/mahimahiSocketInterfaceSingleLoop/; python RLMahimahiInterface.py 100.64.0.4"
pkill xterm
