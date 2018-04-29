class Image < ApplicationRecord

  # Mount Carrier Wave image uploader
  mount_uploader :image, ImageUploader
end
