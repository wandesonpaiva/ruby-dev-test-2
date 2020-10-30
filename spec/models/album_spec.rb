require 'rails_helper'

RSpec.describe Album, type: :model do
  let!(:album) { build(:album) }
  let!(:invalid_album) { build(:album, name: nil) }

  it 'is valid with name' do
    expect(album).to be_valid
  end

  it 'is not valid without a name' do
    expect(invalid_album).to_not be_valid
  end

  it 'should has and belongs to many players' do
    should have_and_belong_to_many(:players)
  end
end
