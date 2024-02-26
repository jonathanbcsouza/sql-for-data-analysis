## SQL For Data Analysis

This repo contains my solutions for the course I took from [DataCamp](https://www.datacamp.com/courses/intro-to-sql-for-data-science).

You can find all the solutions here: [intro-sql-for-data-science.sql](https://github.com/jonathanbcsouza/intro-sql-for-data-science/blob/master/Intro%20to%20SQL%20for%20Data%20Science.sql).

I have matched the structure of this repo with the structure of the course:

- Part 1 - Selecting columns
  Provided a brief introduction to working with relational databases. It taught how to begin an analysis by using simple SQL commands to select and summarize columns from database tables.

- Part 2 - Filtering rows
  This exercise taught how to filter tables for rows that meet certain criteria. I learned how to use basic comparison operators, combine multiple criteria, match patterns in text, and much more.

- Part 3 - Aggregate functions
  This exercise taught how to use aggregate functions to summarize data and gain useful insights. Additionally, I learned about arithmetic in SQL, and how to use aliases to make results more readable!

- Part 4 - Sorting, grouping and joins
  This exercise provided a brief introduction to sorting and grouping results, and briefly touched on the concept of joins.

I separated each exercise with the following structure:

```
Part/Chapter XXXXXXX XXXXXXX
----------------------------

-- Exercise XXXXXXXXXXXXX
	### Instruction XXXXXXXXXXXXXXX
	### Solution XXXXXXXXXXXX
```

Example:

```sql
#Part 4 Sorting, grouping and joins
-----------------------------------

--All together now
	#Finally, modify your query to order the results from highest average gross earnings to lowest.
	SELECT release_year, AVG(budget) as avg_budget, AVG(gross) as avg_gross
	FROM films
	GROUP BY release_year
	HAVING AVG(budget) > 60000000
	ORDER BY AVG(gross) DESC;
```