require 'test_helper'

class OrdersControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get orders_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get orders_controller_create_url
    assert_response :success
  end

end
