class TagCyte < ActiveRecord::Base
  belongs_to :tag, dependent: :destroy
  belongs_to :cyte, dependent: :destroy
end