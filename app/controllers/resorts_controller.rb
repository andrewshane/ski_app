class ResortsController < ApplicationController
  def index
    @resorts = Resort.all
  end

  def show
    @resort = Resort.find(params[:id])
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.new
    @resort.lng = params[:lng]
    @resort.lat = params[:lat]
    @resort.flight_cost = params[:flight_cost]
    @resort.airport = params[:airport]
    @resort.forecast = params[:forecast]
    @resort.state = params[:state]
    @resort.name = params[:name]

    if @resort.save
      redirect_to "/resorts", :notice => "Resort created successfully."
    else
      render 'new'
    end
  end

  def edit
    @resort = Resort.find(params[:id])
  end

  def update
    @resort = Resort.find(params[:id])

    @resort.lng = params[:lng]
    @resort.lat = params[:lat]
    @resort.flight_cost = params[:flight_cost]
    @resort.airport = params[:airport]
    @resort.forecast = params[:forecast]
    @resort.state = params[:state]
    @resort.name = params[:name]

    if @resort.save
      redirect_to "/resorts", :notice => "Resort updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @resort = Resort.find(params[:id])

    @resort.destroy

    redirect_to "/resorts", :notice => "Resort deleted."
  end
end
