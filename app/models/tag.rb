class Tag < ActiveRecord::Base
  has_many :tag_cytes, class_name: TagCyte
  has_many :cytes, :through => :tag_cytes

  validates :name, presence: true, uniqueness: true, length: { maximum: 30 }

end
