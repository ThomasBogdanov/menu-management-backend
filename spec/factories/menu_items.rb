# frozen_string_literal: true

FactoryBot.define do
  factory :menu_item do
    is_active { true }
    association :menu, strategy: :build
    menu_id { menu.id }
    association :item, strategy: :build
    item_id { item.id }
  end
end
