class ScoresController < ApplicationController
  def index

  end

  def create
    @player = Player.new(player_params)
    @player.save
  end

  def new
    @player = Player.new
  end

  private
  def player_params
    params.require(:score).permit(:name, :games, :bats, :hits, :scores, :longhits, :steals)
  end
end
