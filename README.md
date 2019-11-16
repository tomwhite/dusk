A program to plot the time of [dusk](https://en.wikipedia.org/wiki/Dusk) over the year for any given location on the
Earth's surface. Curves for official (0° below horizon), civil (6°), nautical (12°), and astronomical (18°) dusk are
shown.

**November 2019 update: the United States Naval Observatory site used for sunrise and sunset data has been taken down until
April 2020, see https://www.researchgate.net/post/What_has_happened_to_wwwusnonavymil**

To run, first generate a data file as follows (you will need to change the lat/long parameters for other locations):

```bash
./fetch_crick.sh
python convert.py > target/data/crick.tsv
cp target/data/crick.tsv data.tsv
```

or, for San Francisco:

```bash
./fetch_sf.sh
python convert.py > target/data/sf.tsv
cp target/data/sf.tsv data.tsv
```

Next, run a local server:

```bash
python -m SimpleHTTPServer
```

then visit http://localhost:8000/ to see the plot.

=== Java version ===

There's also a Java version, which may not be quite as accurate.

```bash
mvn -q exec:java -Dexec.mainClass=com.tom_e_white.dusk.Dusk > data.tsv
```