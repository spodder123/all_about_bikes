require "test_helper"

class CityBikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get city_bikes_index_url
    assert_response :success
  end

  test "should get show" do
    get city_bikes_show_url
    assert_response :success
  end
end
