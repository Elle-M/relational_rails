require 'rails_helper'

RSpec.describe Salon, type: :model do
  describe 'instance methods' do
    describe '#handlebars?' do
      it 'returns true when the name is handlebars' do
        salon = Salon.create!(name: 'handlebars', city: 'salida')

        expect(salon.handlebars?).to be true
      end

      it 'returns true when the city is handlebars' do
        salon = Salon.create!(name: 'salida', city: 'handlebars')

        expect(salon.handlebars?).to be true
      end

      it 'returns false when the name or city is not handlebars' do
        salon = Salon.create!(name: 'kid kutz', city: 'abilene')

        expect(salon.handlebars?).to be false
      end
    end
  end
end