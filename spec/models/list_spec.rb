# frozen_string_literal: true

require 'rails_helper'
RSpec.describe List, type: :model do
  let(:list) { FactoryBot.create(:list) }
  it 'has a valid factory' do
    expect(list).to be_valid
  end
end
