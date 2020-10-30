require 'rails_helper'

RSpec.describe Player, type: :model do
  let!(:player) { build(:player) }
  let!(:invalid_player) { build(:player, name: nil) }

  it 'is valid with name' do
    expect(player).to be_valid
  end

  it 'is not valid without a name' do
    expect(invalid_player).to_not be_valid
  end

  it 'should has and belongs to many players' do
    should have_and_belong_to_many(:albums)
  end
end
