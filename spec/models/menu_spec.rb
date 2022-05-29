require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with valid attributes' do
    menu = build(:menu)
    expect(menu).to be_valid
  end

  it 'is not valid with invalid attributes' do
    menu = build(:menu, name: nil)
    expect(menu).to_not be_valid
  end

  it 'is not valid with an empty name string' do
    menu = build(:menu, name: '')
    expect(menu).to_not be_valid
  end

  it 'should have many menu items' do
    should have_many(:menu_items)
  end

  it 'should not be valid with an end date that is before the start date' do
    menu = build(:menu, start_time: Time.now + 2, end_time: Time.now - 2)
    expect(menu).to_not be_valid
  end
end
