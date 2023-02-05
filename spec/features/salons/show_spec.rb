# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)it 'displays the salon with that id and salons attributes' do
require 'rails_helper'

RSpec.describe 'the salon show page' do  
  salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
  visit "/salons/#{salon.id}"
  # save_and_open_page
  expect(page).to have_content(salon.id)
  expect(page).to have_content(salon.city)
  expect(page).to have_content(salon.stars)
  expect(page).to have_content(salon.requires_insurance)
end
