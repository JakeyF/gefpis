class TypeToMembership < ActiveRecord::Migration
  def change
  	remove_column :member_ts, :type
  	add_column :member_ts, :membership, :string
  end
end
