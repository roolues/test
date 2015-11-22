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

end
