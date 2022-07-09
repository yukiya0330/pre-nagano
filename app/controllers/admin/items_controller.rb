class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
  end
  
  def create
    @item = Item.create(item_params)
    # item = Item.new(item_params)
    if @item.save
      redirect_to admin_items_path
    else
      render :new
    end  
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :item_status, :image, :genre_id)
  end
end
