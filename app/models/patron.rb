class Patron < ApplicationRecord
	belongs_to :member

	has_many :review
	has_many :favorite

	validates_presence_of :member
	validates_presence_of :review
	validates_presence_of :favorite
end
