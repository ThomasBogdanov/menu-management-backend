class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.references :menu, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.text :description
      t.float :quantity
      t.boolean :is_active

      t.timestamps
    end
  end
end
