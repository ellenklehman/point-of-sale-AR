class Cart < ActiveRecord::Base

  belongs_to :purchase
  has_many :products

  def cart_total
    total =0
    self.products.each do |product|
      total += product.quantity * product.price
    end
    total
    self.cart_sum = total
  end

end
