# frozen_string_literal: true

class MenuItem < ApplicationRecord
  belongs_to :menu

  validates_presence_of :name
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, allow_blank: true, numericality: { greater_than_or_equal_to: 0 }
end
