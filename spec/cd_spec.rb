require('rspec')
require('cd')

describe(CD) do
  before() do
    CD.clear()
  end

  describe('#initialize') do
    it('returns the title, artist_id, and id of the CD') do
      test_cd = Aladdin_Sane()
      expect(test_cd.title()).to(eq('Aladdin Sane'))
      expect(test_cd.artist_id()).to(eq(1))
      expect(test_cd.id()).to(eq(1))
    end
  end

  describe('#save') do
    it('saves a CD to the array') do
      test_cd = Aladdin_Sane()
      test_cd.save()
      expect(CD.all()).to(eq([test_cd]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(CD.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns a CD by its ID number') do
      test_cd = Aladdin_Sane()
      test_cd.save()
      test_cd2 = Low()
      test_cd2.save()
      expect(CD.find(test_cd.id())).to(eq(test_cd))
    end
  end
end

def Aladdin_Sane
  CD.new('Aladdin Sane', 1)
end

def Low
  CD.new('Low', 1)
end
