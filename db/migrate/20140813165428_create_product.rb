class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price

      t.timestamp

    end
  end
end
