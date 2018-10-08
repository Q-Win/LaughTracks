RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    it 'should give average age of 45' do
      Comedian.create(
        name: "Kat Williams",
        age: 40,
        city: "Cincinnati, OH",
      )

      Comedian.create(
        name: "George Carlin",
        age: 50,
        city: "New York, NY",
      )

      average_age = Comedian.average_age

      expect(average_age).to eq(45)
    end

    it 'should return only unique entries' do
      Comedian.create(
        name: "Kat Williams",
        age: 40,
        city: "New York, NY",
      )

      Comedian.create(
        name: "George Carlin",
        age: 50,
        city: "New York, NY",
      )

      cities = Comedian.cities

      expect(cities).to eq(["New York, NY"])
    end

  end

end
