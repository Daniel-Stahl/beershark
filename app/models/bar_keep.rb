class BarKeep < ApplicationRecord
  belongs_to :member

  has_many :bars
  has_many :beers

  validates_presence_of :bars
  validates_presence_of :beers
end
