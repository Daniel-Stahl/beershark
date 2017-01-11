require 'rails_helper'

RSpec.describe BarKeep, type: :model do
  it { should validate_presence_of(:bars) }
  it { should validate_presence_of(:beers) }
  it { should belong_to(:member) }
end
