class Inventory < ActiveRecord::Base
  belongs_to :work, dependent: :destroy
  validates :wheel, numericality: { greater_than: 0 }

  scope :size_like, ->(size){where("wheel = ?", "#{size}")}

  after_destroy :record_delete_on_register_model


  def record_delete_on_register_model
  	r = Register.new(description: "La pieza con serial #{self.serial} ha sido borrada")
  	r.save!
  end

end
