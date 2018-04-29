class Piece < ApplicationRecord
  belongs_to :piece_owner, polymorphic: true
  
  has_many :comments, dependent: :destroy
  has_many :paragraphs, dependent: :destroy
  has_many :quotes, dependent: :destroy
  has_many :images, as: :image_owner

  accepts_nested_attributes_for :paragraphs, allow_destroy: true
  accepts_nested_attributes_for :quotes, allow_destroy: true
  accepts_nested_attributes_for :images, allow_destroy: true
end
