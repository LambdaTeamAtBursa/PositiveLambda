class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps null:false
    end

    create_table :tags_cytes, id:false do |t|
      t.integer :tag_id, index: true
      t.integer :cyte_id, index: true
    end

    #add_index :tags_cytes, :tag_id
    #add_index :tags_cytes, :cyte_id

  end
end
