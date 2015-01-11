class CreateCytes < ActiveRecord::Migration
  def change
    create_table :cytes do |t|
      t.string :text
      t.belongs_to :creator, class_name: User, index: true
      t.belongs_to :category, class_name: CyteCategory, index: true

      t.timestamps null: false
    end
  end
end
