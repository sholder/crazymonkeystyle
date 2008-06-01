class FightersController < ApplicationController
  
  def index
    @fighter = Fighter.random
  end
  
  def fight
    @fighter = Fighter.find(params[:id])
    @fighter.fight(params[:win])
    @fighter.save!
    flash[:notice] = 'duh, recorded, this message is dumb'
    redirect_to :index
  end

  def new
    @fighter = Fighter.new
  end
  
  def create
    @fighter = Fighter.new(params[:fighter])
    if @fighter.save
      flash[:notice] = 'A new fighter has entered the ring!'
      redirect_to :controller => :fighter_images, :action => :new, :fighter_id => @fighter.id
    else
      render :action => :new
    end
  end
end
