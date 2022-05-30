# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemName, type: :model do
  describe 'Associations' do
    it 'should belong to many items' do
      should have_many(:items)
    end
  end

  describe 'Validations' do
    it { should validate_presence_of :name }
  end
end
