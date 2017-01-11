class Beer < ApplicationRecord
	belongs_to :bar_keep

	has_many :reviews
	has_many :favorites

	validates_presence_of :reviews
	validates_presence_of :favorites
end
