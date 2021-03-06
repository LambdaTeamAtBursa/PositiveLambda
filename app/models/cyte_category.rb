require 'elasticsearch/model'

class CyteCategory < ActiveRecord::Base
  has_many :cyte_categories, foreign_key: :parent_category_id
  belongs_to :parent_category, class_name: CyteCategory, dependent: :destroy
  accepts_nested_attributes_for :parent_category

  validates :name, presence: true, length: { minimum: 2 }

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
