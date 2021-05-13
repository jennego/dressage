class User < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :dressage_tests, through: :favourites 


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#         :recoverable, :rememberable, :trackable, :validatable
end
