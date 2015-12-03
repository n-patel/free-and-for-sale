class MiscController < ApplicationController
  def index
    @items = Item.where(category: "miscellaneous")
    render 'items/index'
  end
end
