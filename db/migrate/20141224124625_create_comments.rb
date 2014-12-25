class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :cyte, index: true
      t.belongs_to :parent_comment, class_name: Comment, index: true
      t.text :text, null:false

      t.timestamps null:false
    end
  end
end
