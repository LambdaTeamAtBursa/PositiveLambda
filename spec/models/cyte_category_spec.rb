require 'rails_helper'

  describe CyteCategory do
  	
     it "has a valid factory" do
     	expect(FactoryGirl.build(:cyte_category)).to be_valid
     end

     it { should belong_to(:parent_category).class_name(CyteCategory) }

  end


