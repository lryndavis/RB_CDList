require('rspec')
require('artist')

describe(Artist) do
  describe('#initialize') do
    it('returns the name and id of the artist') do
      test_artist = Bowie()
      expect(test_artist.name()).to(eq('David Bowie'))
      expect(test_artist.id()).to(eq(1))
    end
  end
end

def Bowie
  Artist.new('David Bowie')
end
