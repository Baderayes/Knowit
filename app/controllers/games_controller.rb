class GamesController < ApplicationController
  def new
  	@game = Game.new({:time_for_each_question => 1,
  		:players_number => 1,
  		:mode => "adults",
  		:Difficulty => "easy",
  		:category_type => "History"})
  end
  def create

  end

  def index
  end
end
