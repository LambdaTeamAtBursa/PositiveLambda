require 'rails_helper'

  describe CyteCategory do
  	
     it "has a valid factory" do
     	expect(FactoryGirl.build(:cyte_category)).to be_valid
     end

     it { should belong_to(:parent_category).class_name(CyteCategory) }
     it { is_expected.to have_many(:cyte_categories).with_foreign_key('parent_category_id') }
     it { is_expected.to validate_presence_of(:name) }
     it { is_expected.to ensure_length_of(:name).is_at_least(2) }

  end


