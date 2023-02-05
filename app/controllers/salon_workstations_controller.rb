class SalonWorkstationsController < ApplicationController
  def index
    salon = Salon.find(params[:salon_id])
    @workstations = salon.workstations
  end
end