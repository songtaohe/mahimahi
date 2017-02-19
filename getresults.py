import sys
import code
import os
from subprocess import Popen


def GetNumber(filename):
	return [float(x) for x in os.popen("cat %s | cut -d: -f2 | awk '{print $1}'" % filename).read().split()]




with open(sys.argv[1], "w") as f:
	for log in sys.argv[2:]:
		cmd = "mm-throughput-graph 500 %s 2> tmp" % log
		Popen(cmd, shell=True).wait()
		result = GetNumber("tmp")
		f.write("%s %f %f %f %f %f\n" % (log, result[0], result[1], result[2], result[3], result[1]/result[3]*1000.0))
		print(log, result)
