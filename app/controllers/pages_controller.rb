class PagesController < ApplicationController
	before_action :authenticate_admin!, only: [:admin]

	def index
		@header = rand(1..2)
		@tours = Tour.all
		@metatags = Metatag.all
	end

	def franchise
		@metatags = Metatag.all
	end

	def admin
		@tours = Tour.all
	end
end
