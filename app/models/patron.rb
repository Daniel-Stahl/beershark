class Patron < ApplicationRecord
	belongs_to :member

	has_many :review
	has_many :favorite
	
	validates_presence_of :bio
	validates_presence_of :member
	
end
