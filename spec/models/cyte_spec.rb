require 'rails_helper'

  describe Cyte do
    it "has a valid factory" do
     expect(FactoryGirl.build(:cyte)).to be_valid
    end

    it { should belong_to(:creator).class_name(User) }
    it { should belong_to(:category).class_name(CyteCategory) }
    it { is_expected.to have_many(:comments) }
    it { is_expected.to have_many(:tags) }
    it { is_expected.to validate_presence_of(:text) }
  end