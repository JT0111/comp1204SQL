PRAGMA foreign_keys=ON;

CREATE TABLE Date(
    dateRep VARCHAR(10) constraint Date_pk PRIMARY KEY,
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE LocationCode(
   "countryterritoryCode" VARCHAR(5) constraint terrCode_pk PRIMARY KEY,
    "popData2018" VARCHAR(20)
);

CREATE TABLE Location(
    "countriesAndTerritories" VARCHAR(255) CONSTRAINT country_pk PRIMARY KEY,
    "geoId" VARCHAR(3) NOT NULL,
    "countryterritoryCode" VARCHAR(5) constraint terrCode_fx references LocationCode on update cascade on delete restrict,
    "continentExp" VARCHAR(20)
);

CREATE TABLE Statistics(
    "dateRep" VARCHAR(10) constraint Stats_Date_pk references Date on update cascade on delete restrict,
    "cases" INTEGER,
    "deaths" INTEGER,
    "countriesAndTerritories" VARCHAR(255) CONSTRAINT Stats_country_pk references Location on update cascade on delete restrict,
    PRIMARY KEY(dateRep, countriesAndTerritories)
);



