require 'rails_helper'

describe Tag do

  it "has a valid factory" do
    expect(FactoryGirl.build(:tag)).to be_valid
  end

end