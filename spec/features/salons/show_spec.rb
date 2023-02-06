# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)it 'displays the salon with that id and salons attributes' do

# User Story 7, Parent Child Count

# As a visitor
# When I visit a parent's show page
# I see a count of the number of children associated with this parent
require 'rails_helper'

RSpec.describe 'the salon show page' do  
  before :each do
    @handlebars = Salon.create!(name: "Handlebars", city: "Salida", stars: 4, requires_insurance: true)
    @hour_workstation = @handlebars.workstations.create!(name: 'hour_workstation', chair_count: 2, available: true )
    @half_day_workstation = @handlebars.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end
  it 'shows salon with that id and its attributes' do
    # salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons/#{@handlebars.id}"
    # save_and_open_page
    expect(page).to have_content(@handlebars.id)
    expect(page).to have_content(@handlebars.city)
    expect(page).to have_content(@handlebars.stars)
    expect(page).to have_content(@handlebars.requires_insurance)
  end  

  it 'shows the count of the number of workstations type associated with salon' do
    # salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons/#{@handlebars.id}"
  # save_and_open_page
    expect(page).to have_content("Workstations Type:2")
  end
end
