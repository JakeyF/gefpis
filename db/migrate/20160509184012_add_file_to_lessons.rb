class AddFileToLessons < ActiveRecord::Migration
  def self.up
  	add_column :lessons, :file_file_name, :string
  end

def self.down
	remove_column :lessons, :file_file_name
  end

end
