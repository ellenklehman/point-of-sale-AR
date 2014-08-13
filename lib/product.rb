class Product < ActiveRecord::Base

  belongs_to :cart
  after_initialize :inventory

  def inventory
    new_inventory = ProductInventory.find_by(id: self.inventory_id)
    binding.pry
    new_quantity = new_inventory.inventory - self.quantity
    new_sold = new_inventory.sold + self.quantity
    new_inventory.update(:inventory => new_quantity, :sold => new_sold)
  end
end
