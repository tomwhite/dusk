#!/bin/bash

mkdir -p target/data
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=0&place=Crickhowell&xx0=-1&xx1=3&xx2=8&yy0=1&yy1=51&yy2=51&zz1=0&zz0=-1&ZZZ=END' > target/data/official.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=2&place=Crickhowell&xx0=-1&xx1=3&xx2=8&yy0=1&yy1=51&yy2=51&zz1=0&zz0=-1&ZZZ=END' > target/data/civil.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=3&place=Crickhowell&xx0=-1&xx1=3&xx2=8&yy0=1&yy1=51&yy2=51&zz1=0&zz0=-1&ZZZ=END' > target/data/nautical.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=4&place=Crickhowell&xx0=-1&xx1=3&xx2=8&yy0=1&yy1=51&yy2=51&zz1=0&zz0=-1&ZZZ=END' > target/data/astronomical.html
