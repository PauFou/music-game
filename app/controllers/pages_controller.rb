class PagesController < ApplicationController


  def choice
    @playlists = Playlist.all
  end

  def classic
    @playlists = Playlist.all
  end

end
