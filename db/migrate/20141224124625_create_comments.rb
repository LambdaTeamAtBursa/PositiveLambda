class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :cyte, index: true, dependent: :delete
      t.belongs_to :parent_comment, class_name: Comment, index: true, dependent: :delete
      t.text :text, null: false

      t.timestamps null: false
    end
  end
end
