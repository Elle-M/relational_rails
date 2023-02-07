require 'rails_helper'

RSpec.describe 'the salon show page' do  
  before :each do
    @handlebars = Salon.create!(name: "Handlebars", city: "Salida", stars: 4, requires_insurance: true)
    @hour_workstation = @handlebars.workstations.create!(name: 'hour_workstation', chair_count: 2, available: true )
    @half_day_workstation = @handlebars.workstations.create!(name: 'half_day_workstation', chair_count: 3, available: true )
  end

  describe 'User Story 2' do 
    it 'shows salon with that id and its attributes' do
      visit "/salons/#{@handlebars.id}"
  
      expect(page).to have_content(@handlebars.id)
      expect(page).to have_content(@handlebars.city)
      expect(page).to have_content(@handlebars.stars)
      expect(page).to have_content(@handlebars.requires_insurance)
    end
  end  

  describe 'User Story 10' do 
    it 'shows the count of the number of workstations type associated with salon' do
      visit "/salons/#{@handlebars.id}"

      expect(page).to have_content("Workstations Type:2")
    end
  end  
end
