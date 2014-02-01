class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity, default: 1
      t.decimal :price, default: 0
    end
    add_index :order_items, :order_id
    add_index :order_items, :product_id
    add_index :order_items, [:product_id, :order_id], unique: true
  end
end
