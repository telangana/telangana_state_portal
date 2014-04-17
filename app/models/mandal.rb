class Mandal < ActiveRecord::Base
  attr_accessible :description, :district_id, :facebook_page, :name, :website

   attr_accessible :image,:banner,:remove_image, :image_cache,:banner_cache
  mount_uploader :image, ImageUploader
  mount_uploader :banner, BannerUploader
  #relations
  has_many :villages
  belongs_to :constitution
  belongs_to :district 
end
