# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MenuItem, type: :model do
  describe 'Associations' do
    it 'should belong to a Menu' do
      should belong_to(:menu)
    end

    it 'should have one item' do
      should belong_to(:item)
    end
  end
end
