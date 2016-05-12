class CreateModuleTs < ActiveRecord::Migration
  def change
    create_table :module_ts do |t|
      t.string :file_name
      t.string :subject
      t.date :upload_date
      t.string :topic
      t.string :uploader

      t.timestamps null: false
    end
  end
end
