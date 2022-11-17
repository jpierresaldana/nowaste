class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :products
  has_one_attached :photo

end
