import re

print "date\tofficial_sunrise\tofficial_sunset"

p = re.compile(r'^\d{2}  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4})  ([0-9 ]{4}) ([0-9 ]{4}).*$')

times = []
with open("crick_official.html") as f:
  for line in f:
    m = p.match(line)
    if m:
      times.append(m.groups())

year = 2014
for month in range(12):
  for date in range(31):
    sunrise, sunset = times[date][2 * month], times[date][2 * month + 1]
    if sunrise.strip():
      print '{0:0>2}/{1:0>2}/{2}\t{3}:{4}\t{5}:{6}'.format((date+1), (month+1), year%100, sunrise[0:2], sunrise[2:4], sunset[0:2], sunset[2:4])
