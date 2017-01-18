require 'rails_helper'

feature "visiting the homepage" do
	scenario "the visitor sees welcome message" do
		visit root_path
		expect(page).to have_text("Welcome")
	end
end