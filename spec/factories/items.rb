FactoryBot.define do
  factory :item do
    price { 4.99 }
    description { 'Fresh sunny side up eggs from free range chickens!' }
    quantity { 2 }
    association :item_name, strategy: :build
    item_name_id { item_name.id }
  end
end
