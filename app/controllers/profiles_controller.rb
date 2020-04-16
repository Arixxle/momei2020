class ProfilesController < ApplicationController
  def index
  end
  def show
    @user = User.find(3)
  end
  def edit
    # @user = User.find(3)
  end
end