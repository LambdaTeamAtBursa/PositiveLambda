class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cytes, foreign_key: :creator_id
  has_many :comments

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :role_ids, :as => :admin
  # attr_accessible :name, :email, :password, :password_confirmation

end
