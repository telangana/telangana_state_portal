class Minister < ActiveRecord::Base #ORM
  attr_accessible :constitution_id, :description, :facebook_page, :name, :website
  attr_accessible :candiate_name

  attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache,:remove_banner
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader

  #relations
  has_many :departments
  belongs_to :constitution

  #scope methods
  def self.latest
  	limit(5)
  end

  
end
