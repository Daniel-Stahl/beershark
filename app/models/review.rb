class Review < ApplicationRecord
	belongs_to :patron

	validates_presence_of :patron
end
