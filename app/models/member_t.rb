class MemberT < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	has_many :module_ts
	has_many :tpr_ts
	has_many :evaluation_ts
	has_many :worksheet_ts

	def to_label
		"#{self.id_number}"
	end
end
