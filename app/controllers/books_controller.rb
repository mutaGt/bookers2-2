class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    # if @book.save
    @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book)
    # else
    #   @books = Book.all
    #   @user = current_user
    #   render :index
    # end
  end
  
  def show
    @book = Book.new
    @hon = Book.find(params[:id])
    @user = @hon.user
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    flash[:notice] = "You have updated book successfully."
    redirect_to book_path(@book)
  end
  
  def destroy
    @hon = Book.find(params[:id])
    @hon.destroy
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
