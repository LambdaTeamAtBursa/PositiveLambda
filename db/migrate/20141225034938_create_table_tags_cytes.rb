class CreateTableTagsCytes < ActiveRecord::Migration
  def change
    create_join_table :cytes, :tags
  end
end
