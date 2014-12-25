class Cyte < ActiveRecord::Base
  belongs_to :creator, class_name: User
  belongs_to :category, class_name: CyteCategory
  has_and_belongs_to_many :tags
  has_many :comments
end
