class AddStatsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :con,   :integer
  	add_column :users, :hp,    :integer
  	add_column :users, :int,   :integer
  	add_column :users, :agi,   :integer
  	add_column :users, :level, :integer
  end
end
