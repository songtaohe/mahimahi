xterm -geometry 93x31+300+150 -e "iperf -c 100.64.0.1 -i 2 -t 10000 -N" &
xterm -geometry 93x31+200+150 -e "ping 100.64.0.1"&
xterm -geometry 233x31+500+650 -hold -e "cd ../rl-qm/rl-framework/; ./run.sh 100.64.0.4" &
xterm &
xterm
pkill xterm
