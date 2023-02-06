# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

# User Story 8, Child Index Link

# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Child Index
require 'rails_helper'

RSpec.describe 'the workstations index page' do
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

  it 'displays a link at the top of any page that links to the workstation index' do
    visit "/salons"
    visit "/"
    visit "/workstations"
    
    expect(page).to have_content("Workstation Index")
  end
end  