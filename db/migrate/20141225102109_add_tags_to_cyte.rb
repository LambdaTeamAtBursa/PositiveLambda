class AddTagsToCyte < ActiveRecord::Migration
  def change
    create_table :tags_cytes, id:false do |t|
      t.integer :tag_id, index: true, null:false
      t.integer :cyte_id, index: true, null:false

      t.timestamps null:false
    end

    #add_index :tags_cytes, :tag_id
    #add_index :tags_cytes, :cyte_id

    #add_reference :cytes, :tags, index: true
  end
end
