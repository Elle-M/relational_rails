# app/models/salon.rb

class Salon < ApplicationRecord
  def handlebars?
    if name.downcase == 'handlebars' || name.downcase.include?('handlebars')
      return true
    elsif city.downcase == 'handlebars'
      return true
    else
      return false  
    end
  end
end