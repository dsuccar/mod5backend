class LyricsController < ApplicationController

  def index
    lyrics = Lyric.all
    render json: lyrics.to_json
  end

  def show
    lyric = Lyric.find(params[:id])
    render json: lyric.to_json
  end

end
