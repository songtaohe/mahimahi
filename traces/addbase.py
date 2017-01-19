import sys

with open(sys.argv[1], 'r') as fin:
	ts_list = []
	for line in fin:
		ts_list.append(int(line))

	max_ts = max(ts_list)

	for i in range(1,max_ts,12):
		ts_list.append(i)

	ts_list.sort()

	with open(sys.argv[2],'w') as fout:
		for ts in ts_list:
			fout.write("%d\n" % ts)




