class OrdersController < ApplicationController
  def index
    @user_order = UserOrder.new
    @item = Item.find(params[:item_id])
  end
  def new
  end
end
