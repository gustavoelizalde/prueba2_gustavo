require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = users(:user_1)
  end

  test "User Name can not be blank" do
  	@user.name = ""
  	@user.save
  	assert_not @user.valid?, "El Usuario no puede tener un nombre en blanco"
  end
end
