ActiveAdmin.register Product do
  permit_params :name, :description, :price, :product_img

  index do
    column "Photo" do |product|
      image_tag product.product_img, :style => "width: 10%"
    end
    # column :product_img, as: "Product Image", image_preview: true
    column :name
    column :description
    column :price
    actions
  end

  # show do
  #   image_tag :product_img, image_preview: true
  #   column :name
  #   column :description
  #   column :price
  # end

  form do |f|
    f.inputs do
      f.input :product_img, image_preview: true
      f.input :name
      f.input :description
      f.input :price
    end
    f.actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  # controller do
  #
  #
  #
  #   def update
  #
  #   end
  #
  #
  # end

end
