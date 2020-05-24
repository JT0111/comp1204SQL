SELECT countriesAndTerritories AS "country name",
(SUM(deaths) * 100.0)/ SUM(cases) AS "% deaths of country cases"
FROM Statistics
Group BY countriesAndTerritories
ORDER BY (SUM(deaths) * 100.0)/ SUM(cases) DESC
LIMIT 10;
