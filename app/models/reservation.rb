class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :garage

  validates :from, :until, presence: true, on_or_after: -> { Time.now }
end
