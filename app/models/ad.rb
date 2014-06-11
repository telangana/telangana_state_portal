class Ad < ActiveRecord::Base
  attr_accessible :category, :constitution_id, :description, :district_id, :mandal_id, :name, :website
  attr_accessible :district_id,:mandal_id,:constitution_id
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #relations 
  belongs_to :mandal
  belongs_to :district
  

  #scope methods
  def self.latest
  	limit(5)
  end
end
