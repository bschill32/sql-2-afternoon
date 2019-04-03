https://postgres.devmountain.com/

-- Get all invoices where the UnitPrice on the InvoiceLine is greater than $0.99.

select *
from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

-- Get the InvoiceDate, customer FirstName and LastName, and Total from all invoices.

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on c.customer_id = i.customer_id;

-- Get the customer FirstName and LastName and the support rep's FirstName and LastName from all customers.
-- Support reps are on the Employee table.

select c.first_name, c.last_name, e.first_name, e.last_name
from customer c
join employee e on e.employee_id = c.support_rep_id;

-- Get the album Title and the artist Name from all albums.

select al.title, a.name
from album al
join artist a on a.artist_id = al.artist_id;

-- Get all PlaylistTrack TrackIds where the playlist Name is Music.

select pt.track_id
from playlist_track pt
join playlist p on p.playlist_id = pt.playlist_id
where p.name = 'Music';

-- Get all Track Names for PlaylistId 5.

select t.name
from track t
join playlist_track pt on pt.track_id = t.track_id
where playlist_id = 5;

-- Get all Track Names and the playlist Name that they're on ( 2 joins ).

select t.name, p.name
from track t
join playlist_track pt on pt.track_id = t.track_id
join playlist p on p.playlist_id = pt.playlist_id;

-- Get all Track Names and Album Titles that are the genre "Alternative" ( 2 joins ).

select t.name, al.title
from track t
join album al on al.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative';