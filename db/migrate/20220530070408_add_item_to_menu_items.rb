# frozen_string_literal: true

class AddItemToMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :menu_items, :item, null: false, foreign_key: true
  end
end
