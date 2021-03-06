require 'rails_helper'

RSpec.describe Chirp, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'when a chirp is created' do
    before(:all) do
      @chirp = Chirp.create(
        id: 13,
        text: "First test chirp",
      )
    end
    it 'checks that a chirp can be created' do
      expect(@chirp).to be_valid
    end

    it 'checks that a chirp can be read' do
      expect(Chirp.find_by_id(13)).to eq(@chirp)
    end

    it 'checks that a chirp can be upvoted' do
      @chirp.update(:upvote => 14)
      expect(Chirp.find_by_id(13).upvote).to eq(14)
    end

    it 'checks that a chirp can be deleted' do
      @chirp.destroy
      expect(Chirp.find_by_id(13)).to eq(nil)
    end

    after(:all) do
      @chirp.destroy
    end
  end
end
