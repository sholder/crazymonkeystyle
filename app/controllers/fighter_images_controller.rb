class FighterImagesController < ApplicationController
  
  def new
    @fighter_image = FighterImage.new
    @fighter_image.fighter = Fighter.find(params[:fighter_id])
  end
  
  def create
    @fighter_image = FighterImage.new(params[:fighter_image])
    if(@fighter_image.save)
      flash[:notice] = 'Image uploaded!'
      redirect_to :controller => 'fighters', :action => 'index'
    else
      # error handling :(
    end
  end
  
end
