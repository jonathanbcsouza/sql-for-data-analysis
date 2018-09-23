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

