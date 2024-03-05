class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :garage

  validates :from, :until, presence: true
  validates :from, comparison: { greater_than: DateTime.now }
  validates :until, comparison: { greater_than: :from }
end
