class User::ClubsController < ApplicationController 
  def index
  end 

  def show
    @club = Club.find(params[:id])
  end 
end
