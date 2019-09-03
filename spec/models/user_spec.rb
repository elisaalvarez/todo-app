# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  it 'has a valid factory' do
    expect(user).to be_valid
  end
end
