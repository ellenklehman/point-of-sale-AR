class CreateCart < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.column :cart_sum, :integer
      t.belongs_to :product

      t.timestamps
    end
  end
end
