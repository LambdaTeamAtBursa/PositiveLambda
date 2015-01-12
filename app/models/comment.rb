class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cyte, dependent: :destroy
  belongs_to :parent_comment, class_name: Comment, dependent: :destroy
  has_many :comments, foreign_key: :parent_comment_id
  
  validates :user_id, presence: true
  validates :cyte_id, presence: true
  validates :text, presence: true
  
  
end
