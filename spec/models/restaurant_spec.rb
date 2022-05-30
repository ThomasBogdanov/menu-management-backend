# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'Associations' do
    it 'should have many menus' do
      should have_many(:menus)
    end
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      restaurant = build(:restaurant)
      expect(restaurant).to be_valid
    end

    it { should validate_presence_of :name }

    it 'is not valid with invalid attributes' do
      restaurant = build(:restaurant, name: nil)
      expect(restaurant).to_not be_valid
    end

    it 'is not valid with an empty name string' do
      restaurant = build(:restaurant, name: '')
      expect(restaurant).to_not be_valid
    end

    it 'should not be valid with a closing time that is before the opening time' do
      restaurant = build(:restaurant, open_time: Time.now + 2, close_time: Time.now - 2)
      expect(restaurant).to_not be_valid
    end
  end
end
