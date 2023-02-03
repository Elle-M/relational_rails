require 'rails_helper'

RSpec.describe 'the salons show page' do
  it 'shows the salons in the system' do
    salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons/#{salon.id}"
  end

#   As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)
end