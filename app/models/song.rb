class Song < ApplicationRecord
  validates :title, presence: true
  belongs_to :artist

  has_many :playlistings
  has_many :playlists, through: :playlistings
end
