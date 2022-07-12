class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :postal_code
      t.string :address
      t.string :name
      t.integer :shipping_cost
      t.integer :total_payment
      t.integer :payment_method
      t.integer :order_status

      t.timestamps
    end
  end
end
