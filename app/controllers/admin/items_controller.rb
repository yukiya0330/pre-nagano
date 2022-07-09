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
    @item = Item.find(params[:id])
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
  
  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to admin_items_path
    else
      render :edit
    end  
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :item_status, :image, :genre_id)
  end
end
