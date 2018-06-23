class UsersController < ApplicationController
  def edit
    @user = User.new
  end

  def create
    @user = User.new
    @user.save(user_params)
    @hits = current_user.hits
    @bats = current_user.bats
    @average = (@hits / @bats) * 10
    @average.save(average_params)
    redirect_to toppage_index_path
  end

  def update
    @hits = params[:user][:hits].to_f
    @bats = params[:user][:bats].to_f
    @average = @hits / @bats * 10
    @average1 = @average.round(2)
    current_user.update(average: @average1)
    current_user.update(user_params)
    redirect_to toppage_index_path
  end

  private
   def user_params
    params.require(:user).permit(:games, :bats, :hits, :scores, :longhits, :steals).merge(id: current_user.id)
   end
end
