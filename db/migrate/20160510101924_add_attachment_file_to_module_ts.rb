class AddAttachmentFileToModuleTs < ActiveRecord::Migration
  def self.up
    change_table :module_ts do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :module_ts, :file
  end
end
