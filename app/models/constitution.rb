class Constitution < ActiveRecord::Base
  attr_accessible :description, :district_id, :name, :website,:mandal_id
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

 #relations
 has_many :mandals
 belongs_to :district
 
  #scope methods
  def self.latest
  	limit(5)
  end
end
