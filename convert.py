import re

print("date\tofficial_sunrise\tofficial_sunset\tcivil_sunrise\tcivil_sunset\tnautical_sunrise\tnautical_sunset\tastronomical_sunrise\tastronomical_sunset")

p = re.compile(r'^(\d{2})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4})  ([0-9 /=]{4}) ([0-9 /=]{4}).*$')

official_times = []
civil_times = []
nautical_times = []
astronomical_times = []

with open("target/data/official.html") as f:
  for line in f:
    m = p.match(line)
    if m and len(official_times) < int(m.group(1)):
      official_times.append(m.groups()[1:])

with open("target/data/civil.html") as f:
  for line in f:
    m = p.match(line)
    if m and len(civil_times) < int(m.group(1)):
      civil_times.append(m.groups()[1:])

with open("target/data/nautical.html") as f:
  for line in f:
    m = p.match(line)
    if m and len(nautical_times) < int(m.group(1)):
      nautical_times.append(m.groups()[1:])

with open("target/data/astronomical.html") as f:
  for line in f:
    m = p.match(line)
    if m and len(astronomical_times) < int(m.group(1)):
      astronomical_times.append(m.groups()[1:])

year = 2014
for month in range(12):
  for date in range(31):
    official_sunrise, official_sunset = official_times[date][2 * month], official_times[date][2 * month + 1]
    civil_sunrise, civil_sunset = civil_times[date][2 * month], civil_times[date][2 * month + 1]
    nautical_sunrise, nautical_sunset = nautical_times[date][2 * month], nautical_times[date][2 * month + 1]
    astronomical_sunrise, astronomical_sunset = astronomical_times[date][2 * month], astronomical_times[date][2 * month + 1]
    if official_sunrise.strip():
      print('{0:0>2}/{1:0>2}/{2}\t{3}:{4}\t{5}:{6}\t{7}:{8}\t{9}:{10}\t{11}:{12}\t{13}:{14}\t{15}:{16}\t{17}:{18}'.format((date+1), (month+1), year%100, \
        official_sunrise[0:2], official_sunrise[2:4], official_sunset[0:2], official_sunset[2:4], \
        civil_sunrise[0:2], civil_sunrise[2:4], civil_sunset[0:2], civil_sunset[2:4], \
        nautical_sunrise[0:2], nautical_sunrise[2:4], nautical_sunset[0:2], nautical_sunset[2:4], \
        astronomical_sunrise[0:2], astronomical_sunrise[2:4], astronomical_sunset[0:2], astronomical_sunset[2:4]))
