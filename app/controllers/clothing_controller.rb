class ClothingController < ApplicationController
  def index
    @items = Item.all
  end
end
