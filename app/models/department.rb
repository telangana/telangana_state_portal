class Department < ActiveRecord::Base
  attr_accessible :category, :description, :minister_id, :name, :website
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  
  #relations 
  has_many :tenders
  belongs_to :minister
  
  #scope methods
  def self.latest
  	limit(5)
  end
end
