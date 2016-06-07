class InputsController < ApplicationController
  def index
    @inputs = Input.all
  end

  def show
    @input = Input.find(params[:id])
  end

  def new
    @input = Input.new
  end

  def create
    @input = Input.new
    @input.airport_code = params[:airport_code]
    @input.return = params[:return]
    @input.departure = params[:departure]

    if @input.save
      redirect_to "/inputs", :notice => "Input created successfully."
    else
      render 'new'
    end
  end

  def edit
    @input = Input.find(params[:id])
  end

  def update
    @input = Input.find(params[:id])

    @input.airport_code = params[:airport_code]
    @input.return = params[:return]
    @input.departure = params[:departure]

    if @input.save
      redirect_to "/inputs", :notice => "Input updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @input = Input.find(params[:id])

    @input.destroy

    redirect_to "/inputs", :notice => "Input deleted."
  end
end
