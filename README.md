## Intro to SQL for Data Science - [DataCamp](https://www.datacamp.com/courses/intro-to-sql-for-data-science)

Course Description:

The role of a data scientist is to turn raw data into actionable insights. Much of the world's raw data—from electronic medical records to customer transaction histories—lives in organized collections of tables called relational databases. Therefore, to be an effective data scientist, you must know how to wrangle and extract data from these databases using a language called SQL (pronounced ess-que-ell, or sequel). This course teaches you everything you need to know to begin working with databases today!

My thoughts:
Was a quickly and introdutory but powerful online course.

All code you can find here: [intro-sql-for-data-science.sql](https://github.com/jonathanbcsouza/intro-sql-for-data-science/blob/master/Intro%20to%20SQL%20for%20Data%20Science.sql).

The code waa structured exactly as the same way of course structure:

* Part 1 - Selecting columns
This chapter provides a brief introduction to working with relational databases. You'll learn about their structure, how to talk about them using database lingo, and how to begin an analysis by using simple SQL commands to select and summarize columns from database tables.

* Part 2 - Filtering rows
This chapter builds on the first by teaching you how to filter tables for rows satisfying some criteria of interest. You'll learn how to use basic comparison operators, combine multiple criteria, match patterns in text, and much more.

* Part 3 - Aggregate Functions
This chapter builds on the first two by teaching you how to use aggregate functions to summarize your data and gain useful insights. Additionally, you'll learn about arithmetic in SQL, and how to use aliases to make your results more readable!

* Part 4 - Sorting, grouping and joins
This chapter provides a brief introduction to sorting and grouping your results, and briefly touches on the concept of joins.

Each module I separated by the following structure:

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

---
