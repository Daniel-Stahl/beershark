require 'rails_helper'

feature "member profiles" do
  let(:member) {FactoryGirl.create(:member)}
  
  before do 
    login_as(member, scope: :member)
  end

  scenario "member creates patron"do   
    visit new_member_profile_path(member)
    expect(page).to have_content("Create Patron")
    fill_in "profile[bio]", with: Faker::Lorem.paragraph(2)
    click_button "Create Profile"
		expect(page).to have_content("Profile was successfully created.")
  end

  scenario "member sees profile error message if no bio" do
    visit new_member_profile_path(member)
    expect(page).to have_content("Create a new Profile")

    click_button "Create Profile"
		
		expect(Profile.count).to eq 0
		expect(page).to have_content("Create a new Profile")
		expect(page).to have_content("Bio can't be blank")
  end

end