RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    it 'should give average length of 80' do
        Special.create(
          comedian_id: 7,
          name: "Killing Them Softly",
          length: 60,
        )

        Special.create(
          comedian_id: 6,
          name: "It's Bad For Ya",
          length: 100,
        )

      average_length = Special.average_length

      expect(average_length).to eq(80)
    end

  end


end
