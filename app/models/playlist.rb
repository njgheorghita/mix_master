class Playlist < ApplicationRecord
  validates :name, :song_ids, presence: true
  validates_uniqueness_of :name
  
  has_many :playlistings
  has_many :songs, through: :playlistings

  def self.most_popular_song
    song_id = Song.joins(:playlists).order("count_all DESC").group(:id).count
    top_songs = song_id.select {|k,v| v == song_id.values.max}
    return_array = []

    top_songs.each do |k,v| 
      return_array << [Song.find(k), v]
    end
    return_array
  end

  def self.most_popular_artist
    final = {}
    artists = Artist.all 
    artists.each do |a|
      total_song_count = 0
      a.song_ids.each do |s|
        total_song_count += Playlisting.where(:song_id => s).count
      end
      final[a.id] = total_song_count
    end
    final.select {|k,v| v == final.values.max}
  end
end
