class Product < ActiveRecord::Base
  validates :name, :price, :category_id, presence: true
  has_ancestry
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  belongs_to :category

  default_scope -> { where(disabled: false).order('category_id, price, name') }
  scope :main_page, -> { where(show_on_main_page: true) }

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  def main_photo
    photos.first.try(:image) || false
  end

  def destroy
    update_attributes(disabled: true)
  end
  alias destroy! destroy

end
