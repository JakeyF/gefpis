class CreateTuteeTs < ActiveRecord::Migration
  def change
    create_table :tutee_ts do |t|
      t.string :first_name
      t.string :last_name
      t.string :school
      t.integer :math_grade
      t.integer :eng_grade
      t.string :father_name
      t.string :father_occupation
      t.string :mother_name
      t.string :mother_occupation
      t.string :ambition
      t.string :fav_subject
      t.string :fav_food
      t.string :fav_color
      t.string :fav_movie
      t.date :attendance
      t.integer :module_t_id
      t.integer :group_no

      t.timestamps null: false
    end
  end
end
