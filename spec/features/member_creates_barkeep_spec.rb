  require 'rails_helper'

feature "member profiles" do
  let(:member) {FactoryGirl.create(:member)}
  
  before do 
    login_as(member, scope: :member)
  end

  scenario "member creates profile" do   
    visit new_bar_keep_path
    expect(page).to have_content("Create a Barkeep profile")
    fill_in "barkeep[bio]", with: Faker::Lorem.paragraph(2)
    click_button "Save"
		expect(page).to have_content("Barkeep was successfully created.")
  end

  scenario "member sees profile error message if no bio" do
    visit new_member_barkeep_path(member)
    expect(page).to have_content("Create a Barkeep profile")

    click_button "Create Profile"
		
		expect(Barkeep.count).to eq 0
		expect(page).to have_content("Create a Barkeep profile")
		expect(page).to have_content("Bio can't be blank")
  end

end