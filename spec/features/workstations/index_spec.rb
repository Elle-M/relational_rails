# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe 'the workstations show page' do
  before :each do
    @elle = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    @hour_workstation = @elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    @half_day_workstation = @elle.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end

  it 'shows the salons workstations in the system' do
    visit "/workstations"

    expect(page).to have_content(@hour_workstation.name)
    expect(page).to have_content(@half_day_workstation.name)
  end
end  