class Photo < ActiveRecord::Base
  validates :image, presence: true
  has_ancestry
  mount_uploader :image, PhotoUploader
  belongs_to :product

  default_scope -> { order('product_id, position, created_at') }

  def destroy
    update_attributes(disabled: true)
  end
  alias destroy! destroy

  def self.destroy_all
    all.each { |p| p.update_attributes(disabled: true) }
  end
  alias destroy_all! destroy_all

end
