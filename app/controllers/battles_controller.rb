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
    
    battle = Battle.create(user_id: params["user_id"], boss_id: params["boss_id"], winner_id: params["winner_id"])
    # byebug
    render json: battle.to_json
    
  end
  
end

 