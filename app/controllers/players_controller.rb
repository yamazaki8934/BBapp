class PlayersController < ApplicationController
  def index
    @player = Player.new
  end
end
