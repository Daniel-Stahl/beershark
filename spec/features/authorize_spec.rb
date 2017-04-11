require 'rails_helper'

feature "authorize member" do
	let(:member) {FactoryGirl.create(:member)}

	scenario "Logged in BarKeep cannot visit edit page of another BarKeep" do
    	correct_member = FactoryGirl.create(:member)
    	other_member = FactoryGirl.create(:member, email: "other_member@yopmail.com")
    	barkeep = FactoryGirl.create(:bar_keep, member: correct_member)
    	login_as(:other_member, scope: :member)
    	visit edit_bar_keep_path(barkeep)
    	expect(page).to have_content "Access Denied!"

    	# member = FactoryGirl.create(:member, id: 200)
    	# barkeep = FactoryGirl.create(:bar_keep, member_id: 200)
    	# login_as(:member, scope: :member)
     #    visit edit_bar_keep_path(barkeep)
     #    expect(page).to have_content "Access Denied!"
    end
end