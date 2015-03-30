class Todo < ActiveRecord::Base
	validates :text, presence: true
	validates :done, presence: true
end
