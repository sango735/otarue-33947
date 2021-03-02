class ItemsController < ApplicationController
  def index
    Item.create(price: 2000)
    Item.create(price: 1000)
    Item.create(price: 500)
    @item = Item.all
    
  end
end