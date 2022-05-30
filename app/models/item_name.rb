# frozen_string_literal: true

class ItemName < ApplicationRecord
  has_many :items

  validates_presence_of :name, uniqueness: { case_sensitive: false }
end
