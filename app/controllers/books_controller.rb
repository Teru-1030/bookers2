class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
     @book = Book.new
     @books = Book.all
     @current_user_name = current_user.name
     @user_introduction = current_user.introduction
  end

  def show
  end

  def edit
  end

  private

  def post_image_params
    params.require(:book).permit(:title, :body)
  end
  
end

