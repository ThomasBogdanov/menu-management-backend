# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_items

  validates_presence_of :name
  validates :start_time, allow_blank: true, comparison: { less_than: :end_time }
end
