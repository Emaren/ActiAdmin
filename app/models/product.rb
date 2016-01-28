class Product < ActiveRecord::Base
  mount_uploader :product_img, ProductImgUploader

  belongs_to :client

end
