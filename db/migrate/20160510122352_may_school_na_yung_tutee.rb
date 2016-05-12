class MaySchoolNaYungTutee < ActiveRecord::Migration
  def change
  	remove_column :tpr_ts, :school
  end
end
