class Stock < ApplicationRecord
  belongs_to :store
  belongs_to :product

  validates :quantity, presence: true, numericality: { only_integer: true }
end
