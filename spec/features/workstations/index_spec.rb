require 'rails_helper'

RSpec.describe 'the workstations index page' do
  before :each do
    @elle = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    @hour_workstation = @elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    @half_day_workstation = @elle.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
    @day_workstation = @elle.workstations.create!(name: 'day_workstation', chair_count: 1, available: false )
  end

  describe 'User Story 3' do
    it 'shows the salons workstations in the system' do
      visit "/workstations"

      expect(page).to have_content(@hour_workstation.name)
      expect(page).to have_content(@half_day_workstation.name)
    end
  end

  describe 'User Story 8' do 
    it 'displays a link at the top of any page that links to the workstation index' do
      visit "/salons"
      visit "/"
      visit "/workstations"
      
      expect(page).to have_content("Workstation Index")
    end  
  end

  describe 'User Story 15' do 
    it 'displays workstations where the boolean column is `true`' do
      visit "/workstations"
      
      expect(Workstation.available?).to eq([@hour_workstation, @half_day_workstation])
    end
  end    
end  