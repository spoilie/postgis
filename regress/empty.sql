-- ST_SnapToGrid
SELECT 'T1.1', ST_AsEWKT(ST_SnapToGrid('POINT EMPTY', 1));
SELECT 'T1.2', ST_AsEWKT(ST_SnapToGrid('LINESTRING EMPTY', 1));
SELECT 'T1.3', ST_AsEWKT(ST_SnapToGrid('SRID=4326;POLYGON EMPTY', 1));

-- ST_Buffer
SELECT 'T2.1', ST_AsEWKT(ST_Buffer('SRID=4326;POINT EMPTY', 0));
SELECT 'T2.2', ST_AsEWKT(ST_Buffer('SRID=4326;LINESTRING EMPTY', 0));
SELECT 'T2.3', ST_AsEWKT(ST_Buffer('SRID=4326;MULTIPOLYGON EMPTY', 0));
WITH b as ( SELECT ST_Buffer('SRID=4326;MULTIPOINT EMPTY', 1) as g )
SELECT '#322.4', ST_Srid(g), GeometryType(g) from b;
