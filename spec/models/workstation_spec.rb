require 'rails_helper'

RSpec.describe Workstation, type: :model do
  it {should belong_to :salon }
end