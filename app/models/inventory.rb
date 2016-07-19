class Inventory < ActiveRecord::Base
  belongs_to :category
  validates :wheel, numericality: { greater_than: 0 }

  scope :size_like, ->(size){where("wheel = ?", "#{size}")}
end
