class Fighter < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_one :fighter_image
  has_many :fight_descriptions
  
  def self.random
    find(:first, :order => 'RANDOM()')
  end
  
  def fight(win, description)
    if win
      self.win_count = self.win_count + 1
    end
    self.fight_count = self.fight_count + 1
    self.fight_descriptions << FightDescription.new(:description => description, :fighter_won => win)
  end  
  
  def loss_count
    self.fight_count - self.win_count
  end
end
