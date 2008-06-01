class FightersController < ApplicationController
  
  def index
    @fighter = Fighter.random
  end
  
  def fight
    @win = params[:commit] =~ /kick ass/
    @fighter = Fighter.find(params[:fighter][:id])
    @fighter.fight(@win)
    @fighter.save!
    flash[:notice] = 'duh, recorded, this message is dumb'
    redirect_to :action => :index
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
