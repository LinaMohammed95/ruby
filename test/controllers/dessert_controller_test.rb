require "test_helper"

class DessertControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dessert_index_url
    assert_response :success
  end
end
