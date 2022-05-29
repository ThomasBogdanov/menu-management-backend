require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it 'is valid with valid attributes' do
    menu_item = build(:menu_item)
    expect(menu_item).to be_valid
  end

  it 'is not valid with invlid attributes' do
    menu_item = build(:menu_item, name: nil)
    expect(menu_item).to_not be_valid
  end

  it 'is not valid with an empty name string' do
    menu_item = build(:menu_item, name: '')
    expect(menu_item).to_not be_valid
  end

  it 'should belong to a Menu' do
    should belong_to(:menu)
  end
end
