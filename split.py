from subprocess import Popen

cur = -1
with open('uplink_log','r') as f:
	for line in f:
		#print(line)
		if line.split(' ')[0] is not '#':
			ts = int(line.split(' ')[0])
			#print(ts)
			if (ts % 140000) < 10:
				print(ts // 140000)

			with open("splitlog%d" % (ts // 140000),'a') as fo:
				if cur != ts//140000:
					fo.write("# base timestamp: 37\n")
					cur = ts // 140000
				fo.write(line)
