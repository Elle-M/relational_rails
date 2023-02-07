class Workstation  < ApplicationRecord
  belongs_to :salon

  def self.available?
    Workstation.where.not(available: false)
  end 
end