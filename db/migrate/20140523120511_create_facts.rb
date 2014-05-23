class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
    	t.text :info
      t.timestamps
    end
  end
end
