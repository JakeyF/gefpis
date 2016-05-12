class CreateTprTs < ActiveRecord::Migration
  def change
    create_table :tpr_ts do |t|
      t.string :week_no
      t.string :school
      t.integer :tutee_t_id
      t.string :strengths
      t.string :weaknesses
      t.string :actions
      t.integer :module_t_id
      t.integer :member_t_id

      t.timestamps null: false
    end
  end
end
