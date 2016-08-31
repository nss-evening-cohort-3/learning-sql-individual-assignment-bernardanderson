--Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.

SELECT t.Name AS "Track Name", 
al.Title AS "Album Name", 
mt.Name AS "MediaType", 
g.Name AS "Genre"
FROM Track t JOIN MediaType mt JOIN Album al JOIN Genre g 
WHERE t.MediaTypeId == mt.MediaTypeId AND t.AlbumId == al.AlbumId AND t.GenreId == g.GenreId;