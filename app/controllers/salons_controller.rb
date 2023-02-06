class SalonsController < ApplicationController
  def index
    @salons = Salon.order(created_at: :desc)
  end

  def show
    # require 'pry'; binding.pry
    @salon = Salon.find(params[:id])
    @workstation_type_count = @salon.workstations.count
  end

  def new
  end

  def create
    salon = Salon.new({
      name: params[:salon][:name],
      city: params[:salon][:city],
      stars: params[:salon][:stars],
      requires_insurance: params[:salon][:requires_insurance],
      created_at: params[:salon][:created_at],
      updated_at: params[:salon][:updated_at]
      })

    salon.save

    redirect_to '/salons'
  end

  def edit
    @salon = Salon.find(params[:id])
  end

  def update
    salon = salon.find(params[:id])
    salon.update({
      name: params[:salon][:name],
      city: params[:salon][:city],
      stars: params[:salon][:stars],
      requires_insurance: params[:salon][:requires_insurance]
      })
    salon.save
    redirect_to "/salons/#{salon.id}"
  end

  def destroy
    Salon.destroy(params[:id])
    redirect_to '/salons'
  end
end