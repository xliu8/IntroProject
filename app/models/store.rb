class Store < ApplicationRecord
  has_many :stocks
  has_many :products, through: :stocks

  validates :store_name, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
