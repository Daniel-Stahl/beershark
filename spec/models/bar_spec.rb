require 'rails_helper'

RSpec.describe Bar, type: :model do
	it { should belong_to(:bar_keep) }
	it { should validate_presence_of(:beers) }
	it { should validate_presence_of(:reviews) }
end
