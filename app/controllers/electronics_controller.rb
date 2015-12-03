class ElectronicsController < ApplicationController
  def index
    @items = Item.where(category: "electronics")
    render 'items/index'
  end
end
