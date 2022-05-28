require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  it 'is valid with valid attributes' do
    expect(MenuItem.new).to be_valid
  end

  it 'is not valid with invlid attributes' do
    menu_item = MenuItem.new(name: nil)
    expect(menu_item).to_not be_valid
  end

  it 'is not valid with an empty name string' do
    menu_item = MenuItem.new(name: '')
    expect(menu_item).to_not be_valid
  end

  it 'should belong to a Menu' do
    should belong_to(:menu)
  end
end
