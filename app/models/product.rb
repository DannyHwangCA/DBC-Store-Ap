class Product < ActiveRecord::Base

  has_many :categories_products
  has_many :categories, through: :categories_products
  has_many :carts
  has_many :users, through: :carts

  validates :name, length: { minimum: 2 }, presence: true
  validates :description, presence: true, length: { maximum: 2500 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :stock, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
