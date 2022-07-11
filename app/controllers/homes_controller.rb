class HomesController < ApplicationController
  def top
    @item_top_4 = Item.order(created_at: :desc).limit(4)
  end

  def about
  end
end
