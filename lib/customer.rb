class Customer < ActiveRecord::Base

  has_many :purchases
  has_many :carts, through: :purchases
  has_many :products, through: :carts

end
