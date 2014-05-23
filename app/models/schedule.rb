class Schedule < ActiveRecord::Base
	attr_accessible :id, :user_id, :started_at, :current_debt, :required_num_hours
	belongs_to :user
	has_many :days
end
