class Admin::ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end
  
  def create
    item = Item.new(item_params)
    item.save
  end
  
  private
  def item_params
    params.reqire(:item).permit(:name, :introduction, :price, :item_status, :image_id, :genre_id)
  end
end
