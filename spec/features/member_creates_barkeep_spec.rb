  require 'rails_helper'

feature "member profiles" do
  let(:member) {FactoryGirl.create(:member)}

  def fill_in_registration_fields
    fill_in "member[first_name]", with: Faker::Name.first_name
    fill_in "member[last_name]", with: Faker::Name.last_name
    fill_in "member[email]", with: Faker::Internet.email
    fill_in "member[password]", with: Devise.friendly_token.first(8)
    click_button "Sign up"
  end

  scenario "member creates bar keep" do   
    visit root_path
    click_link "Become a member"
    fill_in_registration_fields
    expect(page).to have_content("Welcome! You have signed up successfully.")
    click_link "Become a Bar Keep"
    fill_in "bar_keep[company_name]", with: Faker::Name.first_name
    fill_in "bar_keep[bio]", with: Faker::Lorem.paragraph(2)
    profile_pic_path = 'spec/fixtures/profile_pic.jpg'
    attach_file "bar_keep[profile_pic]", profile_pic_path
    find('input[type="submit"]').click
    barkeep = BarKeep.last
    expect(barkeep).to have_attributes(profile_pic_file_name: "profile_pic.jpg")
  end
end