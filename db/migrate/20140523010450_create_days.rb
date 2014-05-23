class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
    	t.integer :schedule_id
    	t.datetime :recorded_at
    	t.integer :hours_slept
      t.timestamps
    end
  end
end
