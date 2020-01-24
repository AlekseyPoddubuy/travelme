class SelectionsController < ApplicationController

	def new
		@selection = Selection.new
	end

	def create
		@selection = Selection.new(params[:selection])
		@selection.request = request
		if @selection.deliver
			flash.now[:error] = nil
		else
			flash.now[:error] = 'Cannot send message'
			render :new
		end
	end
end
