# SQL_ZOO_sol
#SELECT basics
#Introducing the world table of countries
--1. Show the population of Germany
SELECT population 
  FROM world
  WHERE name = 'Germany';

#Scandinavia
--2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population
  FROM world
  WHERE name IN ('Norway',
                 'Denmark', 'Sweden');
 

--3.show the country and the area for countries with an area between 200,000 and 250,000
SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000
