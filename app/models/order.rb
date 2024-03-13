class Order < ApplicationRecord
  belongs_to :user
  belongs_to :reservation

  monetize :amount_cents
end
