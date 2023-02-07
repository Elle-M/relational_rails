require 'rails_helper'

RSpec.describe 'the salons index page' do
  before :each do
  @handlebars = Salon.create!(name: "Handlebars", city: "Salida", stars: 4, requires_insurance: true)
  @elle = Salon.create!(name: "ELLE", city: "Denver", stars: 5, requires_insurance: true)
  end
  describe 'User Story 1' do
    it 'shows the salons in the system' do
      visit "/salons"

      expect(page).to have_content(@handlebars.name)
      expect(page).to have_content(@elle.name)
    end  
  end

  describe 'User Story 6' do
    it 'display records are ordered by most recently created first' do
      visit "/salons"

      expect(@elle.name).to appear_before(@handlebars.name)
    end 
  end

  describe 'User Story 6' do
    it 'display records lists when it was created' do
      visit "/salons"

      expect(page).to have_content(@handlebars.created_at)
      expect(page).to have_content(@elle.created_at)
    end  
  end

  describe 'User Story 9' do  
    it 'displays a link at the top of any page that links to the salon index' do
      visit "/salons"
      visit "/"
      visit "/workstations"
      
      expect(page).to have_content("Salon Index")
    end  
  end

  describe 'User Story 11' do
    it 'displays an add salon link' do
      visit "/salons"

      expect(page).to have_link("Add Salon")

      click_link "Add Salon"

      expect(current_path).to eq('/salons/new')
    end  
  end

  describe 'User Story 12' do
    it 'displays an update salon link' do
      visit "/salons"

      expect(page).to have_link("Update Salon")
    end  
  end

  describe 'User Story 17' do
    it 'displays an edit salon link' do
      visit "/salons"

      expect(page).to have_link("Edit Salon")

      click_link "Edit Salon"
      # how do you speciy which salon edit button

      expect(current_path).to eq('/salons/#{@elle.id}/edit')
    end  
  end

end