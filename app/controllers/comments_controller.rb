class CommentsController < ApplicationController

	def create
		@item = Item.find(params[:item_id])
		@comment = @item.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to redirect_handler(@item)
	end

	def destroy
		@item = Item.find(params[:item_id])
		@comment = @item.comments.find(params[:id])
		@comment.destroy
		redirect_to redirect_handler(@item)
	end

	private
		def comment_params
			params.require(:comment).permit(:contents, :item)
		end
end
