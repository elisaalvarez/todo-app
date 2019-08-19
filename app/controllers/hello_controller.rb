class HelloController < ApplicationController
  before_action :authenticate_user!
  def index
    @uwu = 'Hello'
  end
end
