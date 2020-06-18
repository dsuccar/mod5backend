class RappersController < ApplicationController
  
  def index
    rappers = Rapper.all
    render json: rappers.to_json
  end

  def show
    # byebug
    rapper = Rapper.find(params[:id])
    render json: rapper
  end


  
end
