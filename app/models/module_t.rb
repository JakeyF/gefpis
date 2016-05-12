class ModuleT < ActiveRecord::Base
	has_attached_file :file
	validates_attachment_content_type :file, content_type: /\A*\/.*\Z/

	belongs_to :member_t
	has_many :tutee_ts
	has_many :tpr_ts
	has_many :worksheet_ts

	def to_label
		"#{self.file_name}"
	end
end
