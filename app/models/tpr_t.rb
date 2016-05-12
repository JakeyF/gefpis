class TprT < ActiveRecord::Base
	belongs_to :tutee_t
	belongs_to :member_t
	belongs_to :module_t
end
