# DataCamp - Intro to SQL for Data Science

-- 1 SELECTING COLUMNS
----------------------

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

-- 2 FILTERING ROWS
----------------------

-- Simple filtering of numeric values
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

--WHERE AND OR (2)
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
