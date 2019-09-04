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


