require 'open-uri'

class ResortsController < ApplicationController
  def index

    for each @resort do |resort|
      url_safe_street_address = URI.encode(@resort_name)

      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{url_safe_street_address}"

      parsed_data = JSON.parse(open(url).read)

      @resort.lat = parsed_data["results"][0]["geometry"]["location"]["lat"]

      @resort.lng = parsed_data["results"][0]["geometry"]["location"]["lng"]

      weather_url = "https://api.forecast.io/forecast/1d437dd48b71586534a52478930e5271/#{@resort.lat},#{@resort.lng}"

      weather_data = JSON.parse(open(weather_url).read)

      @resort.forecast = weather_data["daily"]["summary"]

    end

    for each @resort do |resort|
      curl -d @request.json --header "Content-Type: application/json" https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyAO7C4cb4nvH8ylgv7n2mhV1-nHfT6y37c
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
