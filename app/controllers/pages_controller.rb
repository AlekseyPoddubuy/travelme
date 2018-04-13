class PagesController < ApplicationController
	before_action :authenticate_admin!, only: [:admin]

	def index
		@header = rand(1..4)
		@tours = Tour.all
	end

	def admin
		@tours = Tour.all
	end
end
