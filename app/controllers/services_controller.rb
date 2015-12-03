class ServicesController < ApplicationController
  def index
    @items = Item.where(category: "services")
    render 'items/index'
  end
end
