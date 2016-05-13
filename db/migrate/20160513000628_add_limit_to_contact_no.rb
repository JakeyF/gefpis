class AddLimitToContactNo < ActiveRecord::Migration
  def change
  	change_column :member_ts, :contact_no, :integer, :limit => 8
  end
end
