class AddTagsToCyte < ActiveRecord::Migration
  def change
    create_table :tags_cytes, id: false do |t|
      t.integer :tag_id, index: true, null: false
      t.integer :cyte_id, index: true, null: false
    end
  end
end
