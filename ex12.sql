INSERT INTO Date (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year FROM dataset;

INSERT INTO LocationCode (countryterritoryCode, popData2018)
SELECT DISTINCT countryterritoryCode, popData2018 FROM dataset;

INSERT INTO Location (countriesAndTerritories, geoID, countryterritoryCode, continentExp)
SELECT DISTINCT countriesAndTerritories, geoID, countryterritoryCode, continentExp FROM dataset;

INSERT INTO Statistics (dateRep, countriesAndTerritories, deaths, cases)
SELECT DISTINCT dateRep, countriesAndTerritories, deaths, cases FROM dataset;