class Comment < ActiveRecord::Base
	belongs_to :review
	validates_length_of :title, :maximum=>200, :message=>"less than {{count}} if you don't mind"
end
