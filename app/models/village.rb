class Village < ActiveRecord::Base
  

  attr_accessible :description, :facebook_page, :mandal_id, :name, :website
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner

  #relations
  belongs_to :mandal

  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #scope methods
  def self.latest
  	limit(5)
  end
end
