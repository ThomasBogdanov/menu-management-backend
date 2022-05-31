# frozen_string_literal: true

# Defines Menu Model and currently creates me
class Menu < ApplicationRecord
  belongs_to :restaurant

  has_many :menu_items
  has_many :items, through: :menu_items

  validates_presence_of :name
  validates :start_time, allow_blank: true, comparison: { less_than: :end_time }

  def self.create_menus(menu_params, restaurant)
    added_menus = []
    menu_params['menus'].each do |menu|
      new_menu = Menu.create(restaurant_id: restaurant.id, name: menu['name'], is_active: true)
      added_menus << [new_menu.id, menu['menu_items'], menu['name']]
    end
    added_menus
  end
end
