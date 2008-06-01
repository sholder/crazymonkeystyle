class Fighter < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_one :fighter_image
  
  def self.random
    find(:first, :order => 'RANDOM()')
  end
  
  def fight(win)
    win_count += 1 if win
    fight_count += 1
  end  
end
