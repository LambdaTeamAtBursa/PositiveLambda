require 'rails_helper'

describe Comment do
  it 'has a valid factory' do
  	expect(FactoryGirl.build(:comment)).to be_valid
  end

  it { should belong_to(:user) }
  it { should belong_to(:cyte) }
  it { should belong_to(:parent_comment).class_name(Comment) }
end

