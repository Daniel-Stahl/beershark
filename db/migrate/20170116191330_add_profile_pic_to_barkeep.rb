class AddProfilePicToBarkeep < ActiveRecord::Migration[5.0]
	def self.up
  		change_table :bar_keeps do |t|
  			t.attachment :profile_pic
  		end
	end

	def self.down
		remove_attachment :bar_keeps, :profile_pic
	end
end
