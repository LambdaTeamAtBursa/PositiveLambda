require 'elasticsearch/model'

class CyteCategory < ActiveRecord::Base
  has_many :cyte_categories, foreign_key: :parent_category_id
  belongs_to :parent_category, class_name: CyteCategory, dependent: :destroy, inverse_of: :cyte_categories
  accepts_nested_attributes_for :parent_category

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
CyteCategory.import
