class ElectronicsController < ApplicationController
  def index
    @items = Item.all
  end
end
