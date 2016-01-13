require('rspec')
require('cd')

describe(CD) do
  describe('#initialize') do
    it('returns the title, artist_id, and id of the CD') do
      test_cd = Aladdin_Sane()
      expect(test_cd.title()).to(eq('Aladdin Sane'))
      expect(test_cd.artist_id()).to(eq(1))
      expect(test_cd.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(CD.all()).to(eq([]))
    end
  end
end

def Aladdin_Sane
  CD.new('Aladdin Sane', 1)
end
