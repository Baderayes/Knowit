class Question < ActiveRecord::Base
	has_many :answers
	has_many :kid_adult_modes
	belongs_to :category
end
