SELECT COUNT(film_id) AS count_film_id
FROM dbo.reviews

SELECT COUNT (*) AS count_records
FROM dbo.people

SELECT COUNT(birthdate) AS count_birthdates
FROM people

SELECT COUNT(language) AS count_languages, COUNT(country) AS count_countries
FROM films

SELECT DISTINCT country
FROM films

SELECT COUNT(DISTINCT country) AS count_distinct_countries
FROM films

SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0

SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000

SELECT COUNT(num_votes) AS films_over_100K_votes
FROM dbo.reviews
WHERE num_votes >=100000

SELECT COUNT(language) AS count_spanish
FROM films
WHERE language = 'spanish'

SELECT title, release_year
FROM films
WHERE release_year < 2000 AND language = 'German'

SELECT title, release_year
FROM films
WHERE release_year > 2000 AND language = 'German'

SELECT *
FROM films
WHERE release_year > 2000 AND release_year < 2010 AND language = 'German'

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
     AND (language = 'English' or language = 'Spanish')
	 AND (gross > 2000000)

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000

SELECT name
FROM people
WHERE name LIKE 'B%'

SELECT name
FROM people
WHERE name LIKE '_r%'

SELECT name
FROM people
WHERE name NOT LIKE 'A%'

SELECT title, release_year
FROM films
WHERE release_year IN (1990,2000)
 AND duration > 120

 SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French')

SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R') AND language IN ('English', 'Italian', 'Greek');

SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL

SELECT SUM(duration) AS total_duration
FROM films

SELECT AVG(duration) AS total_duration
FROM films

SELECT ROUND(AVG(facebook_likes), 1) As avg_facebook_likes
FROM reviews

SELECT name
FROM people
ORDER BY name





