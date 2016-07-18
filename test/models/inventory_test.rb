require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@product_1 = inventories(:one)
  	@product_2 = inventories(:two)
  	@product_3 = Inventory.new(serial: 3, name: "Test Product", wheel: 10, description: "Test tamaño rueda", category_id: 1)
  end

  test "Serial number can not be repeated" do
  	# Descomentando esta linea, el test falla, ya que se repiten los Serials, y aparece el mensaje de error
  	#@product_2.serial = 1
  	assert_not_equal @product_1.serial, @product_2.serial, "Serials numbers can not be repeated"
  end

  test "Wheel size should be grater than 0" do
  	@product_3.wheel = 0
  	@product_3.save
  	assert_not @product_3.valid?, "El tamaño de la rueda debe ser mayor que 0"
  end
end
