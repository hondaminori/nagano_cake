class CreateOrderDetails < ActiveRecord::Migration[6.1]
  # チャレンジ項目は一切無視！

  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :item_id, null: false
      t.integer :price, null: false
      t.integer :amount, null: false

      t.timestamps
    end
    add_index :order_details, :order_id
    add_index :order_details, :item_id
  end
end
