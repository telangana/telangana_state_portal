class Mp < ActiveRecord::Base
  attr_accessible :description, :district_id, :facebook_page, :name, :personal_info, :website
   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #scope methods
  def self.latest
  	limit(5)
  end
end
