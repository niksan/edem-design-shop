class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.text :description
      t.decimal :price, default: 0.0
      t.string :ancestry
      t.string :slug
      t.integer :position
      t.boolean :show_on_main_page, default: false
      t.boolean :disabled, default: false

      t.timestamps
    end
    add_index :products, :slug, unique: true
    add_index :products, :ancestry
    add_index :products, :position
    add_index :products, :category_id
    add_index :products, :show_on_main_page
  end
end
