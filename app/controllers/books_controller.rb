class BooksController < ApplicationController
  def new
    @page_title = 'add book'
    @books = Book.new
    @categorys = Category.new
    @author = Author.new
  end

  def create
    @books = Book.new(book_params)
    if @books.save

      redirect_to books_path
    else
      render 'new'
    end

  end

  def update
      @book = Book.find(params[:id])
      @book.update(book_params)

      redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.delete
    redirect_to books_path
  end

  def index
    @bookList = Book.all
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @bookInfo = Book.find(params[:id])
      # @cate = Category.all
      # @author = Author.all
      # @publisher = Publisher.all
  end

  def back_index
    redirect_to books_path
  end

  def catelist
    @categories = Category.all
    render :partial => 'sidebar'
  end

  private
  def book_params
    params.require(:book).permit(:title, :isbn, :category_id, :author_id, :publisher_id)
  end

end
