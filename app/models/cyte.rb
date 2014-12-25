class Cyte < ActiveRecord::Base
  belongs_to :creator, class_name: User
  belongs_to :category, class_name: CyteCategory
  has_many :tags_cytes, class_name: TagCyte
  has_many :tags, :through => :tags_cytes
  has_many :comments
end