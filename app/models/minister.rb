class Minister < ActiveRecord::Base
  attr_accessible :constitution_id, :description, :facebook_page, :name, :website


   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #scope methods
  def self.latest
  	limit(5)
  end
end
