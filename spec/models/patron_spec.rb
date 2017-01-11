require 'rails_helper'

RSpec.describe Patron, type: :model do
  it { should validate_presence_of(:member) }
  it { should validate_presence_of(:review) }
  it { should validate_presence_of(:favorite) }
end
