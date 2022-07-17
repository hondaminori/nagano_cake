class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.save
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :price)
  end
end
