# User Story 5, Parent Children Index 

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)

# User Story 10, Parent Child Index Link

# As a visitor
# When I visit a parent show page ('/parents/:id')
# Then I see a link to take me to that parent's `child_table_name` page ('/parents/:id/child_table_name')
require 'rails_helper'

RSpec.describe 'the salons/:salon_id/workstations page' do
  before :each do
    @elle = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    @hour_workstation = @elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    @half_day_workstation = @elle.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end

  it 'shows the salons workstations in the system' do
    visit "/salons/#{@elle.id}/workstations"

    expect(page).to have_content(@hour_workstation.name)
    expect(page).to have_content(@half_day_workstation.name)
  end

  it 'displays the salons workstation with that id and workstations attributes' do
    visit "/salons/#{@elle.id}/workstations"

    expect(page).to have_content(@hour_workstation.chair_count)
    expect(page).to have_content(@half_day_workstation.available)
  end

  xit 'displays a link at the top of any page that links to the salon index' do
    visit "/salons/#{@elle.id}"
    # save_and_open_page
    expect(page).to have_content("#{@elle.name} Workstations")
  end
end
