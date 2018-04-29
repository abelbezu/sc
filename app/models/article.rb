class Article < ApplicationRecord
  has_one :piece, as: :piece_owner
  accepts_nested_attributes_for :piece, allow_destroy: true
end
