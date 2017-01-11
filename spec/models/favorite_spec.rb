require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should validate_presence_of(:patron) }
end
