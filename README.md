# Postgresql

DISCLAIMER: This is not meant to be used in production environment so use at your own risk.

For now, simply run the container:

```
docker run -p 5432:5432 -v $(pwd):/data --name my_db -ti ravelo/postgresql bash
```

Note: We are creating a volume so we can later on have the ability to do a data restore

manually start the Postgresql engine:

```
service postgresql start
```

Enable the extensions you need:

```
-- Enable PostGIS (includes raster)
CREATE EXTENSION postgis;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- Enable PostGIS Advanced 3D 
-- and other geoprocessing algorithms
-- sfcgal not available with all distributions
CREATE EXTENSION postgis_sfcgal;
-- fuzzy matching needed for Tiger
CREATE EXTENSION fuzzystrmatch;
-- rule based standardizer
CREATE EXTENSION address_standardizer;
-- example rule data set
CREATE EXTENSION address_standardizer_data_us;
-- Enable US Tiger Geocoder
CREATE EXTENSION postgis_tiger_geocoder;
```

and use the `postgres` username without password to login under the `5432` port.
