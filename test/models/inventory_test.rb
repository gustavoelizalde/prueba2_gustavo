require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@product_1 = inventories(:one)
  	@product_2 = inventories(:two)
  end

  test "Serial number can not be repeated" do
  	# Descomentando esta linea, el test falla, ya que se repiten los Serials, y aparece el mensaje de error
  	#@product_2.serial = 1
  	assert_not_equal @product_1.serial, @product_2.serial, "Serials numbers can not be repeated"
  end
end
