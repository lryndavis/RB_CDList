class Artist
  @@artists = []

  def initialize(name)
    @name = name
    @id = @@artists.length() + 1
  end

  def name
    @name
  end

  def id
    @id
  end

  def save
    @@artists.push(self)
  end

  def self.all
    @@artists
  end

  def self.clear
    @@artists = []
  end

  def self.find(identification)
    found_artist = nil
    @@artists.each() do |artist|
      if artist.id() == identification
        found_artist = artist
      end
    end
    found_artist
  end
end
