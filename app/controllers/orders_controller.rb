class OrdersController < ApplicationController
  def index
    @user_order = UserOrder.new
    @item = Item.find(params[:item_id])
  end
  def new
  end
  def create
    @item = Item.find(params[:item_id])
    @user_order=UserOrder.new(order_params)
    if @user_order.valid?
      order_pay
      @user_order.save
      redirect_to items_path
    else
      render :index
    end
  end

  private
  def order_params
    params.require(:user_order).permit(:name, :postal_code, :area_id, :prefecture, :city, :phone_number).merge(token: params[:token], price: @item.price, item_id: @item.id)
  end
  def order_pay
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: order_params[:price],
      card: order_params[:token],
      currency: 'JPY'
    )
  end
end
