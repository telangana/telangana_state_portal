class OfficialProfile < ActiveRecord::Base
  attr_accessible :description, :job_position_id, :name
   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader


 #relations 
 	belongs_to :job_position
  
  #scope methods
  def self.latest
  	limit(5)
  end
end
