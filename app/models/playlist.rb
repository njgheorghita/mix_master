class Playlist < ApplicationRecord
  validates :name, :song_ids, presence: true
  validates_uniqueness_of :name
end
