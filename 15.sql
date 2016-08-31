-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT pl.Name, Count(plt.PlaylistId) FROM Playlist pl JOIN PlaylistTrack plt WHERE plt.PlaylistId == pl.PlaylistId GROUP BY plt.PlaylistId;