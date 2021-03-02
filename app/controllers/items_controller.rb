class ItemsController < ApplicationController
  def index
    Item.create(price:2000)
    Item.create(price:1000)
    Item.create(price:500)
    @item = Item.all
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:price)
  end
end