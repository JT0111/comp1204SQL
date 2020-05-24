INSERT INTO Date (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year FROM dataset;

INSERT INTO LocationCode (geoID, countryterritoryCode, popData2018, continentExp)
SELECT DISTINCT geoID, countryterritoryCode, popData2018, continentExp FROM dataset;

INSERT INTO Location (countriesAndTerritories, geoID)
SELECT DISTINCT countriesAndTerritories, geoID FROM dataset;

INSERT INTO Statistics (dateRep, countriesAndTerritories, deaths, cases)
SELECT DISTINCT dateRep, countriesAndTerritories, deaths, cases FROM dataset;
