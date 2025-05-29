-- EDA

SELECT * FROM Athletes;

-- Total distinct Disciplines or games ----------------------------------------------------------------
SELECT COUNT(DISTINCT Discipline) FROM Athletes; -- 46 Disciplines

-- Total number of Athletes per country ---------------------------------------------------------------
SELECT Country, COUNT(DISTINCT PersonName) as no_of_players
FROM Athletes
GROUP BY Country
ORDER BY no_of_players DESC;

-- Total number of Athletes per discipline ------------------------------------------------------------
SELECT Discipline, COUNT(DISTINCT PersonName) as no_of_players
FROM Athletes
GROUP BY Discipline
ORDER BY no_of_players DESC;


SELECT * FROM Coaches;

-- Total distinct Disciplines or games ----------------------------------------------------------------
SELECT COUNT(DISTINCT Discipline) FROM Coaches; -- 9 Disciplines

-- Total number of Coaches per country ----------------------------------------------------------------
SELECT Country, COUNT(DISTINCT Name) as no_of_coaches
FROM Coaches
GROUP BY Country
ORDER BY no_of_coaches DESC;

-- Total number of Coaches per discipline -------------------------------------------------------------
SELECT Discipline, COUNT(DISTINCT Name) as no_of_coaches
FROM Coaches
GROUP BY Discipline
ORDER BY no_of_coaches DESC;

SELECT DISTINCT Event FROM Coaches;
-- Total number of players by Event -------------------------------------------------------------------
SELECT Event, COUNT(DISTINCT Name) as no_of_players
FROM Coaches
WHERE Event IS NOT NULL
GROUP BY Event
ORDER BY no_of_players DESC;

SELECT * FROM EntriesGender;

-- Average female and male players in each discipline --------------------------------------------------
SELECT Discipline, ROUND(CONVERT(FLOAT,Female)/Total,2) as avg_female_players, ROUND(CONVERT(FLOAT,Male)/Total,2) as avg_male_players, Total
FROM EntriesGender
ORDER BY Total DESC;

SELECT * FROM Medals;

-- Ranking by Total medals -----------------------------------------------------------------------------
SELECT *
FROM Medals
ORDER BY Total DESC;

-- Top 5 countries with highest gold medals ------------------------------------------------------------
SELECT TOP 5 Team_country, Gold
FROM Medals
ORDER BY Gold DESC;

-- Top 5 countries with highest silver medals ----------------------------------------------------------
SELECT TOP 5 Team_country, Silver
FROM Medals
ORDER BY Silver DESC;

-- Top 5 countries with highest bronze medals ----------------------------------------------------------
SELECT TOP 5 Team_country, Bronze
FROM Medals
ORDER BY Bronze DESC;

SELECT * FROM Teams;

-- Number of teams per discipline ----------------------------------------------------------------------
SELECT Discipline, COUNT(TeamName) as no_of_teams
FROM Teams
GROUP BY Discipline
ORDER BY no_of_teams;

-- Number of teams per Event- Men/ Women ----------------------------------------------------------------
SELECT Event, COUNT(TeamName) as no_of_teams
FROM Teams
GROUP BY Event
ORDER BY no_of_teams DESC;





