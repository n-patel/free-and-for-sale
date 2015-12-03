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

    redirect_to redirect_handler(@item)

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
