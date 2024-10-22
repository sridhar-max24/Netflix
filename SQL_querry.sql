-- Create the table
CREATE TABLE movies_tv_shows (
    show_id TEXT PRIMARY KEY,
    types VARCHAR(255),
    title VARCHAR(255),
    director VARCHAR(255),
    casts TEXT,
    country VARCHAR(255),
    date_added DATE,
    release_year INT,
    rating VARCHAR(255),
    duration VARCHAR(255),
    listed_in TEXT,
    description TEXT
);


------------------------------------------
                 EDA
------------------------------------------

--Q.1. Most Popular Genres:

SELECT listed_in, COUNT(*) AS count
FROM movies_tv_shows
GROUP BY listed_in
ORDER BY count DESC;

--Q.2. Top Directors:

SELECT director, COUNT(*) AS count
FROM movies_tv_shows
WHERE director IS NOT NULL
GROUP BY director
ORDER BY count DESC;

-- Q.3. Trending Content:

SELECT title, date_added
FROM movies_tv_shows
WHERE date_added IS NOT NULL
ORDER BY date_added DESC;

-- Q.4. Country Analysis:

SELECT country, COUNT(*) AS count
FROM movies_tv_shows
WHERE country IS NOT NULL
GROUP BY country
ORDER BY count DESC;

-- Q.5. Rating Distribution:

SELECT rating, COUNT(*) AS count
FROM movies_tv_shows
WHERE rating IS NOT NULL
GROUP BY rating;

-- Q.6. Cast Analysis:

SELECT casts, COUNT(*) AS count
FROM movies_tv_shows
WHERE casts IS NOT NULL
GROUP BY casts
ORDER BY count DESC;

-- Q.7. Movies vs. TV Shows:

SELECT types, COUNT(*) AS count
FROM movies_tv_shows
GROUP BY types;

-- Q.8. Release Year Analysis:

SELECT release_year, COUNT(*) AS count
FROM movies_tv_shows
GROUP BY release_year
ORDER BY release_year ASC;


-- Q.9. Content Added by Year:

SELECT EXTRACT(YEAR FROM date_added) AS year, COUNT(*) AS count
FROM movies_tv_shows
WHERE date_added IS NOT NULL
GROUP BY year
ORDER BY year ASC;

