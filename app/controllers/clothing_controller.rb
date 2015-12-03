class ClothingController < ApplicationController
  def index
    @items = Item.all
    @comments = Comment.all
  end
end
