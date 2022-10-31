class UsersController < ApplicationController
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
  end
end
