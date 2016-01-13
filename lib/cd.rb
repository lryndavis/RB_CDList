class CD
  @@cd_list = []

  def initialize(title, artist_id)
    @title = title
    @artist_id = artist_id
    @id = @@cd_list.length() + 1
  end

  def title
    @title
  end

  def artist_id
    @artist_id
  end

  def id
    @id
  end

  def save
    @@cd_list.push(self)
  end

  def self.all
    @@cd_list
  end

  def self.clear
    @@cd_list = []
  end

  def self.find(identification)
    found_cd = nil
    @@cd_list.each do |cd|
      if cd.id() == identification
        found_cd = cd
      end
    end
    found_cd
  end
end
