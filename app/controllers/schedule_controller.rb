class ScheduleController < ApplicationController

	def index
		user = User.find_by_username(session[:username])
		@username = session[:username]
		@sleep_debt = user.schedule.current_debt
		@required_num_hours = user.schedule.required_num_hours

		if (@sleep_debt > 0) then
			facts = Fact.find(:all)
			numFacts = facts.size()-1

			random_index = rand(0..numFacts)
			random_fact = facts[random_index]
			@random_info = random_fact.info
			@header = "Uh-oh! You have sleep debt!"
		else
			@header = "Nice!"
			@random_info = "You caught up on on your sleep debt. Way to go!"
		end
	end

	def create_schedule
	end

	def post_create_schedule
		username = session[:username]
		user = User.find_by_username(username)
		sched = Schedule.new
		sched.started_at = DateTime.now
		sched.current_debt = 0
		sched.required_num_hours = params[:required_num_hours]
		sched.save
		user.schedule = sched
		user.save

		redirect_to :action => "index"
	end

	def log_hours
		user = User.find_by_username(session[:username])

		hoursSlept = params[:hours]
		
		sleepDebt = user.schedule.required_num_hours.to_i - hoursSlept.to_i

		schedule = user.schedule
		schedule.current_debt = user.schedule.current_debt.to_i + sleepDebt

		if schedule.current_debt < 0 then
			schedule.current_debt = 0
		end

		day = Day.new
		day.recorded_at = DateTime.now
		day.hours_slept = hoursSlept
		day.save()

		schedule.days << day
		schedule.save

		redirect_to :action => "index"
	end
end
