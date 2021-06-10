class PagesController < ApplicationController
  def home
    @users = User.all
    @james = User.first
  end
end
