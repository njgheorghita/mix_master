class Artist < ApplicationRecord
  validates :artist_name, :artist_image_path, presence: true
  validates_uniqueness_of :artist_name
end
