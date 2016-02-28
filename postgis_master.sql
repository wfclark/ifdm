------Create species tables----
create table tick(total numeric, 
males numeric, 
females numeric, 
nymphs numeric, 
larve numeric, 
host character varying (50), 
cntry text, 
state text, 
cnty text, 
local text)

alter table county 
add column total numeric, 
add column males numeric, 
add column females numeric,
add column nymphs numeric,
add column larve numeric,
add column host character varying (50),
add column cnty text,
add column local text)

UPDATE county as p
SET males = pr.males
FROM tick as pr 
where p.name = pr.county;


UPDATE county as p
SET females = pr.females
FROM tick as pr 
where p.name = pr.cnty;

UPDATE county as p
SET larve = pr.larve
FROM tick as pr 
where p.name = pr.cnty;


UPDATE county as p
SET nymphs = pr.nymphs
FROM tick as pr 
where p.name = pr.cnty;

UPDATE county as p
SET total = pr.total
FROM tick as pr 
where p.name = pr.cnty;

UPDATE county as p
SET total = pr.total
FROM tick as pr 
where p.name = pr.cnty;

UPDATE county as p
SET local = pr.local
FROM tick as pr 
where p.name = pr.cnty;



---Begin vegitation table parameters-----

create table nlcd( add column county character varying (8), open_water numeric, ice_snow
numeric, developed_open numeric,  developed_low numeric, developed_med
numeric, developed_high numeric, dev_tot numeric, barren_land numeric, deciduous_forest numeric, 
evergreen_forest numeric,  mixed_forest numeric, forest_total numeric, shrub
numeric, grassland numeric,
pasture numeric, cultivated_crops numeric, woody numeric, emergent numeric)

alter table county
add column open_water numeric,
add column ice_snow numeric,
add column developed_open numeric,
add column developed_low numeric,
add column developed_med numeric,
add column developed_high numeric,
add column dev_tot numeric,
add column barren_land numeric,
add column deciduous_forest numeric,
add column evergreen_forest numeric,
add column mixed_forest numeric,
add column forest_total numeric,
add column shrub numeric,
add column grassland numeric,
add column pasture numeric,
add column cultivated_crops numeric,
add column woody numeric,
add column emergent numeric;

UPDATE county as p
SET open_water = pr.open_water
FROM nlcd as pr 
where p.countyns = pr.county;


UPDATE county as p
SET ice_snow = pr.ice_snow
FROM nlcd as pr 
where p.countyns = pr.county;


UPDATE county as p
SET developed_open = pr.developed_open
FROM nlcd as pr 
where p.countyns = pr.county;


UPDATE county as p
SET developed_low = pr.developed_low
FROM nlcd as pr 
where p.countyns = pr.county;


UPDATE county as p
SET developed_med = pr.developed_med
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET developed_med = pr.developed_high
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET dev_tot = pr.dev_tot
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET barren_land = pr.barren_land
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET deciduous_forest = pr.deciduous_forest
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET evergreen_forest = pr.evergreen_forest
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET mixed_forest = pr.mixed_forest
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET forest_total = pr.forest_total
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET shrub = pr.shrub
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET grassland = pr.grassland
FROM nlcd as pr 
where p.countyns = pr.county;


UPDATE county as p
SET pasture = pr.pasture
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET cultivated_crops = pr.cultivated_crops
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET woody = pr.woody
FROM nlcd as pr 
where p.countyns = pr.county;

UPDATE county as p
SET emergent = pr.emergent
FROM nlcd as pr 
where p.countyns = pr.county;

--Start the creation of the shapefiles for them model exposure
create table climate_temp as
select * from county 
where tave <= 13.50

create table climate_prcp as 
select * from county 
where pave >= 40;

create table deciduous_forest as 
select * from coounty
where total > 4

create table nymphs_locations as
select * from county
where nymphs >= 1;

create table males_locations as 
select * from county 
where males >= 1;

create table females_locations as
select * from county 
where females >= 1; 

create table tick_total_locations as 
select * from county
where total >= 3; 

