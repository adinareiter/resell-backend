class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def show
    @item = Item.find_by(id: params["id"])
    render :show
  end

  def create
    @item = Item.create(
      user_id: params[:user_id],
      title: params[:title],
      price: params[:price],
      size: params[:size],
      description: params[:description],
      payment_method: params[:payment_method],
    )

    if @item.save
      render json: { message: "Item successfully created!" }, status: :created
    else
      render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find_by(id: params["id"])
    @item.update(
      title: params["title"] || @item.title,
      price: params["price"] || @item.price,
      size: params["size"] || @item.size,
      description: params["description"] || @item.description,
      payment_method: params["payment_method"] || @item.payment_method,
    )
    render :show
  end

  def destroy
    item = Item.find_by(id: params["id"])
    item.destroy
    render json: { message: "Item successfully deleted" }
  end
end
