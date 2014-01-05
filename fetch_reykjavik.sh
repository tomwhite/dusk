#!/bin/bash

mkdir -p target/data
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=0&place=Reykjavik&xx0=-1&xx1=21&xx2=55&yy0=1&yy1=64&yy2=8&zz1=0&zz0=-1&ZZZ=END' > target/data/official.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=2&place=Reykjavik&xx0=-1&xx1=21&xx2=55&yy0=1&yy1=64&yy2=8&zz1=0&zz0=-1&ZZZ=END' > target/data/civil.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=3&place=Reykjavik&xx0=-1&xx1=21&xx2=55&yy0=1&yy1=64&yy2=8&zz1=0&zz0=-1&ZZZ=END' > target/data/nautical.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=4&place=Reykjavik&xx0=-1&xx1=21&xx2=55&yy0=1&yy1=64&yy2=8&zz1=0&zz0=-1&ZZZ=END' > target/data/astronomical.html
