require 'rails_helper'

RSpec.describe Workstation, type: :model do
  it {should belong_to :salon }
# this test belongs here but doesn't work here?
# describe 'User Story 15' do 
#   it 'displays workstations where the boolean column is `true`' do
#     visit "/workstations"
    
#     expect(Workstation.available?).to eq([@hour_workstation, @half_day_workstation])
#   end

  # describe 'User Story 17' do

  #   expect(Workstations.by_name).to eq([])
  # end
end   