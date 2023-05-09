SELECT 
  f.id,
  dal.bk_id as album_id,
  dal.name as album_name,
  dar.bk_id as artist_id,
  dar.name as artist_name,
  dt.bk_id as track_id,
  dt.name as track_name,
  dt.duration as track_duration,
  dp.bk_id as playlist_id,
  dp.name as playlist_name,
  dp.num_followers as playlist_followers,
  dp.num_edits as playlist_edits,
  f.track_position
from f_playlist_track f 
  inner join d_album dal on f.sk_album = dal.sk_id 
  inner join d_artist dar on f.sk_artist = dar.sk_id
  inner join d_track dt on f.sk_track = dt.sk_id
  inner join d_playlist dp on f.sk_playlist = dp.sk_id