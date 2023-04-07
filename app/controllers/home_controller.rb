class HomeController < ApplicationController
	def index
		 @courses = Course.all.limit(2).order(created_at: :desc)

 
	end
	def activity
		@activities=PublicActivity::Activity.all
	end
end