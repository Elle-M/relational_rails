# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

# User Story 6, Parent Index sorted by Most Recently Created 

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created

# User Story 9, Parent Index Link

# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Parent Index
require 'rails_helper'

RSpec.describe 'the salons index page' do
  before :each do
  @handlebars = Salon.create!(name: "Handlebars", city: "Salida", stars: 4, requires_insurance: true)
  @elle = Salon.create!(name: "ELLE", city: "Denver", stars: 5, requires_insurance: true)
  end
  it 'shows the salons in the system' do
    # salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons"

    expect(page).to have_content(@handlebars.name)
    expect(page).to have_content(@elle.name)
  end

  it 'display records are ordered by most recently created first' do
    # salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons"

    expect(@elle.name).to appear_before(@handlebars.name)
  end

  it 'display records lists when it was created' do
    # salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons"

    expect(page).to have_content(@handlebars.created_at)
    expect(page).to have_content(@elle.created_at)
  end

  it 'displays a link at the top of any page that links to the salon index' do
    visit "/salons"
    visit "/"
    visit "/workstations"
    
    expect(page).to have_content("Salon Index")
  end
end