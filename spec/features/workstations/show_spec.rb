# User Story 4, Child Show 

# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe 'the workstations show page' do
  before :each do
    @elle = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    @hour_workstation = @elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    @half_day_workstation = @elle.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end

  it 'displays the salons workstation with that id and workstations attributes' do
    visit "/workstations/#{@hour_workstation.id}"

    expect(page).to have_content(@hour_workstation.chair_count)
    expect(page).to have_content(@hour_workstation.available)
    expect(page).to have_content(@half_day_workstation.chair_count)
    expect(page).to have_content(@half_day_workstation.available)
  end  
end  