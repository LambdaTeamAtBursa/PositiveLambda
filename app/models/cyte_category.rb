class CyteCategory < ActiveRecord::Base
  has_many :cyte_categories, foreign_key: :parent_category_id
  belongs_to :parent_category, class_name: CyteCategory
end
