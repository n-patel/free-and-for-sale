class FurnitureController < ApplicationController
  def index
    @items = Item.all
  end
end
