class Salon < ApplicationRecord
  has_many :workstations
  # def handlebars?
  #   if name.downcase == 'handlebars' || name.downcase.include?('handlebars')
  #     return true
  #   elsif city.downcase == 'handlebars'
  #     return true
  #   else
  #     return false  
  #   end
  # end
end