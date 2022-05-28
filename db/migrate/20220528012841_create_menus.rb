class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.time :start_time
      t.time :end_time
      t.boolean :is_active

      t.timestamps
    end
  end
end
