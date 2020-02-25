class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shoe

  monetize :amount_cents
end
