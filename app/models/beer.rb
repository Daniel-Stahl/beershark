class Beer < ApplicationRecord
	belongs_to :bar_keep

	has_many :review
	has_many :favorite

	validates_presence_of :review
	validates_presence_of :favorite
end
