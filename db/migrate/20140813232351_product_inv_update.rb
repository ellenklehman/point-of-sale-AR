class ProductInvUpdate < ActiveRecord::Migration
  def change
    drop_table :ProductInventory
    create_table :product_inventories do |t|

      t.integer :inventory
      t.integer :sold
      t.integer :returned

      t.timestamp
    end
  end
end
