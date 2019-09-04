select *
from invoice
    join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where unit_price > 0.99;


select invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
from invoice
    join customer on customer.customer_id = invoice.customer_id;


select customer.first_name, customer.last_name, employee.first_name, employee.last_name
from customer
    join employee on employee.employee_id = customer.support_rep_id;


select artist.name, album.title
from album
    join artist on artist.artist_id = album.artist_id;


select playlist_track.track_id
from playlist_track
    join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music';


select track.name
from track
    join playlist_track on track.track_id = playlist_track.track_id
where playlist_track.playlist_id = 5;


select track.name, playlist.name
from track
    join playlist_track on track.track_id = playlist_track.track_id
    join playlist on playlist_track.playlist_id = playlist.playlist_id;


select track.name, album.title
from track
    join album on track.album_id = album.album_id
    JOIN genre on genre.genre_id  = track.genre_id
where genre.name = 'Alternative & Punk';


select *
from invoice
where invoice_id in (select invoice_id
from invoice_line
where unit_price > 0.99);


select *
from playlist_track
where playlist_id in (select playlist_id
from playlist
where name = 'Music');


select *
from track
where track_id in (select track_id
from playlist_track
where playlist_id = 5 );


select *
from track
where genre_id in (select genre_id
from genre
where name = 'Comedy');


select *
from track
where name in (select name
from album
where name = 'Fireball');


select *
from track
where album_id in (
  select album_id
from album
where artist_id in (
    select artist_id
from artist
where name = 'Queen'));


update customer
set fax = null
where fax is not null;


UPDATE customer
SET company = 'Self'
WHERE company IS null;


UPDATE customer 
SET last_name = 'Thompson' 
WHERE first_name = 'Julia' AND last_name = 'Barnett';


UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';


update track
set composer = 'The darkness around us'
where genre_id = (select genre_id
    from genre
    where name = 'Metal')
    and composer is null;


select count(*), genre.name
from track
    join genre on track.genre_id = genre.genre_id
group by genre.name;