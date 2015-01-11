require 'rails_helper'

describe Tag do

  it "has a valid factory" do
    expect(FactoryGirl.build(:tag)).to be_valid
  end
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to ensure_length_of(:name).is_at_most(30) }
  it { is_expected.to validate_uniqueness_of(:name) }

end
