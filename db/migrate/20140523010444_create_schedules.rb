class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.integer :user_id
    	t.datetime :started_at
    	t.integer :current_debt
    	t.integer :required_num_hours
      t.timestamps
    end
  end
end
