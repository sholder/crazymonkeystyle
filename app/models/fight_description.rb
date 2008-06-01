class FightDescription < ActiveRecord::Base
  belongs_to :fighter
  
  validates_presence_of :description
  
  def self.sample(limit = 10)
    find(:all, :limit => limit, :order => 'RANDOM()', :include => [:fighter])
  end
end
