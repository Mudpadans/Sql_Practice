1. SELECT * 
FROM invoice_line
WHERE unit_price > 0.99

2. SELECT * 
FROM playlist
WHERE name = 'Music'

3. SELECT name
FROM playlist
WHERE playlist_id = '5'

4. SELECT genre_id
FROM genre
WHERE name = 'Comedy' IN (
    SELECT name
    FROM track
    WHERE genre_id = '22'
)

5. SELECT album_id
FROM album
WHERE title = 'Fireball' IN (
    SELECT name
    FROM track
    WHERE album_id = '60'
)

6. SELECT artist_id
FROM artist
WHERE name = 'Queen' IN (
    SELECT album_id
    FROM album
    WHERE artist_id = '51' IN (
        SELECT name
        FROM track
        WHERE album_id = '36' OR album_id = '185' OR album_id = '186'
    )
)



