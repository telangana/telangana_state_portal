class District < ActiveRecord::Base
  attr_accessible :description, :name
 
  #image params
  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader
  #image params

  #relations
  has_many :mandals
  has_many :constitutions
  has_many :ads
  has_many :mps
  
  #Scope Methods
  # def self.districts
  #    all
  # end

  def self.dis_constituions
  	 first.constitutions
  end

  #scope methods
  def self.latest
    limit(5)
  end


end
