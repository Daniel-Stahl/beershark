require 'rails_helper'

feature "signing in" do
	let(:member) {FactoryGirl.create(:member)}

	scenario "member visits the site to log in" do
		visit root_path
		click_link "Log in"
		fill_in "member_email", with: member.email
		fill_in "member_password", with: member.password
		click_button "Log in"
		expect(page).to have_content("Signed in successfully.")
	end

	scenario "member logs out of site" do
		login_as(member, scope: :member)
		visit root_path
		click_link "Sign out"
		expect(page).to have_content("Signed out successfully.")
	end

end