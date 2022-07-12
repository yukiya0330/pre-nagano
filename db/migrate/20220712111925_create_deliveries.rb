class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.integer :customer_id
      t.string :name
      t.integer :post_code
      t.string :address

      t.timestamps
    end
  end
end
