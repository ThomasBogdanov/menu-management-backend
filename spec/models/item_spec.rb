require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Associations' do
    it 'should have many menu_items' do
      should have_many(:menu_items)
    end

    it 'should have one item_name' do
      should belong_to(:item_name)
    end

    # Must have a name reference
    it 'should not be valid without an item_name id' do
      item = build(:item, item_name_id: nil)
      expect(item).to_not be_valid
    end
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      item = build(:item)
      expect(item).to be_valid
    end

    it { should validate_presence_of :price }
  end
end
