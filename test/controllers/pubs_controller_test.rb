require "test_helper"

class PubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pubs_index_url
    assert_response :success
  end

  test "should get show" do
    get pubs_show_url
    assert_response :success
  end
end
