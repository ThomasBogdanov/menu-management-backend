class Item < ApplicationRecord
  has_many :menu_items
  has_many :menus, through: :menu_items

  has_one :item_name
end
