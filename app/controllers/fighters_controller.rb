class FightersController < ApplicationController
  
  def index
    @fighter = Fighter.random
  end
  
  def fight
    @fighter = Fighter.find(params[:id])
    @fighter.fight(params[:win])
    flash[:message] = 'duh, recorded, this message is dumb'
    redirect_to :index
  end
  
  def create
    @fighter = Fighter.new(params[:fighter])
    redirect_to :index if @fighter.save
  end
end
