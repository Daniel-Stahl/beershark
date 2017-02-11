require 'rails_helper'

RSpec.describe Patron, type: :model do
  describe "validations" do
	 it "has a valid factory" do
	   expect(FactoryGirl.create(:patron)).to be_valid
	 end

	 it { should validate_presence_of(:bio) }
	 it { should validate_presence_of(:member) }
	end

	describe "associations" do
	  it { should belong_to(:member) }
	end
end
