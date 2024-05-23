-- lists all shows without the genre Comedy in the database hbtn_0d_tvshows
   -- Each record should display:
      -- tv_shows.title
   -- Results must be sorted in ascending order by the show title
   -- The database name will be passed as an argument of the mysql command


-- 102-rating_shows.sql

SELECT tv_shows.title, SUM(tv_show_ratings.rating) AS rating
FROM tv_shows
JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.show_id
GROUP BY tv_shows.title
ORDER BY rating DESC;

#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 database_dump.sql"
    exit 1
fi

DUMP_FILE=$1
DB_NAME="hbtn_0d_tvshows_rate"
SQL_SCRIPT="102-rating_shows.sql"

# Import the database dump
mysql -hlocalhost -uroot -p < "$DUMP_FILE"

# Execute the SQL script
cat "$SQL_SCRIPT" | mysql -hlocalhost -uroot -p "$DB_NAME"
