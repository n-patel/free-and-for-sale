class SchoolController < ApplicationController
  def index
    @items = Item.where(category: "school")
    render 'items/index'
  end
end
