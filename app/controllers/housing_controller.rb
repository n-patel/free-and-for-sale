class HousingController < ApplicationController
  def index
    @items = Item.all
  end
end
