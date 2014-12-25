class TagCyte < ActiveRecord::Base
  belongs_to :tag
  belongs_to :cyte
end