class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  has_many :stocks
  has_many :stores, through: :stocks

  validates :product_name, presence: true
  validates :price, presence: true, numericality: true
  validates :model_year, presence: true, numericality: { only_integer: true }
end
