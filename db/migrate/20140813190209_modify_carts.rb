class ModifyCarts < ActiveRecord::Migration
  def change

    remove_column :carts, :product_id, :integer
    add_column :products, :cart_id, :integer
  end
end
