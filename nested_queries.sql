-- Get all invoices where the UnitPrice on the InvoiceLine is greater than $0.99.

select *
from invoice
where invoice_id in(
  select invoice_id 
  from invoice_line
  where unit_price > 0.99
);

-- Get all Playlist Tracks where the playlist name is Music.

SELECT *
FROM Playlist_Track
WHERE Playlist_Id IN ( 
  SELECT Playlist_Id 
  FROM Playlist 
  WHERE Name = 'Music'
);

-- Get all Track names for PlaylistId 5.

select name
from track
where track_id in (
	select track_id
  from playlist_track
  where playlist_id = 5
)

-- Get all tracks where the Genre is Comedy.

select name
from track
where track_id in (
	select track_id
  from playlist_track
  where playlist_id = 5
)

-- Get all tracks where the Album is Fireball.

select * 
from track 
where album_id in (
	select album_id
  from album
  where title = 'Fireball'
)

-- Get all tracks for the artist Queen ( 2 nested subqueries ).

select * 
from track 
where album_id in (
	select album_id
  from album
  where artist_id in (
  	select artist_id
    from artist
    where name = 'Queen'
  )
)
