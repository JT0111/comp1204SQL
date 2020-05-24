SELECT Statistics.dateRep AS "date", Statistics.cases as "number of cases"
FROM Statistics INNER JOIN Date
On Statistics.dateRep = Date.dateRep
Where Statistics.countriesAndTerritories = 'United_Kingdom'
Order by
Date.year ASC,
Date.month ASC,
Date.day ASC;
