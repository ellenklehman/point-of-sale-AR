class ProductInventory < ActiveRecord::Migration
  def change
    create_table :ProductInventory do |t|
      t.integer :inventory
      t.integer :sold
      t.integer :returned

      t.timestamp
    end
  end
end
