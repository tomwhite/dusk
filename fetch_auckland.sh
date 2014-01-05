#!/bin/bash

mkdir -p target/data
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=0&place=Auckland&xx0=1&xx1=174&xx2=46&yy0=-1&yy1=36&yy2=52&zz1=12&zz0=1&ZZZ=END' > target/data/official.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=2&place=Auckland&xx0=1&xx1=174&xx2=46&yy0=-1&yy1=36&yy2=52&zz1=12&zz0=1&ZZZ=END' > target/data/civil.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=3&place=Auckland&xx0=1&xx1=174&xx2=46&yy0=-1&yy1=36&yy2=52&zz1=12&zz0=1&ZZZ=END' > target/data/nautical.html
curl 'http://aa.usno.navy.mil/cgi-bin/aa_rstablew.pl?FFX=2&xxy=2014&type=4&place=Auckland&xx0=1&xx1=174&xx2=46&yy0=-1&yy1=36&yy2=52&zz1=12&zz0=1&ZZZ=END' > target/data/astronomical.html
