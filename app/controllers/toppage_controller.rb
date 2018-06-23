class ToppageController < ApplicationController
  def index
    @player = Player.new
    @averages = User.all.order(average: :desc)
    @hits = User.all.order(hits: :desc)
    @scores = User.all.order(scores: :desc)
    @steals = User.all.order(steals: :desc)
  end

  def new

  end


  def create

    redirect_to new_score_path
  end



end
