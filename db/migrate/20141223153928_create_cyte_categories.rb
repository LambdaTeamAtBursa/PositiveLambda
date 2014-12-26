class CreateCyteCategories < ActiveRecord::Migration
  def change
    create_table :cyte_categories do |t|
      t.string :name
      t.belongs_to :parent_category, class_name: CyteCategory, index: true

      t.timestamps null: false
    end
  end
end
