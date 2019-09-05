# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:description) }
  it { should belong_to(:list).class_name('List') }
end
