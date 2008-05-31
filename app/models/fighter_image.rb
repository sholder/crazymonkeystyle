class FighterImage < ActiveRecord::Base
  
  belongs_to :fighter
  
  has_attachment :content_type => :image, 
                   :storage => :file_system, 
                   :max_size => 500.kilobytes
                   
  validates_as_attachment
  
  
end
