class Work < ActiveRecord::Base
  belongs_to :user
  has_one :inventory, dependent: :destroy
  validates :user, presence: true

  scope :last_5, ->{order('created_at DESC').limit(5)}
  scope :no_inventory_used, ->{where("inventory_id is NULL")}
end
