class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.string :ancestry
      t.integer :position

      t.timestamps
    end
    add_index :categories, :slug, unique: true
    add_index :categories, :position
    add_index :categories, :ancestry
  end
end
