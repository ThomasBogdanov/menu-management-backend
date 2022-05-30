FactoryBot.define do
  factory :restaurant do
    name { "Fried Chicken 24/7" }
    address_line1 { "321 Chicken Avenue" }
    address_line2 { "123 Rooster Road" }
    city { "Cluckville" }
    state { "Hentucky" }
    country { "United States of Chickenerica" }
    postal_code { "83653" }
    phone_number1 { "6041111111" }
    phone_number2 { "6042222222" }
    fax_number { "6043333333" }
    email { "ChickenFryer@Henquarters.com" }
    website { "ChickenAllDay.com" }
    price_range { "3-30" }
    open_time { "2022-05-29 00:00:00" }
    close_time { "2022-05-30 24:00:00" }
    category { "Deliciousness" }
    is_active { true }
  end
end
