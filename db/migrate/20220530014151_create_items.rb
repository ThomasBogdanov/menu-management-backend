# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.references :item_name, null: false, foreign_key: true
      t.decimal :price
      t.text :description
      t.float :quantity
      t.boolean :is_active

      t.timestamps
    end
  end
end
