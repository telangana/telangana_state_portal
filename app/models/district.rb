class District < ActiveRecord::Base
  attr_accessible :description, :name
   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader
  #relations
  has_many :mandals
  has_many :constitutions
  

  #Scope Methods
  def self.districts
     limit(5)
  end

  def self.dis_constituions
  	 first.constitutions
  end

  #scope methods
  def self.latest
    limit(5)
  end


end
