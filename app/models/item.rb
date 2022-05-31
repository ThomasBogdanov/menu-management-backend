# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :menu_items
  has_many :menus, through: :menu_items

  belongs_to :item_name

  validates_presence_of :item_name_id
  validates_presence_of :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, allow_blank: true, numericality: { greater_than_or_equal_to: 0 }
end
