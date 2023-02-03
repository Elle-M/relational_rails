require 'rails_helper'

RSpec.describe Salon, type: :model do
  it {should have_many :workstations}
end
  # describe 'instance methods' do
    # describe '#handlebars?' do
    #   it 'returns true when the name is handlebars' do
    #     salon = Salon.create!(name: 'handlebars', city: 'salida')

    #     expect(salon.handlebars?).to be true
    #   end

    #   it 'returns true when the city is handlebars' do
    #     salon = Salon.create!(name: 'salida', city: 'handlebars')

    #     expect(salon.handlebars?).to be true
    #   end

    #   it 'returns false when the name or city is not handlebars' do
    #     salon = Salon.create!(name: 'kid kutz', city: 'abilene')

    #     expect(salon.handlebars?).to be false
    #   end

    #   it 'returns true when the name includes handlebars' do
    #     salon = Salon.create!(name: 'handlebars barbershop', city: 'salida')

    #     expect(salon.handlebars?).to be true
    #   end

    #   it 'is case insensitive when checking if the description contains the word handlebars' do
    #     salon = Salon.create!(name: 'Handlebars Barbershop', city: 'Salida')

    #     expect(salon.handlebars?).to be true
    #   end  
    # end
  # end
# end