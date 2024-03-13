class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :reservations
  has_many :orders
end
