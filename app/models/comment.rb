class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cyte
  belongs_to :parent_comment, class_name: Comment
  has_many :comments, foreign_key: :parent_comment_id
end
