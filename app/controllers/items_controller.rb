class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id]) #findは何行目のデータを持ってきて！という命令
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def criate
    @item = Item.new(item_params)
    @item.save
    redirect_to "/items/#{item.id}"
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end

end
