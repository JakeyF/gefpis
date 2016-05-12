class WorksheetT < ActiveRecord::Base
	belongs_to :module_t
	belongs_to :tutee_t
	belongs_to :member_t
end
