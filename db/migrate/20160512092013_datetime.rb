class Datetime < ActiveRecord::Migration
  def change
  	change_column :module_ts, :upload_date, :datetime
  end
end
