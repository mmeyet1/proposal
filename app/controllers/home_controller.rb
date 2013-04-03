class HomeController < ApplicationController
  def index
    @users = User.all
  end
  
  def welcome
    @users = User.all
  end
  
  def main
    @users = User.all
  end
  
  def after_sign_in_path_for(resource)
    current_user_path
  end
end
