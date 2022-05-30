# frozen_string_literal: true

class CreateItemNames < ActiveRecord::Migration[7.0]
  def change
    create_table :item_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
