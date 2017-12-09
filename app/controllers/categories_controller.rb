class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'Category created success'
      redirect_to categories_path
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

  # private
  # def category_params
  #   params.require(:category).permit(:name)
  # end

  private
  def category_params
    params.require(:category).permit(:name, :isbn, :category_id)
  end

end
