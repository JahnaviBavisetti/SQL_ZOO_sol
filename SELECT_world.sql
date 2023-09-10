#
--1.show the name, continent and population of all countries.
     SELECT name, continent, population
       FROM world;
--2. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
    SELECT name 
      FROM world
       WHERE population> = 200000000;
--3.Give the name and the per capita GDP for those countries with a population of at least 200 million.
   SELECT NAME, GDP/population
   FROM world
    WHERE population >= 200000000;
--4. Show the name and population in millions for the countries of the continent 'South America'.
Divide the population by 1000000 to get population in millions.
  SELECT name ,population/1000000 
FROM world
WHERE continent ='South America';
--5. Show the name and population for France, Germany, Italy

SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy');
--6. Show the countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name like '%united%';
--7. Show the countries that are big by area or big by population. Show name, population and area.
SELECT name,population,area
  FROM world
  WHERE area>3000000
  OR population>250000000;
--8.  Show name, population and area.
Australia has a big area but a small population, it should be included.
Indonesia has a big population but a small area, it should be included.
China has a big population and big area, it should be excluded.
United Kingdom has a small population and a small area, it should be.
  SELECT name, population, area
FROM world
WHERE (area>3000000 OR population>250000000) AND NOT(population>250000000 AND area> 3000000);
--9. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. 
Use the ROUND function to show the values to two decimal places.
  SELECT name,Round(population/1000000.00,2),ROUND(gdp/1000000000.00,2)
  FROM world
 WHERE continent='South America';
--10. Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros).
Round this value to the nearest 1000.
Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND(gdp/population,-3)
FROM world
WHERE gdp>= 1000000000000;
--11.Show the name and capital where the name and the capital have the same number of characters.
You can use the LENGTH function to find the number of characters in a string
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);
--12. Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
You can use the function LEFT to isolate the first character.
You can use <> as the NOT EQUALS operator.
  SELECT name,Capital
   FROM world
   WHERE LEFT(name,1) = LEFT(capital,1) AND name<>capital;
--13.Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.
Find the country that has all the vowels and no spaces in its name.
You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
The query shown misses countries like Bahamas and Belarus because they contain at least one 'a'
SELECT name
FROM world
WHERE LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'a', '')) >= 1
  AND LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'e', '')) >= 1
  AND LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'i', '')) >= 1
  AND LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'o', '')) >= 1
  AND LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'u', '')) >= 1
  AND name NOT LIKE '% %';


