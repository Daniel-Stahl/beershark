class Bar < ApplicationRecord
	belongs_to :bar_keep
	
	has_many :beers
	has_many :reviews

	validates_presence_of :beers
	validates_presence_of :reviews
	validates_presence_of :bar_keep
end
