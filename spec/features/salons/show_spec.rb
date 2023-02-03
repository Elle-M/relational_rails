require 'rails_helper'

RSpec.describe 'the salons show page' do
  it 'shows the salons in the system' do
    salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    workstation = salon.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    visit "/salons/#{salon.id}"

    expect(page).to have_content(salon.name)
  end

  it 'displays the salon with that id and salons attributes' do
    salon = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    visit "/salons/:id#{salon.id}"
    # save_and_open_page
    expect(page).to have_content(salon.name)
  end
end