class UploaderIsMember < ActiveRecord::Migration
  def change
  	remove_column :module_ts, :uploader
  	add_column :module_ts, :member_t_id, :integer
  end
end
