class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.request = request
		if @comment.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end
end
