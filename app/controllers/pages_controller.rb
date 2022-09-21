class PagesController < ApplicationController


  def choice
    @playlists = Playlist.all
  end

  def classic
    @playlists = Playlist.all
  end


  def sudoku_game
    forEach(element => console.log(element))
  end
end
