class AuthorsController < ApplicationController
  def new
    @authors = Author.new
  end

  def create
    @author = Author.new(author_param)
    if @author.save
      flash[:success] = 'Author created'
      redirect_to authors_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def stroy
  end

  def index
  end

  def show
  end

  private
  def author_param
    params.require(:author).permit(:name)
  end
end
