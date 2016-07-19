class Inventory < ActiveRecord::Base
  belongs_to :category, :work
  validates :wheel, numericality: { greater_than: 0 }
end
