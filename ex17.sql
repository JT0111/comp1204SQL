SELECT
Statistics.countriesAndTerritories AS "country",
SUM(Statistics.cases) * 100.0/ LocationCode.popData2018 AS "% cases of population",
SUM(Statistics.deaths) *100.0 / LocationCode.popData2018 AS "% deaths of population"
FROM Date INNER JOIN Statistics
On Statistics.dateRep = Date.dateRep
LEFT JOIN Location
On Statistics.countriesAndTerritories = Location.countriesAndTerritories
LEFT JOIN LocationCode
On Location.geoId = LocationCode.geoId
Group BY Statistics.countriesAndTerritories;
