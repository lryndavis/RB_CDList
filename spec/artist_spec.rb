require('rspec')
require('artist')

describe(Artist) do
  before() do
    Artist.clear()
  end

  describe('#initialize') do
    it('returns the name and id of the artist') do
      test_artist = Bowie()
      expect(test_artist.name()).to(eq('David Bowie'))
      expect(test_artist.id()).to(eq(1))
    end
  end

  describe('#save') do
    it('saves an artist to the array') do
      test_artist = Bowie()
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns an artist by its ID number') do
      test_artist = Bowie()
      test_artist.save()
      test_artist2 = Artist.new('Britney Spears')
      test_artist2.save()
      expect(Artist.find(test_artist.id())).to(eq(test_artist))
    end
  end
end

def Bowie
  Artist.new('David Bowie')
end
