FactoryBot.define do
  factory :item do
    item_name { nil }
    price { "9.99" }
    description { "MyText" }
    quantity { 1.5 }
    is_active { false }
  end
end
