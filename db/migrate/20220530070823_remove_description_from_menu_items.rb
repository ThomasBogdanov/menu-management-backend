class RemoveDescriptionFromMenuItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :menu_items, :description, :text
  end
end
