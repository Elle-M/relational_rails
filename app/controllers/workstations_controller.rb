class WorkstationsController < ApplicationController
  
  def index
    @workstations = Workstation.all
  end

  def show
    @workstation = Workstation.find(params[:id])
  end

  def new
  end

  def create
    workstation = Workstation.new({
      name: params[:workstation][:name],
      chair_count: params[:workstation][:chair_count],
      available: params[:workstation][:available],
      salon_id: params[:workstation][:salon_id],
      created_at: params[:workstation][:created_at],
      updated_at: params[:workstation][:updated_at]
      })

    workstation.save

    redirect_to '/workstations'
  end

  def edit
    @workstation = Workstation.find(params[:id])
  end

  def update
    workstation = Workstation.find(params[:id])
    workstation.update({
      name: params[:workstation][:name],
      chair_count: params[:workstation][:chair_count],
      available: params[:workstation][:available],
      salon_id: params[:book][:salon_id]
      })
    workstation.save
    redirect_to "/workstations/#{workstation.id}"
  end

  def destroy
    Workstation.destroy(params[:id])
    redirect_to '/workstations'
  end
end