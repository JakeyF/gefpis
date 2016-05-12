class CreateWorksheetTs < ActiveRecord::Migration
  def change
    create_table :worksheet_ts do |t|
      t.integer :module_t_id
      t.integer :member_t_id
      t.integer :tutee_t_id
      t.string :school
      t.integer :score
      t.string :reached_quota

      t.timestamps null: false
    end
  end
end
