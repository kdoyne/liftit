require 'spec_helper'

describe Exercise do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:reps) }
  it { should validate_presence_of(:sets) }
  it { should validate_presence_of(:weight) }
  it { should belong_to(:workout) }
  
end