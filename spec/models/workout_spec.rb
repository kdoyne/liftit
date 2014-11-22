require 'spec_helper'

describe Workout do

  it { should validate_presence_of(:date_time) }
  it { should belong_to(:user) }
  it { should have_many(:exercises) }
  
end