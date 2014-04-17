class StateCadre < ActiveRecord::Base
  attr_accessible :candiate_name, :description, :name, :ph_no1, :ph_no2
   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #scope methods
  def self.latest
  	limit(5)
  end

end

