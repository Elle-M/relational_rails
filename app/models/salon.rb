# app/models/salon.rb

class Salon < ApplicationRecord
  def handlebars?
    if name == 'handlebars' || name.include?('handlebars')
      return true
    elsif city == 'handlebars'
      return true
    else
      return false  
    end
  end
end