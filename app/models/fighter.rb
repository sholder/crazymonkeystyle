class Fighter < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_one :fighter_image
  
  def self.random
    find(:first, :order => 'RANDOM()')
  end
  
  def fight(win)
    if win
      self.win_count = self.win_count + 1
    end
    self.fight_count = self.fight_count + 1
  end  
end
