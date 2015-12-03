class ClothingController < ApplicationController
  def index
    @items = Item.where(category: "clothing")
    render 'items/index'
  end
end
