class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :genle_id
      t.string :name
      t.text :introduction
      t.integer :price
      t.integer :image_id
      t.integer :item_status

      t.timestamps
    end
  end
end
