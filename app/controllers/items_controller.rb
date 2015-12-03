class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  	@item = Item.new
  end


  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save

    #binding.pry
    case @item.category
    when "clothing"
      redirect_to clothing_path
    when "electronics"
      redirect_to electronics_path
    when "furniture"
      redirect_to furniture_path
    when "housing"
      redirect_to housing_path
    when "misc"
      redirect_to misc_path
    when "school"
      redirect_to school_path
    when "services"
      redirect_to services_path
    end

    #if @pokemon.save
  end

  def edit
  	@item = Item.find(params[:id])
  end


  def update
  	@item = Item.find(params[:id])
  	if @item.update(item_params)
  		redirect_to @item
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@item = Item.find(params[:id])
  	@item.destroy
  	redirect_to items_path
  end

  private
  	def item_params
  		params.require(:item).permit(:title, :summary, :location, :price, :category)
  	end

end
