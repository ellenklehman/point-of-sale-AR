class ProductUpdate < ActiveRecord::Migration
  def change
    add_column :products, :inventory_id, :integer
  end
end
