class BattlesController < ApplicationController

  def index
    battles = Battle.all
    render json: battles.to_json
  end

  def show
    battle = Battle.find(params[:id])
    render json: battle.to_json
  end

  def create
    byebug
  end
  
end

