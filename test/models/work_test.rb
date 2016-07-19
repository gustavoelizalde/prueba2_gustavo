require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@work = works(:work_1_user_1)
  end

  test "Get the user responsable of certain work" do 
  	@work.user = nil
  	assert_not @work.valid?, "El Trabajo debe tener un usuario responsable"
  end
end
