class PrivateSector < ActiveRecord::Base
  attr_accessible :description, :district_id, :facebook_page, :name, :website
  attr_accessible :category


  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #relations 
  belongs_to :district

  #scope methods
  def self.latest
  	limit(5)
  end

  #find_by_cateogories
  def self.latestcategories(category)
    find_all_by_category(category)
  end
end
