FactoryBot.define do
  factory :menu_item do
    name { 'Eggs' }
    price { 4.99 }
    description { 'Fresh sunny side up eggs from free range chickens!' }
    quantity { 2 }
    is_active { false }
    association :menu, strategy: :build
    menu_id { menu.id }
  end
end
