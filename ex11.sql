PRAGMA foreign_keys=ON;

CREATE TABLE Date(
    dateRep VARCHAR(10) PRIMARY KEY,
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE LocationCode(
    "geoId" VARCHAR(5) PRIMARY KEY,
    "countryterritoryCode" VARCHAR(5),
    "popData2018" INTEGER,
    "continentExp" VARCHAR(255)
);

CREATE TABLE Location(
   "countriesAndTerritories" VARCHAR(255) PRIMARY KEY,
    "geoID" VARCHAR(5) constraint LocationID_fk 
);

CREATE TABLE Statistics(
    "dateRep" VARCHAR(10),
    "cases" INTEGER,
    "deaths" INTEGER,
    "countriesAndTerritories" VARCHAR(255),
    PRIMARY KEY(dateRep, countriesAndTerritories)
);

CREATE INDEX date_index
ON Date (dateRep);

