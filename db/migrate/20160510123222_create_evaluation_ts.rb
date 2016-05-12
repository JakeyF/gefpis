class CreateEvaluationTs < ActiveRecord::Migration
  def change
    create_table :evaluation_ts do |t|
      t.string :eval_name
      t.integer :member_t_id
      t.string :tutoring_comments
      t.string :math_module_comments
      t.string :math_sw_comments
      t.string :eng_comments
      t.string :eng_sw_comments
      t.string :suggestions

      t.timestamps null: false
    end
  end
end
