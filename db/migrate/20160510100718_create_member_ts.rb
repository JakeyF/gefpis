class CreateMemberTs < ActiveRecord::Migration
  def change
    create_table :member_ts do |t|
      t.string :id_number
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :email_address
      t.integer :contact_no
      t.date :attendance
      t.string :type
      t.string :committee
      t.date :birthday
      t.string :year_course
      t.string :scholarship

      t.timestamps null: false
    end
  end
end
