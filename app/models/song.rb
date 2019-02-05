class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(name)
    self.genre = Genre.find_by_name(name)
  end

  def genre_name
    self.genre.name
  end

  def artist_name(name)
    self.artist = Artist.find_by_name(name)
  end

  def artist_name
    self.artist.name
  end
end
