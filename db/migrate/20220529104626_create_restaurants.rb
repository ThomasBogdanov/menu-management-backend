# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :phone_number1
      t.string :phone_number2
      t.string :fax_number
      t.string :email
      t.string :website
      t.string :price_range
      t.time :open_time
      t.time :close_time
      t.string :category
      t.boolean :is_active

      t.timestamps
    end
  end
end
