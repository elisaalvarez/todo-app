# frozen_string_literal: true

require 'rails_helper'

RSpec.describe List, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { should belong_to(:user).class_name('User') }
  it { should have_many(:tasks).class_name('Task') }
end
