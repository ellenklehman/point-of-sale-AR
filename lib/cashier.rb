class Cashier < ActiveRecord::Base

  has_many :purchases
  has_many :customers, through: :purchases
  has_many :carts, through: :purchases
  has_many :products, through: :carts


  def time_range(start_date, end_date)


    purchase_range = self.purchases.where("purchase_date >= ? AND purchase_date <= ?", start_date, end_date)
    purchase_range.length
  end
end
