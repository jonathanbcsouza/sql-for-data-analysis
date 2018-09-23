# DataCamp - Intro to SQL for Data Science

-- Part 1 SELECTING COLUMNS
---------------------------

-- Onboarding | Tables
	select *
	from people

-- Onboarding | Query Result
	select *
	from people

-- Onboarding | Errors
	SELECT 'DataCamp <3 SQL'
	AS result;

-- Onboarding | Bullet Exercises
	SELECT 'SQL'
	AS result;

	#Now change 'SQL' to 'SQL is' and click Submit!
	SELECT 'SQL is'
	AS result;

	#Finally, change 'SQL is' to 'SQL is cool!' and click Submit!
	SELECT 'SQL is cool!'
	AS result;

-- SELECTing single columns
	#Select the title column from the films table.
	SELECT title
	FROM films;

	#Select the release_year column from the films table.
	SELECT release_year
	FROM films;

	#Select the name of each person in the people table.
	SELECT name
	FROM people;

-- SELECTing multiple columns
	#Get the title of every film from the films table.
	SELECT title FROM films;

	#Get the title and release year for every film.
	SELECT title, release_year
	FROM films;

	#Get the title, release year and country for every film.
	SELECT title, release_year, country
	FROM films;

	#Get all columns
	FROM films;

-- SELECT DISTINCT
	#Get all the unique countries represented in the films table.
	SELECT DISTINCT country FROM films;

	#Get all the different film certifications from the films table.
	SELECT DISTINCT certification FROM films;

	#Get the different types of film roles from the roles table.
	SELECT DISTINCT role FROM roles;

-- Learning to COUNT
	#How many records are contained in the reviews table?
	SELECT COUNT(*)
	FROM reviews;

-- Practice with COUNT
	#Count the number of rows in the people table.
	SELECT COUNT(*)
	FROM people;

	#Count the number of (non-missing) birth dates in the people table.
	SELECT COUNT(birthdate)
	FROM people;

	#Count the number of unique birth dates in the people table.
	SELECT COUNT(DISTINCT birthdate)
	FROM people;

	#Count the number of unique languages in the films table.
	SELECT COUNT(DISTINCT language)
	FROM films;

	#Count the number of unique countries in the films table.
	SELECT COUNT(DISTINCT country)
	FROM films;

#Part 2 FILTERING ROWS
----------------------

--  Simple filtering of numeric values
	#Get all details for all films released in 2016.
	SELECT *
	FROM films
	WHERE release_year = 2016;

	#Get the number of films released before 2000.
	SELECT COUNT(*)
	FROM films
	WHERE release_year < 2000;

	#Get the title and release year of films released after 2000.
	SELECT *
	FROM films
	WHERE release_year > 2000;

-- Simple filtering of text
	#Get all details for all French language films.
	SELECT *
	FROM films
	WHERE language = 'French';

	#Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!
	SELECT *
	FROM people
	WHERE birthdate = '1974-11-11';

	#Get the number of Hindi language films.
	SELECT COUNT(language)
	FROM films
	WHERE language = 'Hindi';

	#Get all details for all films with an R certification.
	SELECT *
	FROM films
	WHERE certification = 'R';

-- WHERE AND
	#Get the title and release year for all Spanish language films released before 2000.
	SELECT title, release_year
	FROM films
	WHERE language = 'Spanish' and release_year < 2000

	#Get all details for Spanish language films released after 2000.
	SELECT *
	FROM films
	WHERE language = 'Spanish' and release_year > 2000

	#Get all details for Spanish language films released after 2000, but before 2010.
	SELECT *
	FROM films
	WHERE language = 'Spanish' and release_year > 2000 and release_year < 2010

-- WHERE AND OR (2)
	#Get the title and release year for films released in the 90s.
	SELECT title, release_year
	FROM films
	WHERE release_year >= 1990 AND release_year <2000

	#Now, build on your query to filter the records to only include French or Spanish language films.
	SELECT title, release_year
	FROM films
	WHERE (release_year >= 1990 AND release_year <2000)
	AND (language = 'French' OR language = 'Spanish');

	#Finally, restrict the query to only return films that took in more than $2M gross.
	SELECT title, release_year
	FROM films
	WHERE (release_year >= 1990 AND release_year <2000)
	AND (language = 'French' OR language = 'Spanish')
	AND gross > 2000000;

-- BETWEEN (2)
	#Get the title and release year of all films released between 1990 and 2000 (inclusive).
	SELECT title, release_year
	FROM films
	WHERE release_year BETWEEN 1990 AND 2000;

	#Now, build on your previous query to select only films that have budgets over $100 million.
	SELECT title, release_year
	FROM films
	WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000;

	#Now restrict the query to only return Spanish language films.
	SELECT title, release_year
	FROM films
	WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND language = 'Spanish';

	#Finally, modify to your previous query to include all Spanish language or French language films with the same criteria as before. Don't forget your parentheses!
	SELECT title, release_year
	FROM films
	WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'Spanish' OR language = 'French');

-- WHERE IN
	#Get the title and release year of all films released in 1990 or 2000 that were longer than two hours. Remember, duration is in minutes!
	SELECT title, release_year
	FROM films
	WHERE release_year IN(1990, 2000)
	AND duration > 120;

	#Get the title and language of all films which were in English, Spanish, or French.
	SELECT title, language
	FROM films
	WHERE language IN('English', 'Spanish', 'French');

	#Get the title and certification of all films with an NC-17 or R certification.
	SELECT title, certification
	FROM films
	WHERE certification IN('NC-17', 'R');

-- NULL and IS NULL
	#Get the names of people who are still alive, i.e. whose death date is missing.
	SELECT name, deathdate
	FROM people
	WHERE deathdate IS null;

	#Get the title of every film which doesn't have a budget associated with it.
	SELECT title
	FROM films
	WHERE budget IS null;

	#Get the number of films which don't have a language associated with them.
	SELECT COUNT(*)
	FROM films
	WHERE language IS NULL;

-- LIKE and NOT LIKE
	#Get the names of all people whose names begin with 'B'. The pattern you need is 'B%'.
	SELECT name
	FROM people
	WHERE name LIKE 'B%'

	#Get the names of people whose names have 'r' as the second letter. The pattern you need is '_r%'.
	SELECT name
	FROM people
	WHERE name LIKE '_r%'

	#Get the names of people whose names don't start with A. The pattern you need is 'A%'.
	SELECT name
	FROM people
	WHERE name NOT LIKE 'A%'

#Part 3 AGGREGATE FUNCTIONS
---------------------------

-- Aggregate functions
	#Use the SUM function to get the total duration of all films.
	SELECT SUM (duration)
	FROM films;

	#Get the average duration of all films.
	SELECT AVG (duration)
	FROM films;

	#Get the duration of the shortest film.
	SELECT MIN (duration)
	FROM films;

	#Get the duration of the longest film.
	SELECT MAX (duration)
	FROM films;

-- Aggregate functions practice
	#Use the SUM function to get the total amount grossed by all films.
	SELECT SUM (gross)
	FROM films

	#Get the average amount grossed by all films.
	SELECT AVG (gross)
	FROM films

	#Get the amount grossed by the worst performing film.
	SELECT MIN (gross)
	FROM films

	#Get the amount grossed by the best performing film.
	SELECT MAX (gross)
	FROM films

-- Combining aggregate functions with WHERE
	#Use the SUM function to get the total amount grossed by all films made in the year 2000 or later.
	SELECT SUM(gross)
	FROM films
	WHERE release_year >= 2000;

	#Get the average amount grossed by all films whose titles start with the letter 'A'.
	SELECT AVG(gross)
	FROM films
	WHERE title LIKE 'A%'

	#Get the amount grossed by the worst performing film in 1994.
	SELECT MIN(gross)
	FROM films
	WHERE release_year = 1994;

	#Get the amount grossed by the best performing film between 2000 and 2012, inclusive.
	SELECT MAX(gross)
	FROM films
	WHERE release_year BETWEEN 2000 AND 2012;

-- A note on arithmetic
	#What is the result of SELECT (10 / 3);?
	SELECT (10 / 3) AS result;

--It's AS simple AS aliasing
	# Get the title and net profit (the amount a film grossed, minus its budget) for all films. Alias the net profit as net_profit.
	SELECT title, (gross - budget) AS net_profit
	FROM films;

	#Get the title and duration in hours for all films. The duration is in minutes, so you'll need to divide by 60.0 to get the duration in hours. Alias the duration in hours as duration_hours
	SELECT title,duration/60.0 AS duration_hours
	FROM films;

	#Get the average duration in hours for all films, aliased as avg_duration_hours.
	SELECT AVG(duration)  / 60.0 AS avg_duration_hours
	FROM films;

--Even more aliasing
	#Get the percentage of people who are no longer alive. Alias the result as percentage_dead. Remember to use 100.0 and not 100!
	-- get the count(deathdate) and multiply by 100.0
	-- then divide by count(*)
	SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
	FROM people

	#Get the number of years between the newest film and oldest film. Alias the result as difference.
	SELECT MAX(release_year) - MIN(release_year) AS difference
	FROM films
	 
	#Get the number of decades the films table covers. Alias the result as number_of_decades. The top half of your fraction should be enclosed in parentheses.
	SELECT (MAX(release_year) - MIN(release_year))/10 AS number_of_decades
	FROM films
 
#Part 4 Sorting, grouping and joins
-----------------------------------

--Sorting single columns
	#Get the names of people from the people table, sorted alphabetically.
	SELECT name
	FROM people
	ORDER BY name

	#Get the names of people, sorted by birth date.
	SELECT name
	FROM people
	ORDER BY birthdate

	#Get the birth date and name for every person, in order of when they were born.
	SELECT name
	FROM people
	ORDER BY birthdate

--Sorting single columns (2)
	#Get the title of films released in 2000 or 2012, in the order they were released.
	SELECT title
	FROM films
	WHERE release_year IN (2000, 2012)
	ORDER BY release_year;

	#Get all details for all films except those released in 2015 and order them by duration.
	SELECT *
	FROM films
	WHERE release_year <> 2015
	ORDER BY duration;

	#Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.
	SELECT title, gross
	FROM films
	WHERE title LIKE 'M%'
	ORDER BY title;

--Sorting single columns (DESC)
	#Get the IMDB score and film ID for every film from the reviews table, sorted from highest to lowest score.
	SELECT imdb_score, film_id
	FROM reviews
	ORDER BY imdb_score DESC

	#Get the title for every film, in reverse order.
	SELECT title
	FROM films
	ORDER BY title DESC

	#Get the title and duration for every film, in order of longest duration to shortest.
	SELECT title, duration
	FROM films
	ORDER BY duration DESC

--Sorting multiple columns
	#Get the birth date and name of people in the people table, in order of when they were born and alphabetically by name.
	SELECT birthdate, name
	FROM people
	ORDER BY birthdate, name;

	#Get the release year, duration, and title of films ordered by their release year and duration.
	SELECT release_year, duration, title
	FROM films
	ORDER BY release_year, duration;

	#Get certifications, release years, and titles of films ordered by certification (alphabetically) and release year.
	SELECT certification, release_year, title
	FROM films
	ORDER BY certification, release_year;

	#Get the names and birthdates of people ordered by name and birth date.
	SELECT name, birthdate
	FROM people
	ORDER BY name, birthdate

--GROUP BY practice
	#Get the release year and count of films released in each year.
	SELECT release_year, count(*)
	FROM films
	GROUP BY release_year

	#Get the release year and average duration of all films, grouped by release year.
	SELECT release_year, AVG(duration)
	FROM films
	GROUP BY release_year

	#Get the release year and largest budget for all films, grouped by release year.
	SELECT release_year, MAX(budget)
	FROM films
	GROUP BY release_year

	#Get the IMDB score and count of film reviews grouped by IMDB score in the reviews table.
	SELECT imdb_score, COUNT(num_votes)
	FROM reviews
	GROUP BY imdb_score

--GROUP BY practice (2)
	#Get the release year and lowest gross earnings per release year.
	SELECT release_year, MIN(gross)
	FROM films
	GROUP BY release_year

	#Get the language and total gross amount films in each language made.
	SELECT language, SUM(gross)
	FROM films
	GROUP BY language

	#Get the country and total budget spent making movies in each country.
	SELECT country, SUM(budget)
	FROM films
	GROUP BY country

	#Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.
	SELECT release_year, country, MAX(budget)
	FROM films
	GROUP BY release_year, country
	ORDER BY release_year, country

	#Get the country, release year, and lowest amount grossed per release year per country. Order your results by country and release year.
	SELECT country, release_year, MIN(gross)
	FROM films
	GROUP BY release_year, country
	ORDER BY country, release_year

--HAVING a great time
	#In how many different years were more than 200 movies released?
	SELECT release_year
	FROM films
	GROUP BY release_year
	HAVING COUNT(release_year) > 200;

--All together now
	#Get the release year, budget and gross earnings for each film in the films table.
	SELECT release_year, budget, gross
	FROM films

	#Modify your query so that only records with a release_year after 1990 are included.
	SELECT release_year, budget, gross
	FROM films
	WHERE release_year > 1990

	#Remove the budget and gross columns, and group your results by release year.
	SELECT release_year
	FROM films
	GROUP BY release_year
	HAVING release_year > 1990

	#Modify your query to include the average budget and average gross earnings for the results you have so far. Alias the average budget as avg_budget; alias the average gross earnings as avg_gross.
	SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
	FROM films
	GROUP BY release_year
	HAVING release_year > 1990

	#Modify your query so that only years with an average budget of greater than $60 million are included.
	SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
	FROM films
	GROUP BY release_year
	HAVING AVG(budget) > 60000000

	#Finally, modify your query to order the results from highest average gross earnings to lowest.
	SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
	FROM films
	GROUP BY release_year
	HAVING AVG(budget) > 60000000
	ORDER BY AVG(gross) DESC;

--All together now (2)
	#Get the country, average budget, and average gross take of countries that have made more than 10 films. Order the result by country name, and limit the number of results displayed to 5. You should alias the averages as avg_budget and avg_gross respectively.
	-- select country, average budget, average gross
	SELECT country, AVG(budget) as avg_budget, AVG(gross) as avg_gross
	-- from the films table
	FROM films
	-- group by country 
	GROUP BY country
	-- where the country has more than 10 titles
	HAVING COUNT(title) > 10
	-- order by country
	ORDER BY country LIMIT 5
	-- limit to only show 5 results

--A taste of things to come
#Submit the code in the editor and inspect the results.
SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';


