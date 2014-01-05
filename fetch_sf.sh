#!/bin/bash

mkdir -p target/data
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=0&place=SanFrancisco&xx0=-1&xx1=122&xx2=26&yy0=1&yy1=37&yy2=46&zz1=8&zz0=-1&ZZZ=END' > target/data/official.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=2&place=SanFrancisco&xx0=-1&xx1=122&xx2=26&yy0=1&yy1=37&yy2=46&zz1=8&zz0=-1&ZZZ=END' > target/data/civil.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=3&place=SanFrancisco&xx0=-1&xx1=122&xx2=26&yy0=1&yy1=37&yy2=46&zz1=8&zz0=-1&ZZZ=END' > target/data/nautical.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=4&place=SanFrancisco&xx0=-1&xx1=122&xx2=26&yy0=1&yy1=37&yy2=46&zz1=8&zz0=-1&ZZZ=END' > target/data/astronomical.html
