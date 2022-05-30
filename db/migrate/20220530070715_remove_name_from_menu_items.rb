# frozen_string_literal: true

class RemoveNameFromMenuItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :menu_items, :name, :string
  end
end
