class User < ApplicationRecord

  alias_attribute :dressage_test, :favourites
   has_and_belongs_to_many :favourites

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#   devise :database_authenticatable, :registerable,
#         :recoverable, :rememberable, :trackable, :validatable
end
