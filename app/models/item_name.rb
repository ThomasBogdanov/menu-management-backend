class ItemName < ApplicationRecord
  has_many :items

  validates :name, uniqueness: { case_sensitive: false }
end
