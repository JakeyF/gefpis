class RemovePasswordFromMembers < ActiveRecord::Migration
  def change
  	remove_column :member_ts, :password, :string
  end
end
