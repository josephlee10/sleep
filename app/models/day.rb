class Day < ActiveRecord::Base
	attr_accessible :id, :schedule_id, :recorded_at, :hours_slept 
	belongs_to :schedule
end
