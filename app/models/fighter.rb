class Fighter < ActiveRecord::Base
  validates_presence_of :name, :path_to_image
  
  
end
