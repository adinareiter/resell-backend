class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def create
    @category = Category.create(
      title: params[:title],
    )
    @category.save
    if @category.valid?
      render :show
    else
      render json: { errors: @category.status.errors.full_messages }
    end
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.update(
      title: params[:title] || @category.title,
    )
    @category.save
    if @category.valid?
      render :show
    else
      render json: { errors: @category.status.errors.full_messages }
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Category successfully deleted" }
  end
end
