class Purchase < ActiveRecord::Base

  belongs_to :cart
  belongs_to :customer
  belongs_to :cashier

  def self.time_range(start_date, end_date)
    final_total = 0
    purchase_range = Purchase.where("purchase_date >= ? AND purchase_date <= ?", start_date, end_date)
    purchase_range.each do |purchase|
      cart = purchase.cart
      final_total += cart.cart_total
    end
    final_total
  end
end


