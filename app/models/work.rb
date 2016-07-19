class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory
  validates :user, presence: true
end
