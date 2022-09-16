class Playlist < ApplicationRecord
  has_many :musics, dependent: :destroy
end
