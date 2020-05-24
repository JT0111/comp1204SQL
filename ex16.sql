SELECT LocationCode.continentExp AS "continent", Statistics.dateRep as "date", SUM(Statistics.cases) as "number of cases", SUM(Statistics.deaths) as "number of deaths"
FROM Date INNER JOIN Statistics
On Statistics.dateRep = Date.dateRep
LEFT JOIN Location
On Statistics.countriesAndTerritories = Location.countriesAndTerritories
LEFT JOIN LocationCode
On Location.geoId = LocationCode.geoId
Group BY Statistics.dateRep, LocationCode.continentExp
Order by
Date.year ASC,
Date.month ASC,
Date.day ASC;
