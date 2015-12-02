class SchoolController < ApplicationController
  def show
    @items = Item.all
  end
end
