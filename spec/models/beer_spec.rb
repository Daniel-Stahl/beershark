require 'rails_helper'

RSpec.describe Beer, type: :model do
  it { should validate_presence_of(:bar_keep) }
  it { should validate_presence_of(:review) }
  it { should validate_presence_of(:favorite) }
end
