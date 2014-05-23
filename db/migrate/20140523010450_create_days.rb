class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
    	t.datetime :recorded_at
    	t.integer :hours_slept
      t.timestamps
    end
  end
end
