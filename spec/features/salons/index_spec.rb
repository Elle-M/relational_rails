# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
require 'rails_helper'

RSpec.describe 'the salons index page' do
  it 'shows the salons in the system' do
    salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons"

    expect(page).to have_content(salon.name)
  end
end