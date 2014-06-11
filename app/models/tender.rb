class Tender < ActiveRecord::Base
  attr_accessible :category, :department_id, :description, :name, :website

  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader


  #relations
  belongs_to :department
  

  #scope methods
  def self.latest
  	limit(5)
  end
end
