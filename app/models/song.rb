class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(name)
    theartist = Artist.find_or_create_by(name: name)
    self.artist = theartist
  end

  def artist_name
    self.artist.name if self.artist
  end
end
