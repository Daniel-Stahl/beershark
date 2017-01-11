require 'rails_helper'

RSpec.describe Member, type: :model do
  it { should have_one(:patron) }
  it { should have_one(:bar_keep) }
end
