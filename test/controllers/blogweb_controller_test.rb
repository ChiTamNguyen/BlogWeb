require 'test_helper'

class BlogwebControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogweb_index_url
    assert_response :success
  end

end
