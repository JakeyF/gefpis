class RemoveEmailAddressFromMembers < ActiveRecord::Migration
  def change
  	remove_column :member_ts, :email_address, :string
  end
end
