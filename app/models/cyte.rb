class Cyte < ActiveRecord::Base
  belongs_to :creator, class_name: User
  belongs_to :category, class_name: CyteCategory
  has_many :tag_cytes, class_name: TagCyte
  has_many :tags, :through => :tag_cytes
  
  # has_many :comments
  # validates :text, presence: true

  
end