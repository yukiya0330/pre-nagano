class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :amount

      t.timestamps
    end
  end
end
