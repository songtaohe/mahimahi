import sys

with open(sys.argv[3], 'r') as fin:
	ts_list = []
	start = int(sys.argv[1])
	end = int(sys.argv[2])

	for line in fin:
		if (start <= int(line) )and (end >= int(line)):
			ts_list.append(int(line))


	for i in range(len(ts_list)):
		ts_list[i] = ts_list[i] - start + 1

	with open(sys.argv[4],'w') as fout:
		for ts in ts_list:
			fout.write("%d\n" % ts)




