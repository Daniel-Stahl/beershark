require 'rails_helper'

feature "signing in" do
	let(:hacker) {FactoryGirl.create(:hacker)}

	def fill_in_signin_fields
		fill_in "hacker[email]", with: hacker.email
		fill_in "hacker[password]", with: hacker.password
		click_button "Log in"
	end

	scenario "visiting the site to sign in" do 
		visit root_path
		click_link "Sign in"
		fill_in_signin_fields
		expect(page).to have_content("Signed in successfully.")
	end

	scenario "patron uploads profile pic" do
		profile_pic_path = 'spec/fixtures/profile_pic.jpg'
		attach_file "profile[profile_pic]", profile_pic_path
		profile = Profile.last
		expect(profile).to have_attributes(profile_ppic_file_name: a_value)
	end
end