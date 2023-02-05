require 'rails_helper'

RSpec.describe 'the /workstations page' do
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

end
