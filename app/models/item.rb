# frozen_string_literal: true

# Defines Item Model and creates items + checks for existing item_names within the database
class Item < ApplicationRecord
  has_many :menu_items
  has_many :menus, through: :menu_items

  belongs_to :item_name

  validates_presence_of :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, allow_blank: true, numericality: { greater_than_or_equal_to: 0 }

  # Add further validation later before item creation
  # -> Get all items for restaurant and see if item already exists
  # for the same restaurant, use that instead for new MenuItem entry.
  def self.create_items_for_menus(menu_id, menu_items)
    items = []
    menu_items.each do |item|
      item_name_id = ItemName.find_or_create_by(name: item['name']).id
      new_item = Item.create(item_name_id: item_name_id, price: item['price'], is_active: true)
      MenuItem.create(item_id: new_item.id, menu_id: menu_id)
      items << if new_item.save
                 [item['name'], { success: 'true' }, new_item]
               else
                 [item['name'], { success: 'false' }, new_item.errors]
               end
    end
    items
  end
end
