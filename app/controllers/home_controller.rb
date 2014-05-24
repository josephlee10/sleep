class HomeController < ApplicationController
	
	@@originalUsers = ["sharleen", "zzzzz", "calvinseo", "Pahang", "sally", "kleegoma", "mackszimo", "kpimpress", "jrabbott", "hiJoe", "napper", "stephen", "eliang22", "cj", "jlee229", "timpj", "sarah", "lktennis55", "sleepisfortheweak", "cash money", "hottieboy", "a", "ajb357", "mjamison", "michaelshan8", "emiliana13", "MarkyC", "rtran58", "kennyyay", "bobby", "yesKAS", "HI", "cardinal724", "turtletorta", "jay", "jchang", "ashleychenhijoelee!", "ramenbox", "mike", "psh7275"]

	def login
	end

	def post_login
		username = params[:username]

		# check if username exists.
		allUsers = User.pluck(:username)
		if ! allUsers.include? username then
			if ! @@originalUsers.include? username then
				redirect_to :controller => "home", :action => "create"
				return
			end
		end
		
		session[:username] = username
		user = User.find_by_username(username)
 
		if (user.password != params[:password]) && (! @@originalUsers.include? username) then
			flash[:incorrect] = "Username or password incorrect!"
			redirect_to :action => "login"
			return
		end

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

	def post_create
		username = params[:username]
		allUsers = User.pluck(:username)
		if allUsers.include? username then
			flash[:taken] = "Username already taken :("
			redirect_to :action => "create"
			return
		end

		u = User.new
		u.username = username
		u.password = params[:password]
		u.save()
		flash[:created] = "Nice! Now just login"
		redirect_to :controller => "home", :action => "login"

	end

end
