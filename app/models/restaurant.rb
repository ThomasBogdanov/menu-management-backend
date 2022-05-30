class Restaurant < ApplicationRecord
  has_many :menus

  validates_presence_of :name
  validates :open_time, allow_blank: true, comparison: { less_than: :close_time }
end
