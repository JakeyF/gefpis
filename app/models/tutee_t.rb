class TuteeT < ActiveRecord::Base
	belongs_to :module_t
	has_many :tpr_ts
	has_many :worksheet_ts
	def to_label
		"#{self.first_name} #{self.last_name}"
	end
end
