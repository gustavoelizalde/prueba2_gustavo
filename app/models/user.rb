class User < ActiveRecord::Base
	validates :name, presence: true
	has_many :works, dependent: :destroy
end
