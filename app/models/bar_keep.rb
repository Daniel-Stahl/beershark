class BarKeep < ApplicationRecord
	belongs_to :member

  	has_many :bars
  	has_many :beers

	validates_presence_of :bars
	validates_presence_of :beers

	has_attached_file :profile_pic,
		styles: { small: "100x100#" },
		default_url: "/images/:style/missing.png"
		validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\Z/
end
