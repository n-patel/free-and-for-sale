class FurnitureController < ApplicationController
  def index
    @items = Item.where(category: "furniture")
    render 'items/index'
  end
end
