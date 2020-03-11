class User::ClubsController < ApplicationController 
  def index
  end 

  def show
    @club = Club.find(params[:club_id])
  end 
end
