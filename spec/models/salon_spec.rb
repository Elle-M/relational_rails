require 'rails_helper'

RSpec.describe Salon, type: :model do
  describe 'instance methods' do
    describe '#handlebars?' do
      it 'returns true when the name is handlebars' do
        salon = Salon.create!(name: 'handlebars', city: 'salida')

        expect(salon.handlebars?).to be true
      end
    end
  end
end