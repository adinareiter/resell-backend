class ImagesController < ApplicationController
  def create
    @image = Image.new(
      item_id: params[:item_id],
      address: params[:address],
    )
    if @image.save
      render json: { message: "Item successfully created!" }, status: :created
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      address: params["address"] || @image.address,
    )
    render :show
  end

  def destroy
    image = Image.find_by(id: params["id"])
    image.destroy
    render json: { message: "Image successfully deleted" }
  end
end
