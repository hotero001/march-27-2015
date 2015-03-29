class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def edit

  end

  def create
    @category = Category.new(category_params)
    #@category.creator = Category.first
    if @category.save
      flash[:notice] = "You have successfully created a new Category"
      redirect_to root_path
    else
      render :new
    end
  end

  def update

  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end

