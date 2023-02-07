require 'rails_helper'

RSpec.describe 'the salons/:salon_id/workstations page' do
  before :each do
    @elle = Salon.create!(name: 'ELLE', city: 'Denver', stars: 5, requires_insurance: true )
    @hour_workstation = @elle.workstations.create!(name: 'hour_workstation', chair_count: 3, available: true )
    @half_day_workstation = @elle.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end

  describe 'User Story 5' do
    it 'shows the salons workstations in the system' do
      visit "/salons/#{@elle.id}/workstations"

      expect(page).to have_content(@hour_workstation.name)
      expect(page).to have_content(@half_day_workstation.name)
    end
  end

  describe 'User Story 10' do 
    it 'displays the salons workstation with that id and workstations attributes' do
      visit "/salons/#{@elle.id}/workstations"

      expect(page).to have_content(@hour_workstation.chair_count)
      expect(page).to have_content(@half_day_workstation.available)
    end
  end  

  describe 'User Story 11' do 
    xit 'displays a link at the top of any page that links to the salon index' do
      visit "/salons/#{@elle.id}"
      # save_and_open_page
      #not sure on best way to create link?
      expect(page).to have_content("#{@elle.name} Workstations")
    end
  end

  describe 'User Story 13' do 
    it 'displays a link to add a new adoptable workstation for salon "Create Workstation"' do
      visit "/salons/workstations"
      # save_and_open_page

      expect(page).to have_link("Add Workstation")

      # click_link "Add Workstation"

      # expect(current_path).to eq('/salons/#{@elle.id}/workstation/new')
    end  
  end  
end
