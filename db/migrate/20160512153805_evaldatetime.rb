class Evaldatetime < ActiveRecord::Migration
  def change
  	add_column :evaluation_ts, :evaldatetime, :datetime
  end
end
