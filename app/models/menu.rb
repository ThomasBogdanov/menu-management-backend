# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :restaurant

  has_many :menu_items
  has_many :items, through: :menu_items

  validates_presence_of :name
  validates :start_time, allow_blank: true, comparison: { less_than: :end_time }

  def self.create_menus(param, restaurant)
    added_menus = []
    param['menus'].each do |menu|
      new_menu = Menu.create(restaurant_id: restaurant.id, name: menu['name'])
      added_menus << [new_menu.id, menu['menu_items']]
    end
    added_menus
  end
end
