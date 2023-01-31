# app/controllers/salons_controller.rb

class SalonsController < ApplicationController
  def index
    @salons = Salon.all
  end

  def new
  end

  def create
    salon = Salon.new({
      name: params[:salon][:name],
      city: params[:salon][:city]
      })

    salon.save

    redirect_to '/salons'
  end

  def show
    @salon = Salon.find(params[:id])
  end

  def edit
    @salon = Salon.find(params[:id])
  end

  def update
    salon = salon.find(params[:id])
    salon.update({
      title: params[:salon][:name],
      description: params[:salon][:city]
      })
    salon.save
    redirect_to "/salons/#{salon.id}"
  end

  def destroy
    Salon.destroy(params[:id])
    redirect_to '/salons'
  end
end