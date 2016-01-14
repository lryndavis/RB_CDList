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
end
