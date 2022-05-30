# frozen_string_literal: true

class RemoveQuantityFromMenuItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :menu_items, :quantity, :float
  end
end
