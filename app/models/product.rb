class Product < ActiveRecord::Base
  mount_uploader :product_img, ProductImgUploader


  belongs_to :client
  belongs_to :category

  has_many :taggings
  has_many :tags, through: :taggings

end
