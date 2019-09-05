# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  login_user
  it { should use_before_action(:authenticate_user!) }
  test 'should create list' do
    assert_difference('List.count') do
      post :create, list: FactoryBot.build(:list).attributes
    end
  end
end
