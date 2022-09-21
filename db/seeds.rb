require "json"
require "open-uri"

url = "https://api.deezer.com/playlist/7089916404/tracks"
user_serialized = URI.open(url).read
all_songs = JSON.parse(user_serialized)


puts "Cleaning DB"
Playlist.destroy_all
Music.destroy_all

puts "DB cleaned"

puts 'Creating first playlist'
blind_playlist = Playlist.create(name: 'classic', category: 'top', image_url: 'https://images.unsplash.com/photo-1505628346881-b72b27e84530?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80')
all_songs["data"].each do |song|
  Music.create!(
    title: song["title_short"],
    preview: song["preview"],
    artist: song["artist"]["name"],
    artist_photo: song["artist"]["picture_xl"],
    album: song["album"]["title"],
    album_photo: song["album"]["cover_xl"],
    playlist: blind_playlist
  )
end

Sudoku.create!(
  level: "easy",
  grid: [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 0, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]]
)
