class Photo < ActiveRecord::Base
  validates :image, presence: true
  has_ancestry
  mount_uploader :image, PhotoUploader
  belongs_to :product

  default_scope -> { order('product_id, position, created_at') }

end
