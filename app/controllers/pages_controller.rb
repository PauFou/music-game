class PagesController < ApplicationController

  def home

  end


  def choice
    @playlists = Playlist.all
  end
end
