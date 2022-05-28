require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with valid attributes' do
    expect(Menu.new).to be_valid
  end

  it 'is not valid with invalid attributes' do
    menu = Menu.new(name: nil)
    expect(menu).to_not be_valid
  end

  it 'is not valid with an empty name string' do
    menu = Menu.new(name: '')
    expect(menu).to_not be_valid
  end

  it 'should have many menu items' do
    should have_many(:menu_items)
  end
end
