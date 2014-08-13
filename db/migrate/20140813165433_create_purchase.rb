class CreatePurchase < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.date :purchase_date

      t.belongs_to :customer
      t.belongs_to :cart
      t.belongs_to :cashier

      t.timestamp
    end
  end
end
