FactoryBot.define do
  factory :menu do
    name { 'Breakfast' }
    description { 'A healthy way to start your day!' }
    start_time { Time.now }
    end_time { Time.now + 2 }
    is_active { true }
  end
end
