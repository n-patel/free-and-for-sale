class HousingController < ApplicationController
  def index
    @items = Item.where(category: "housing")
    render 'items/index'
  end
end
