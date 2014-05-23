class HomeController < ApplicationController
	
	def login
	end

	def post_login
		username = params[:username]

		# check if username exists.
		
		session[:username] = username
		user = User.find_by_username(username)

		if user.nil? then
			u = User.new
			u.username = username
			u.save()
			redirect_to :controller => "schedule", :action => "create_schedule", :username => username
		elsif user.schedule.nil?  then
			redirect_to :controller => "schedule", :action => "create_schedule", :username => username
		else
			redirect_to :controller => "schedule", :action => "index"
		end

	end

	def create
	end

end
