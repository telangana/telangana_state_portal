class JobPosition < ActiveRecord::Base
  attr_accessible :description, :name
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #relations
  has_many :official_profiles
 
  #scope methods
  def self.latest
  	limit(5)
  end
end
