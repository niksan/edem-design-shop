class Category < ActiveRecord::Base
  has_ancestry
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  validates :name, presence: true
  default_scope -> { where(disabled: false).order(:position) }

  has_many :products, dependent: :destroy
end
